/// @file rainbow.c
/// @brief The standard implementations for functions in rainbow.h
///
#include "rainbow_config.h"

#include "rainbow_keypair.h"

#include "rainbow.h"

#include "blas.h"

#include "rainbow_blas.h"

#include <stdlib.h>
#include <string.h>
#include <stdint.h>


#include "utils_prng.h"
#include "utils_hash.h"

#include "api.h"
#define MAX_ATTEMPT_FRMAT  128


/////////////////////////////



#define _MAX_O  ((_O1>_O2)?_O1:_O2)
#define _MAX_O_BYTE  ((_O1_BYTE>_O2_BYTE)?_O1_BYTE:_O2_BYTE)



int rainbow_sign( uint8_t * signature , const unsigned char sk[CRYPTO_SECRETKEYBYTES] , const uint8_t * _digest )
{
	unsigned i;
	unsigned char sk_seed[LEN_SKSEED];
	unsigned char s1[_O1_BYTE*_O2];
	unsigned char t1[_V1_BYTE*_O1];
	unsigned char t4[_V1_BYTE*_O2];
	unsigned char t3[_O1_BYTE*_O2];
	unsigned char l1_F1[_O1_BYTE * N_TRIANGLE_TERMS(_V1)];
	unsigned char l1_F2[_O1_BYTE * _V1*_O1];
	unsigned char l2_F1[_O2_BYTE * N_TRIANGLE_TERMS(_V1)];
	unsigned char l2_F2[_O2_BYTE * _V1*_O1];
	unsigned char l2_F3[_O2_BYTE * _V1*_O2];
	unsigned char l2_F5[_O2_BYTE * N_TRIANGLE_TERMS(_O1)];
	unsigned char l2_F6[_O2_BYTE * _O1*_O2];
	int k;

	for(k = 0; k <LEN_SKSEED; k++) sk_seed[k] = sk[k];
    for(k = 0; k <_O1_BYTE*_O2;k++)s1[k] = sk[k + LEN_SKSEED];
    for(k=0;k < _V1_BYTE*_O1;k++) t1[k] = sk[k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for(k=0; k < _V1_BYTE*_O2 ; k++)t4[k] = sk[ (_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for(k = 0 ; k < _O1_BYTE*_O2; k++) t3[k] = sk[ (_V1_BYTE*_O2)+(_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for (k = 0 ; k < _O1_BYTE * N_TRIANGLE_TERMS(_V1); k++) l1_F1[k]= sk[ (_O1_BYTE*_O2)+(_V1_BYTE*_O2)+(_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for(k=0;k < _O1_BYTE * _V1*_O1;k++) l1_F2[k] = sk[ (_O1_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE*_O2)+(_V1_BYTE*_O2)+(_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for(k=0;k< _O2_BYTE * N_TRIANGLE_TERMS(_V1); k++) l2_F1[k] = sk[(_O1_BYTE * _V1*_O1) +(_O1_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE*_O2)+(_V1_BYTE*_O2)+(_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for(k=0; k < _O2_BYTE * _V1*_O1; k++) l2_F2[k] = sk[(_O2_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE * _V1*_O1) +(_O1_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE*_O2)+(_V1_BYTE*_O2)+(_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for(k=0;k < _O2_BYTE * _V1*_O2 ; k++) l2_F3[k] = sk[(_O2_BYTE * _V1*_O1)+(_O2_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE * _V1*_O1) +(_O1_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE*_O2)+(_V1_BYTE*_O2)+(_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for( k = 0; k < _O2_BYTE * N_TRIANGLE_TERMS(_O1); k++) l2_F5[k] = sk[(_O2_BYTE * _V1*_O2)+(_O2_BYTE * _V1*_O1)+(_O2_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE * _V1*_O1) +(_O1_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE*_O2)+(_V1_BYTE*_O2)+(_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];
    for(k=0; k < _O2_BYTE * _O1*_O2; k++)l2_F6[k] = sk[(_O2_BYTE * N_TRIANGLE_TERMS(_O1))+(_O2_BYTE * _V1*_O2)+(_O2_BYTE * _V1*_O1)+(_O2_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE * _V1*_O1) +(_O1_BYTE * N_TRIANGLE_TERMS(_V1))+(_O1_BYTE*_O2)+(_V1_BYTE*_O2)+(_V1_BYTE*_O1)+ k + LEN_SKSEED + (_O1_BYTE*_O2)];

    // allocate temporary storage.
   // uint8_t * mat_l1 = malloc( _O1*_O1_BYTE );
    uint8_t mat_l1[_O1*_O1_BYTE];
    printf(" \n mat_l1 = %d  mat_l2 = %d mat_buffer = %d \n",_O1*_O1_BYTE,_O2*_O2_BYTE,2*_MAX_O*_MAX_O_BYTE);
  //  uint8_t * mat_l2 = malloc(_O2*_O2_BYTE );
    //printf(" \n --- matl1 = %d  ----\n", _O2*_O2_BYTE );
    uint8_t mat_l2[_O2*_O2_BYTE];
    //uint8_t * mat_buffer = malloc(2*_MAX_O*_MAX_O_BYTE);
    uint8_t mat_buffer[2*_MAX_O*_MAX_O_BYTE];
//    uint8_t * mat_l1 = aligned_alloc( 32 , _O1*_O1_BYTE );
//    uint8_t * mat_l2 = aligned_alloc( 32 , _O2*_O2_BYTE );
//    uint8_t * mat_buffer = aligned_alloc( 32 , 2*_MAX_O*_MAX_O_BYTE );

    // setup PRNG
    prng_t prng_sign;
    uint8_t prng_preseed[LEN_SKSEED+_HASH_LEN];
   // memcpy( prng_preseed , sk_seed , LEN_SKSEED );
    for(k = 0; k <LEN_SKSEED; k++ ) prng_preseed[k] = sk_seed[k];
    //memcpy( prng_preseed + LEN_SKSEED , _digest , _HASH_LEN );                        // prng_preseed = sk_seed || digest
    for(k = 0; k <_HASH_LEN; k++) (prng_preseed + LEN_SKSEED)[k] =  _digest[k];
    uint8_t prng_seed[_HASH_LEN];
    printf(" \n -- hash len = %d \n" , _HASH_LEN);
    hash_msg( prng_seed , _HASH_LEN , prng_preseed , _HASH_LEN+LEN_SKSEED );
    prng_set( &prng_sign , prng_seed , _HASH_LEN );                                   // seed = H( sk_seed || digest )
    for(i=0;i<LEN_SKSEED+_HASH_LEN;i++) prng_preseed[i] ^= prng_preseed[i];  // clean
    for(i=0;i<_HASH_LEN;i++) prng_seed[i] ^= prng_seed[i];                   // clean

    // roll vinegars.
    uint8_t vinegar[_V1_BYTE];
    unsigned n_attempt = 0;
    unsigned l1_succ = 0;
    while( !l1_succ ) {
        if( MAX_ATTEMPT_FRMAT <= n_attempt ) break;
        prng_gen( &prng_sign , vinegar , _V1_BYTE );                       // generating vinegars
        gfmat_prod( mat_l1 , l1_F2 , _O1*_O1_BYTE , _V1 , vinegar );   // generating the linear equations for layer 1
        l1_succ = gfmat_inv( mat_l1 , mat_l1 , _O1 , mat_buffer );         // check if the linear equation solvable
        n_attempt ++;
    }

    // Given the vinegars, pre-compute variables needed for layer 2
    uint8_t r_l1_F1[_O1_BYTE] = {0};
    uint8_t r_l2_F1[_O2_BYTE] = {0};
    batch_quad_trimat_eval( r_l1_F1,l1_F1, vinegar, _V1, _O1_BYTE );
    batch_quad_trimat_eval( r_l2_F1,l2_F1, vinegar, _V1, _O2_BYTE );
    uint8_t mat_l2_F3 [_O2*_O2_BYTE ];

    uint8_t mat_l2_F2 [_O1*_O2_BYTE ];
//    uint8_t * mat_l2_F3 = aligned_alloc( 32 , _O2*_O2_BYTE );
//    uint8_t * mat_l2_F2 = aligned_alloc( 32 , _O1*_O2_BYTE );
    gfmat_prod( mat_l2_F3 , l2_F3 , _O2*_O2_BYTE , _V1 , vinegar );
    gfmat_prod( mat_l2_F2 , l2_F2 , _O1*_O2_BYTE , _V1 , vinegar );

    // Some local variables.
    uint8_t _z[_PUB_M_BYTE];
    uint8_t y[_PUB_M_BYTE];
    uint8_t * x_v1 = vinegar;
    uint8_t x_o1[_O1_BYTE];
    uint8_t x_o2[_O1_BYTE];

    uint8_t digest_salt[_HASH_LEN + _SALT_BYTE];
  //  memcpy( digest_salt , _digest , _HASH_LEN );
    for(k = 0; k < _HASH_LEN; k++) digest_salt[k] = _digest[k];
    uint8_t * salt = digest_salt + _HASH_LEN;

    uint8_t temp_o[_MAX_O_BYTE + 32]  = {0};
    unsigned succ = 0;
    while( !succ ) {
        if( MAX_ATTEMPT_FRMAT <= n_attempt ) break;
        // The computation:  H(digest||salt)  -->   z   --S-->   y  --C-map-->   x   --T-->   w

        prng_gen( &prng_sign , salt , _SALT_BYTE );                        // roll the salt
        hash_msg( _z , _PUB_M_BYTE , digest_salt , _HASH_LEN+_SALT_BYTE ); // H(digest||salt)

        //  y = S^-1 * z
        memcpy(y, _z, _PUB_M_BYTE);  // identity part of S

        gfmat_prod(temp_o, s1, _O1_BYTE, _O2, _z+_O1_BYTE);
        gf256v_add(y, temp_o, _O1_BYTE);

        // Central Map:
        // layer 1: calculate x_o1
        //memcpy( temp_o , r_l1_F1 , _O1_BYTE );
        rainbow_sign_label8:for(k = 0; k < _O1_BYTE; k++) temp_o[k] = r_l1_F1[k];
        gf256v_add( temp_o , y , _O1_BYTE );
        gfmat_prod( x_o1 , mat_l1, _O1_BYTE , _O1 , temp_o );

        // layer 2: calculate x_o2
        gf256v_set_zero( temp_o , _O2_BYTE );
        gfmat_prod( temp_o , mat_l2_F2, _O2_BYTE , _O1 , x_o1 );            // F2
        batch_quad_trimat_eval( mat_l2 , l2_F5, x_o1 , _O1, _O2_BYTE ); // F5
        gf256v_add( temp_o , mat_l2 , _O2_BYTE );
        gf256v_add( temp_o , r_l2_F1 , _O2_BYTE );                      // F1
        gf256v_add( temp_o , y + _O1_BYTE , _O2_BYTE );

        // generate the linear equations of the 2nd layer
        gfmat_prod( mat_l2 , l2_F6 , _O2*_O2_BYTE , _O1 , x_o1 );   // F6
        gf256v_add( mat_l2 , mat_l2_F3 , _O2*_O2_BYTE);                 // F3
        succ = gfmat_inv( mat_l2 , mat_l2 , _O2 , mat_buffer );
        gfmat_prod( x_o2 , mat_l2 , _O2_BYTE , _O2 , temp_o );         // solve l2 eqs

        n_attempt ++;
    };
    //  w = T^-1 * y
    uint8_t w[_PUB_N_BYTE];
    // identity part of T.
   // memcpy( w , x_v1 , _V1_BYTE );
    for(k = 0 ; k < _V1_BYTE; k++) w[k] = x_v1[k];
    //memcpy( w + _V1_BYTE , x_1 , _O1_BYTE );
    for(k = 0 ; k < _O1_BYTE; k++) (w + _V1_BYTE)[k] = x_o1[k];
    for(k = 0 ; k < _O2_BYTE; k++) (w + _V2_BYTE)[k] = x_o2[k];

   // memcpy( w + _V2_BYTE , x_o2 , _O2_BYTE );
    // Computing the t1 part.

    gfmat_prod(y, t1, _V1_BYTE , _O1 , x_o1 );
    gf256v_add(w, y, _V1_BYTE );
    // Computing the t4 part.
    gfmat_prod(y, t4, _V1_BYTE , _O2 , x_o2 );
    gf256v_add(w, y, _V1_BYTE );
    // Computing the t3 part.
    gfmat_prod(y, t3, _O1_BYTE , _O2 , x_o2 );
    gf256v_add(w+_V1_BYTE, y, _O1_BYTE );
for( k = 0; k <_SIGNATURE_BYTE; k++ ) signature[k] = 0;
//    memset( signature , 0 , _SIGNATURE_BYTE );  // set the output 0
    // clean
    memset( mat_l1 , 0 , _O1*_O1_BYTE );  //free( mat_l1 );
    memset( mat_l2 , 0 , _O2*_O2_BYTE ); // free( mat_l2 );
    memset( mat_buffer , 0 , 2*_MAX_O*_MAX_O_BYTE ); // free( mat_buffer );
  //  memset( &prng_sign , 0 , sizeof(prng_t) );
    memset( vinegar , 0 , _V1_BYTE );
    memset( r_l1_F1 , 0 , _O1_BYTE );
    memset( r_l2_F1 , 0 , _O2_BYTE );
    memset( mat_l2_F3 , 0 , _O2*_O2_BYTE ); // free( mat_l2_F3 );
    memset( mat_l2_F2 , 0 , _O1*_O2_BYTE ); // free( mat_l2_F2 );
    memset( _z , 0 , _PUB_M_BYTE );
    memset( y , 0 , _PUB_M_BYTE );
    memset( x_o1 , 0 , _O1_BYTE );
    memset( x_o2 , 0 , _O2_BYTE );
    memset( temp_o , 0 , sizeof(temp_o) );

    // return: copy w and salt to the signature.
    if( MAX_ATTEMPT_FRMAT <= n_attempt ) return -1;
    gf256v_add( signature , w , _PUB_N_BYTE );
    gf256v_add( signature + _PUB_N_BYTE , salt , _SALT_BYTE );
    return 0;
}









int rainbow_verify( const uint8_t * digest , const uint8_t * signature , const unsigned char * pk )
{
    unsigned char digest_ck[_PUB_M_BYTE];
    // public_map( digest_ck , pk , signature ); Evaluating the quadratic public polynomials.
    batch_quad_trimat_eval( digest_ck , pk , signature , _PUB_N , _PUB_M_BYTE );

    unsigned char correct[_PUB_M_BYTE];
    unsigned char digest_salt[_HASH_LEN + _SALT_BYTE];
  //  memcpy( digest_salt , digest , _HASH_LEN );
    int k;
    rainbow_verify_label3:for(k=0;k<_HASH_LEN;k++)digest_salt[k] = digest[k];
  //  memcpy( digest_salt+_HASH_LEN , signature+_PUB_N_BYTE , _SALT_BYTE );
    rainbow_verify_label4:for(k=0; k <_SALT_BYTE; k++)(digest_salt+_HASH_LEN)[k] = (signature+_PUB_N_BYTE)[k];
    hash_msg( correct , _PUB_M_BYTE , digest_salt , _HASH_LEN+_SALT_BYTE );  // H( digest || salt )

    // check consistancy.
    unsigned char cc = 0;
    rainbow_verify_label5:for(unsigned i=0;i<_PUB_M_BYTE;i++) {
        cc |= (digest_ck[i]^correct[i]);
    }
    return (0==cc)? 0: -1;
}



///////////////  cyclic version  ///////////////////////////

//
//int rainbow_sign_cyclic( uint8_t * signature , const csk_t * csk , const uint8_t * digest )
//{
//    sk_t * sk = malloc(sizeof(sk_t) + 32 );
////    sk_t * sk = aligned_alloc( 32 , sizeof(sk_t) + 32 );
//    if( NULL == sk ) return -1;
//    generate_secretkey_cyclic( sk, csk->pk_seed , csk->sk_seed );   // generating classic secret key.
//
//    int r = rainbow_sign( signature , sk , digest );
//    free( sk );
//    return r;
//}
//
//int rainbow_verify_cyclic( const uint8_t * digest , const uint8_t * signature , const cpk_t * _pk )
//{
//    pk_t * pk = malloc(sizeof(pk_t) + 32 );
////    pk_t * pk = aligned_alloc( 32 , sizeof(pk_t) + 32 );
//    if( NULL == pk ) return -1;
//    cpk_to_pk( pk , _pk );         // generating classic public key.
//
//    int r = rainbow_verify( digest , signature , pk );
//    free( pk );
//    return r;
//}

