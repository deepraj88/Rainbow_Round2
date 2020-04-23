/// @file rainbow_keypair.c
/// @brief implementations of functions in rainbow_keypair.h
///
#include "rainbow_keypair.h"
#include "rainbow_keypair_computation.h"

#include "blas_comm.h"
#include "blas.h"
#include "rainbow_blas.h"

#include <stdlib.h>
#include <stdint.h>
#include <string.h>


/////////////////////////////////////////////////////////////////


#include "utils_prng.h"


void generate_S_T( unsigned char s_and_t[512] , prng_t * prng0 )
{	//printf("\n 4=%d 3= %d  2= %d 1 = %d  \n",_O1_BYTE*_O2, _V1_BYTE*_O2, _V1_BYTE*_O1, _O1_BYTE*_O2);
    p_gen1( prng0 , s_and_t , _O1_BYTE*_O2 ); // S1
    s_and_t += _O1_BYTE*_O2;

    p_gen1( prng0 , s_and_t , _V1_BYTE*_O1 ); // T1
    s_and_t += _V1_BYTE*_O1;
    p_gen1( prng0 , s_and_t , _V1_BYTE*_O2 ); // T2
    s_and_t += _V1_BYTE*_O2;
    p_gen1( prng0 , s_and_t , _O1_BYTE*_O2 ); // T3
}

void generate_ST1( unsigned char s[512],unsigned char t1[512],unsigned char t4[512],unsigned char t3[512] , prng_t * prng0 )
{	//printf("\n 4=%d 3= %d  2= %d 1 = %d  \n",_O1_BYTE*_O2, _V1_BYTE*_O2, _V1_BYTE*_O1, _O1_BYTE*_O2);
    p_gen1( prng0 , s , _O1_BYTE*_O2 ); // S1
   // s_and_t += _O1_BYTE*_O2;

    p_gen1( prng0 , t1 , _V1_BYTE*_O1 ); // T1
   // s_and_t += _V1_BYTE*_O1;
    p_gen1( prng0 , t4 , _V1_BYTE*_O2 ); // T2
   // s_and_t += _V1_BYTE*_O2;
    p_gen1( prng0 , t3 , _O1_BYTE*_O2 ); // T3
}



unsigned generate_l1_F12( unsigned char sk[8448], prng_t * prng0 )
{
    unsigned n_byte_generated = 0;
  //  printf("\n 1st = %d \n",_O1_BYTE * N_TRIANGLE_TERMS(_V1));
    p_gen2( prng0 , sk , _O1_BYTE * N_TRIANGLE_TERMS(_V1) ); // l1_F1
    sk += _O1_BYTE * N_TRIANGLE_TERMS(_V1);
    n_byte_generated += _O1_BYTE * N_TRIANGLE_TERMS(_V1);
    //printf("\n 2nd = %d\n ",_O1_BYTE * _V1*_O1 );

    p_gen3( prng0 , sk , _O1_BYTE * _V1*_O1 );  // l1_F2
    sk += _O1_BYTE * _V1*_O1;
    n_byte_generated += _O1_BYTE * _V1*_O1;

    return n_byte_generated;
}

unsigned generate_LF1( unsigned char l1f1[8448],unsigned char l1f2[16384], prng_t * prng0 )
{
    unsigned n_byte_generated = 0;
  //  printf("\n 1st = %d \n",_O1_BYTE * N_TRIANGLE_TERMS(_V1));
    p_gen2( prng0 , l1f1 , _O1_BYTE * N_TRIANGLE_TERMS(_V1) ); // l1_F1
    l1f1 += _O1_BYTE * N_TRIANGLE_TERMS(_V1);
    n_byte_generated += _O1_BYTE * N_TRIANGLE_TERMS(_V1);
    //printf("\n 2nd = %d\n ",_O1_BYTE * _V1*_O1 );

    p_gen3( prng0 , l1f2 , _O1_BYTE * _V1*_O1 );  // l1_F2
    l1f1 += _O1_BYTE * _V1*_O1;
    n_byte_generated += _O1_BYTE * _V1*_O1;

    return n_byte_generated;
}

static
unsigned generate_l2_F12356( unsigned char * sk, prng_t * prng0 )
{
    unsigned n_byte_generated = 0;

    prng_gen( prng0 , sk , _O2_BYTE * N_TRIANGLE_TERMS(_V1) ); // l2_F1
    sk += _O2_BYTE * N_TRIANGLE_TERMS(_V1);
    n_byte_generated += _O2_BYTE * N_TRIANGLE_TERMS(_V1);

    prng_gen( prng0 , sk , _O2_BYTE * _V1*_O1 ); // l2_F2
    sk += _O2_BYTE * _V1*_O1;
    n_byte_generated += _O2_BYTE * _V1*_O1;

    prng_gen( prng0 , sk , _O2_BYTE * _V1*_O2 ); // l2_F3
    sk += _O2_BYTE * _V1*_O1;
    n_byte_generated += _O2_BYTE * _V1*_O1;

    prng_gen( prng0 , sk , _O2_BYTE * N_TRIANGLE_TERMS(_O1) ); // l2_F5
    sk += _O2_BYTE * N_TRIANGLE_TERMS(_O1);
    n_byte_generated += _O2_BYTE * N_TRIANGLE_TERMS(_O1);

    prng_gen( prng0 , sk , _O2_BYTE * _O1*_O2 ); // l2_F6
    n_byte_generated += _O2_BYTE * _O1*_O2;

    return n_byte_generated;
}

unsigned generate_l2( unsigned char l2f1[8448],unsigned char l2f2[16384], unsigned char l2f3[16384],unsigned char l2f5[8448],unsigned char l2f6[16384],prng_t * prng0 )
{
    unsigned n_byte_generated = 0;

    p_gen2( prng0 , l2f1 , _O2_BYTE * N_TRIANGLE_TERMS(_V1) ); // l2_F1
    l2f1 += _O2_BYTE * N_TRIANGLE_TERMS(_V1);
    n_byte_generated += _O2_BYTE * N_TRIANGLE_TERMS(_V1);

    p_gen3( prng0 , l2f2 , _O2_BYTE * _V1*_O1 ); // l2_F2
    l2f1+= _O2_BYTE * _V1*_O1;
    n_byte_generated += _O2_BYTE * _V1*_O1;

    p_gen3( prng0 , l2f3 , _O2_BYTE * _V1*_O2 ); // l2_F3
    l2f1 += _O2_BYTE * _V1*_O1;
    n_byte_generated += _O2_BYTE * _V1*_O1;

    p_gen2( prng0 , l2f5 , _O2_BYTE * N_TRIANGLE_TERMS(_O1) ); // l2_F5
    l2f1 += _O2_BYTE * N_TRIANGLE_TERMS(_O1);
    n_byte_generated += _O2_BYTE * N_TRIANGLE_TERMS(_O1);

    p_gen3( prng0 , l2f6 , _O2_BYTE * _O1*_O2 ); // l2_F6
    n_byte_generated += _O2_BYTE * _O1*_O2;

    return n_byte_generated;
}

void generate_B1_B2( unsigned char l1f1[8448] , unsigned char l1f2[16384], unsigned char l2f1[8448], unsigned char l2f2[16384], unsigned char l2f3[16384], unsigned char l2f5[8448], unsigned char l2f6[16384] , prng_t * prng0 )
{
   // sk += generate_LF1( sk->l1_F1,sk->l1_F2 , prng0 );
	generate_LF1( l1f1,l1f2 , prng0 );
    generate_l2( l2f1,l2f2,l2f3,l2f5,l2f6 , prng0 );
}



//////////////////////////////////////////////////////////



void cpk_to_pk( pk_t * rpk, const cpk_t * cpk )
{
    // procedure:  cpk_t --> extcpk_t  --> pk_t

    // convert from cpk_t to extcpk_t
    ext_cpk_t * pk = malloc(sizeof(ext_cpk_t) );
//    ext_cpk_t * pk = (ext_cpk_t *) aligned_alloc( 32, sizeof(ext_cpk_t) );
    // setup prng
    prng_t prng0;
    prng_set( &prng0 , cpk->pk_seed , LEN_SKSEED );

    // generating parts of key with prng
    generate_l1_F12( pk->l1_Q1 , &prng0 );
    // copying parts of key from input. l1_Q3, l1_Q5, l1_Q6, l1_Q9
    memcpy( pk->l1_Q3 , cpk->l1_Q3 , _O1_BYTE*( _V1*_O2 + N_TRIANGLE_TERMS(_O1) + _O1*_O2 + N_TRIANGLE_TERMS(_O2) ) );

    // generating parts of key with prng
    generate_l2_F12356( pk->l2_Q1 , &prng0 );
    // copying parts of key from input: l2_Q9
    memcpy( pk->l2_Q9 , cpk->l2_Q9 , _O2_BYTE* N_TRIANGLE_TERMS(_O2) );

    // convert from extcpk_t to pk_t
    extcpk_to_pk( rpk , pk );

    free( pk );
}



/////////////////////////////////////////////////////////



 void gf256(uint8_t accu_b[16], const uint8_t a[_V1_BYTE+32], unsigned _num_byte) {
	unsigned i,k;
	unsigned n_u32 = _num_byte >> 2;

   uint32_t *b_u32 = (uint32_t *) accu_b;

    const uint32_t *a_u32 = (const uint32_t *) a;

    for (i = 0; i < n_u32; i++) b_u32[i] ^= a_u32[i];

    a += (n_u32 << 2); // + 16
    accu_b += (n_u32 << 2); // accu_b + 16
    unsigned rem = _num_byte & 3;
     for (i = 0; i < rem; i++)
    	{
    	 accu_b[i] ^= a[i];
    	printf("I am HERE\n");
    	}



 }
 void gf16v123(uint8_t accu_c[_V1_BYTE+32], const uint8_t a[16], uint8_t gf16_b, unsigned _num_byte) {
      unsigned i;
      unsigned n_u32 = _num_byte >> 2;
      uint32_t *c_u32 = (uint32_t *) accu_c;
      const uint32_t *a_u32 = (const uint32_t *) a;
      for (i = 0; i < n_u32; i++) c_u32[i] ^= gf16v_mul_u32(a_u32[i], gf16_b);

      union tmp_32 {
          uint8_t u8[4];
          uint32_t u32;
      } t;
      accu_c += (n_u32 << 2);
      a += (n_u32 << 2);
      unsigned rem = _num_byte & 3;
      for (i = 0; i < rem; i++) t.u8[i] = a[i];
      t.u32 = gf16v_mul_u32(t.u32, gf16_b);
      for (i = 0; i < rem; i++) accu_c[i] ^= t.u8[i];
  }

 void gf16(uint8_t c[_V1_BYTE+32], const uint8_t matA[512], unsigned n_A_vec_byte, unsigned n_A_width, const uint8_t b[16]) {
     gf256v_set_zero(c, n_A_vec_byte);
     int matA_idx = 0;
     for (unsigned i = 0; i < n_A_width; i++) {
         uint8_t bb = gf16v_get_ele(b, i);
         gf16v123(c, &matA[matA_idx], bb, n_A_vec_byte);
         matA_idx += n_A_vec_byte;
     }
 }


void calculate_t4( unsigned char t2_to_t4[512] , const unsigned char t1[512] , const unsigned char t3[512] )
{
    //  t4 = T_sk.t1 * T_sk.t3 - T_sk.t2
    unsigned char temp[_V1_BYTE+32];
    int t2_to_t4_idx = 0, t3_idx = 0;
    //unsigned char  *t4 = t2_to_t4;
    printf("_O2  %d\n",_O2 );
    int k,z,l,p,i,j;
    for(i=0;i<_O2;i++) {  /// t3 width

    	//gf16( temp , t1 , _V1_BYTE , _O1 , &t3[t3_idx] );
    	     gf256v_set_zero(temp, _V1_BYTE);
    	     int matA_idx = 0;
    	     for (j = 0; j < _O1; j++) {
    	         uint8_t bb = gf16v_get_ele(&t3[t3_idx], j);
    	         gf16v123(temp, &t1[matA_idx], bb, _V1_BYTE);
    	         matA_idx += _V1_BYTE;
    	     }

  //  	gf256( &t2_to_t4[t2_to_t4_idx] , temp , _V1_BYTE );

    	   // printf("\n accub = %x or %x\n",accu_b[0],*accu_b);
    		unsigned k,temp_idx=0;
    		unsigned n_u32 = _V1_BYTE >> 2;

    	   uint32_t *b_u32 = (uint32_t *) &t2_to_t4[t2_to_t4_idx];
        	    const uint32_t *a_u32 = (const uint32_t *) temp;


    	    for (k = 0; k < n_u32; k++) b_u32[k] ^= a_u32[k];

    	    temp_idx += (n_u32 << 2); // + 16
   // 	    t2_to_t4_idx += (n_u32 << 2); // accu_b + 16




//        t2_to_t4 += _V1_BYTE;
        t2_to_t4_idx += _V1_BYTE;
        t3_idx += _O1_BYTE;
        //t3 += _O1_BYTE;

    }
}




void obsfucate_l1_polys( unsigned char l1_polys[16384] , const unsigned char  l2_polys[16384] , unsigned n_terms , const unsigned char  s1[512] )
{	printf("%d\n",n_terms);
    unsigned char temp1[_O1_BYTE + 32];
    unsigned int l1_idx = 0,l2_idx=0;
    unsigned i,j,k,l;
 	unsigned temp_idx=0,l1_polys_idx=0;;

    while( n_terms-- ) {
            gf256v_set_zero(temp1, _O1_BYTE);
            int matA_idx = 0;
            for (j = 0; j < _O2; j++) {
                uint8_t bb = gf16v_get_ele(&l2_polys[l2_idx], j);
                gf16v123(temp1, &s1[matA_idx], bb, _O1_BYTE);
                matA_idx += _O1_BYTE;
            }
      	unsigned n_u32 = _O1_BYTE >> 2;
        uint32_t *b_u32 = (uint32_t *) &l1_polys[l1_polys_idx];
        const uint32_t *a_u32 = (const uint32_t *) temp1;
        for (i = 0; i < n_u32; i++) b_u32[i] ^= a_u32[i];
//        temp_idx += (n_u32 << 2); // + 16
        l1_polys_idx += _O1_BYTE;
        l2_idx += _O2_BYTE;
    }
}



///////////////////  Classic //////////////////////////////////



void p_generate_secretkey( sk_t* sk, const unsigned char sk_seed[32] )
{
    //memcpy( sk->sk_seed , sk_seed , LEN_SKSEED );
    int k;
    for(k=0;k<LEN_SKSEED;k++) sk->sk_seed[k] = sk_seed[k];
    // set up prng
    prng_t prng0[1];
    prng_set( prng0 , sk_seed , LEN_SKSEED );
    // generating secret key with prng.
    for (k=0;k<512;k++)sk->s1[k] = 0;

    generate_ST1( sk->s1 ,sk->t1,sk->t4,sk->t3, prng0 );


    generate_B1_B2( sk->l1_F1,sk->l1_F2,sk->l2_F1,sk->l2_F2,sk->l2_F3,sk->l2_F5,sk->l2_F6 , prng0 );


    // clean prng
 //   memset( &prng0 , 0 , sizeof(prng_t) );
}


void generate_secretkey( sk_t* sk, const unsigned char *sk_seed )
{
    p_generate_secretkey( sk , sk_seed );
    calculate_t4( sk->t4 , sk->t1 , sk->t3 );
}



void generate_keypair(ext_cpk_t pk, unsigned char rpk[sizeof(pk_t)],unsigned char sk[92960], const unsigned char sk_seed[32] )
{	//ext_cpk_t pk;
	pk_t pk_tmp;	sk_t sk_tmp;
	int loop,i,j,k,l,m,n,o,p;
	 unsigned char temp[_V1_BYTE+32],temp1[_O1_BYTE+32],temp2[_O1_BYTE+32],temp3[_O1_BYTE+32],temp4[_O1_BYTE+32],temp5[_O1_BYTE+32],temp6[_O1_BYTE+32];
	 unsigned n_u32,n_terms;
	 for(loop=0;loop< sizeof(pk_t);loop++)
		 pk_tmp.pk[loop]= 0;

    p_generate_secretkey( &sk_tmp , sk_seed );
    //ext_cpk_t pk;
    calculate_Q_from_F( &pk, &sk_tmp , &sk_tmp );   // compute the public key in ext_cpk_t format.
 // calculate_t4( sk_tmp.t4 , sk_tmp.t1 , sk_tmp.t3 );
    int t2_to_t4_idx = 0, t3_idx = 0;
    for(i=0;i<_O2;i++) {  /// t3 width

      	     gf256v_set_zero(temp, _V1_BYTE);
       	     int matA_idx = 0;
       	     for (j = 0; j < _O1; j++) {
       	         uint8_t bb = gf16v_get_ele(&sk_tmp.t3[t3_idx], j);
       	         gf16v123(temp, &sk_tmp.t1[matA_idx], bb, _V1_BYTE);
       	         matA_idx += _V1_BYTE;
       	     }

        n_u32 = _V1_BYTE >> 2;

       	uint32_t *b_u32 = (uint32_t *) &sk_tmp.t4 [t2_to_t4_idx];
        const uint32_t *a_u32 = (const uint32_t *) temp;
   	    for (k = 0; k < n_u32; k++) b_u32[k] ^= a_u32[k];
        t2_to_t4_idx += _V1_BYTE;
        t3_idx += _O1_BYTE;
       }



//    obsfucate_l1_polys( pk.l1_Q1 , pk.l2_Q1 , 528, sk_tmp.s1 );

    	n_terms = 528;
        unsigned int l1_idx = 0,l2_idx=0;
      	unsigned temp_idx=0,l1_polys_idx=0;;

        while( n_terms-- ) {
                gf256v_set_zero(temp1, _O1_BYTE);
                int matA_idx = 0;
                for (j = 0; j < _O2; j++) {
                    uint8_t bb = gf16v_get_ele(&pk.l2_Q1[l2_idx], j);
                    gf16v123(temp1, &sk_tmp.s1[matA_idx], bb, _O1_BYTE);
                    matA_idx += _O1_BYTE;
                }
          	n_u32 = _O1_BYTE >> 2;
            uint32_t *b_u321 = (uint32_t *) &pk.l1_Q1[l1_polys_idx];
            const uint32_t *a_u321 = (const uint32_t *) temp1;
            for (i = 0; i < n_u32; i++) b_u321[i] ^= a_u321[i];
            l1_polys_idx += _O1_BYTE;
            l2_idx += _O2_BYTE;
        }



  //  obsfucate_l1_polys( .l1_Q2 , pk.l2_Q2 , _V1*_O1 , sk_tmp.s1 );
	n_terms = 1024;
        unsigned int l1_idx1 = 0,l2_idx1=0;
      	unsigned temp_idx1=0,l1_polys_idx1=0;;

        while( n_terms-- ) {
                gf256v_set_zero(temp2, _O1_BYTE);
                int matA_idx = 0;
                for (j = 0; j < _O2; j++) {
                    uint8_t bb = gf16v_get_ele(&pk.l2_Q2[l2_idx1], j);
                    gf16v123(temp2, &sk_tmp.s1[matA_idx], bb, _O1_BYTE);
                    matA_idx += _O1_BYTE;
                }
          	n_u32 = _O1_BYTE >> 2;
            uint32_t *b_u322 = (uint32_t *) &pk.l1_Q2[l1_polys_idx1];
            const uint32_t *a_u322 = (const uint32_t *) temp2;
            for (i = 0; i < n_u32; i++) b_u322[i] ^= a_u322[i];
            l1_polys_idx1 += _O1_BYTE;
            l2_idx1 += _O2_BYTE;
        }
   // obsfucate_l1_polys( pk.l1_Q3 , pk.l2_Q3 , _V1*_O2 , sk_tmp.s1 );
	n_terms = 1024;
        unsigned int l1_idx2 = 0,l2_idx2=0;
      	unsigned temp_idx2=0,l1_polys_idx2=0;;

        while( n_terms-- ) {
                gf256v_set_zero(temp3, _O1_BYTE);
                int matA_idx = 0;
                for (j = 0; j < _O2; j++) {
                    uint8_t bb = gf16v_get_ele(&pk.l2_Q3[l2_idx2], j);
                    gf16v123(temp3, &sk_tmp.s1[matA_idx], bb, _O1_BYTE);
                    matA_idx += _O1_BYTE;
                }
          	n_u32 = _O1_BYTE >> 2;
            uint32_t *b_u323 = (uint32_t *) &pk.l1_Q3[l1_polys_idx2];
            const uint32_t *a_u323 = (const uint32_t *) temp3;
            for (i = 0; i < n_u32; i++) b_u323[i] ^= a_u323[i];
            l1_polys_idx2 += _O1_BYTE;
            l2_idx2 += _O2_BYTE;
        }
   // obsfucate_l1_polys( pk.l1_Q5 , pk.l2_Q5 , N_TRIANGLE_TERMS(_O1) , sk_tmp.s1 );
	n_terms = 528;
        unsigned int l1_idx3 = 0,l2_idx3=0;
      	unsigned temp_idx3=0,l1_polys_idx3=0;;

        while( n_terms-- ) {
                gf256v_set_zero(temp4, _O1_BYTE);
                int matA_idx = 0;
                for (j = 0; j < _O2; j++) {
                    uint8_t bb = gf16v_get_ele(&pk.l2_Q5[l2_idx3], j);
                    gf16v123(temp4, &sk_tmp.s1[matA_idx], bb, _O1_BYTE);
                    matA_idx += _O1_BYTE;
                }
          	n_u32 = _O1_BYTE >> 2;
            uint32_t *b_u324 = (uint32_t *) &pk.l1_Q5[l1_polys_idx3];
            const uint32_t *a_u324 = (const uint32_t *) temp4;
            for (i = 0; i < n_u32; i++) b_u324[i] ^= a_u324[i];
            l1_polys_idx3 += _O1_BYTE;
            l2_idx3 += _O2_BYTE;
        }
  //  obsfucate_l1_polys( pk.l1_Q6 , pk.l2_Q6 , _O1*_O2 , sk_tmp.s1 );
	n_terms = 1024;
        unsigned int l1_idx4 = 0,l2_idx4=0;
      	unsigned temp_idx4=0,l1_polys_idx4=0;;

        while( n_terms-- ) {
                gf256v_set_zero(temp5, _O1_BYTE);
                int matA_idx = 0;
                for (j = 0; j < _O2; j++) {
                    uint8_t bb = gf16v_get_ele(&pk.l2_Q6[l2_idx4], j);
                    gf16v123(temp5, &sk_tmp.s1[matA_idx], bb, _O1_BYTE);
                    matA_idx += _O1_BYTE;
                }
          	n_u32 = _O1_BYTE >> 2;
            uint32_t *b_u325 = (uint32_t *) &pk.l1_Q6[l1_polys_idx4];
            const uint32_t *a_u325 = (const uint32_t *) temp5;
            for (i = 0; i < n_u32; i++) b_u325[i] ^= a_u325[i];
            l1_polys_idx4 += _O1_BYTE;
            l2_idx4 += _O2_BYTE;
        }
    //obsfucate_l1_polys( pk.l1_Q9 , pk.l2_Q9 , N_TRIANGLE_TERMS(_O2) , sk_tmp.s1 );
	n_terms = 528;
        unsigned int l1_idx5 = 0,l2_idx5=0;
      	unsigned temp_idx5=0,l1_polys_idx5=0;;

        while( n_terms-- ) {
                gf256v_set_zero(temp6, _O1_BYTE);
                int matA_idx = 0;
                for (j = 0; j < _O2; j++) {
                    uint8_t bb = gf16v_get_ele(&pk.l2_Q9[l2_idx5], j);
                    gf16v123(temp6, &sk_tmp.s1[matA_idx], bb, _O1_BYTE);
                    matA_idx += _O1_BYTE;
                }
          	n_u32 = _O1_BYTE >> 2;
            uint32_t *b_u326 = (uint32_t *) &pk.l1_Q9[l1_polys_idx5];
            const uint32_t *a_u326 = (const uint32_t *) temp6;
            for (i = 0; i < n_u32; i++) b_u326[i] ^= a_u326[i];
            l1_polys_idx5 += _O1_BYTE;
            l2_idx5 += _O2_BYTE;
        }
    // so far, the pk contains the full pk but in ext_cpk_t format.

   // extcpk_to_pk( pk_tmp , pk );     // convert the public key from ext_cpk_t to pk_t.

   // void extcpk_to_pk( pk_t * pk , const ext_cpk_t * cpk )

    	//unsigned i,j,k;
        unsigned int  idx_l12 = 0;
        unsigned int  idx_l22 = 0;
        for(i=0;i<_V1;i++) {
            for(j=i;j<_V1;j++) {
                unsigned pub_idx = idx_of_trimat(i,j,_PUB_N);
                printf("%d\n", _PUB_M_BYTE*pub_idx );
                generate_keypair_label24:for(k=0;k<_O1_BYTE;k++)(&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ] )[k] = pk.l1_Q1[idx_l12+k];
                generate_keypair_label25:for(k=0;k<_O2_BYTE;k++)((&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ]) + _O1_BYTE)[k] = pk.l2_Q1[idx_l22+k];
                idx_l12 += _O1_BYTE;
                idx_l22 += _O2_BYTE;
            }
        }
        idx_l12 = 0;
        idx_l22 = 0;
        for(i=0;i<_V1;i++) {
            for(j=_V1;j<_V1+_O1;j++) {
                unsigned pub_idx = idx_of_trimat(i,j,_PUB_N);
                generate_keypair_label26:for(k=0;k<_O1_BYTE;k++)(&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ] )[k] = pk.l1_Q2[idx_l12+k];
                generate_keypair_label27:for(k=0;k<_O2_BYTE;k++)((&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ]) + _O1_BYTE)[k] = pk.l2_Q2[idx_l22+k];
                idx_l12 += _O1_BYTE;
                idx_l22 += _O2_BYTE;
            }
        }
        idx_l12 = 0;
        idx_l22 = 0;
        for(i=0;i<_V1;i++) {
            for(j=_V1+_O1;j<_PUB_N;j++) {
                unsigned pub_idx = idx_of_trimat(i,j,_PUB_N);
                generate_keypair_label28:for(k=0;k<_O1_BYTE;k++)(&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ] )[k] = pk.l1_Q3[idx_l12+k];
                generate_keypair_label29:for(k=0;k<_O2_BYTE;k++)((&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ]) + _O1_BYTE)[k] = pk.l2_Q3[idx_l22+k];
                idx_l12 += _O1_BYTE;
                idx_l22 += _O2_BYTE;
            }
        }
        idx_l12 = 0;
        idx_l22 = 0;
        for(i=_V1;i<_V1+_O1;i++) {
            for(j=i;j<_V1+_O1;j++) {
                unsigned pub_idx = idx_of_trimat(i,j,_PUB_N);
                generate_keypair_label30:for(k=0;k<_O1_BYTE;k++)(&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ] )[k] = pk.l1_Q5[idx_l12+k];
                generate_keypair_label31:for(k=0;k<_O2_BYTE;k++)((&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ]) + _O1_BYTE)[k] = pk.l2_Q5[idx_l22+k];
                idx_l12 += _O1_BYTE;
                idx_l22 += _O2_BYTE;
            }
        }
        idx_l12 = 0;
        idx_l22 = 0;
        for(i=_V1;i<_V1+_O1;i++) {
            for(j=_V1+_O1;j<_PUB_N;j++) {
                unsigned pub_idx = idx_of_trimat(i,j,_PUB_N);
                generate_keypair_label32:for(k=0;k<_O1_BYTE;k++)(&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ] )[k] = pk.l1_Q6[idx_l12+k];
                generate_keypair_label33:for(k=0;k<_O2_BYTE;k++)((&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ]) + _O1_BYTE)[k] = pk.l2_Q6[idx_l22+k];
                idx_l12 += _O1_BYTE;
                idx_l22 += _O2_BYTE;
            }
        }
        idx_l12 = 0;
        idx_l22 = 0;
        for(i=_V1+_O1;i<_PUB_N;i++) {
            for(j=i;j<_PUB_N;j++) {
                unsigned pub_idx = idx_of_trimat(i,j,_PUB_N);
                generate_keypair_label34:for(k=0;k<_O1_BYTE;k++)(&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ] )[k] = pk.l1_Q9[idx_l12+k];
                generate_keypair_label35:for(k=0;k<_O2_BYTE;k++)((&pk_tmp.pk[ _PUB_M_BYTE*pub_idx ]) + _O1_BYTE)[k] = pk.l2_Q9[idx_l22+k];
                idx_l12 += _O1_BYTE;
                idx_l22 += _O2_BYTE;
            }
        }


    for(loop=0;loop< sizeof(pk_t);loop++)
  	{
    	rpk[loop] = pk_tmp.pk[loop];
  	}
    for(loop = 0; loop<32; loop++)
    {
    	sk[loop] = sk_tmp.sk_seed[loop];
    }
    for(loop = 0; loop < 512; loop++)
    {
    	sk[loop+32] = sk_tmp.s1[loop];
    }
    for (loop = 0; loop<512; loop++)
    {
    	sk[loop + 544] = sk_tmp.t1[loop];
    }
    for (loop = 0; loop<512; loop++)
    {
    	sk[loop + 1056] = sk_tmp.t4[loop];
    }
    for (loop = 0; loop<512; loop++)
        {
        	sk[loop + 1568] = sk_tmp.t3[loop];
        }
    for (loop = 0; loop<8448; loop++)
        {
        	sk[loop + 2080] = sk_tmp.l1_F1[loop];
        }
    for (loop = 0; loop<16384; loop++)
        {
        	sk[loop + 10528] = sk_tmp.l1_F2[loop];
        }
    for(loop =0 ; loop<8448; loop++)
    {
    	sk[loop + 26912] = sk_tmp.l2_F1[loop];
    }
    for(loop = 0;loop<16384;loop++)
    {
    	sk[loop +35360 ] = sk_tmp.l2_F2[loop];
    }
    for(loop = 0;loop<16384;loop++)
    {
    	sk[loop + 51744] = sk_tmp.l2_F3[loop];
    }
    for(loop = 0 ; loop<8448;loop++)
    {
    	sk[loop+68128] = sk_tmp.l2_F5[loop];
    }

    for(loop = 0;loop<16384; loop++)
        sk[loop+76576] = sk_tmp.l2_F6[loop];

//    free( pk );

}



/////////////////////   Cyclic   //////////////////////////////////


void generate_secretkey_cyclic( sk_t* sk, const unsigned char *pk_seed , const unsigned char *sk_seed )
{
    memcpy( sk->sk_seed , sk_seed , LEN_SKSEED );

    // prng for sk
    prng_t prng0;
    prng_set( &prng0 , sk_seed , LEN_SKSEED );
    generate_S_T( sk->s1 , &prng0 );
    calculate_t4( sk->t4 , sk->t1 , sk->t3 );

    // prng for pk
    sk_t inst_Qs;
    sk_t * Qs = &inst_Qs;
    prng_t prng1;
    prng_set( &prng1 , pk_seed , LEN_PKSEED );
    //generate_B1_B2( Qs->l1_F1 , &prng1 );

    obsfucate_l1_polys( Qs->l1_F1 , Qs->l2_F1 , N_TRIANGLE_TERMS(_V1) , sk->s1 );
    obsfucate_l1_polys( Qs->l1_F2 , Qs->l2_F2 , _V1*_O1 , sk->s1 );

    // calcuate the parts of sk according to pk.
    calculate_F_from_Q( sk , Qs , sk );

    // clean prng for sk
    memset( &prng0 , 0 , sizeof(prng_t) );
}





void generate_keypair_cyclic( cpk_t * pk, sk_t* sk, const unsigned char *pk_seed , const unsigned char *sk_seed )
{
    memcpy( pk->pk_seed , pk_seed , LEN_PKSEED );

    // prng for sk
    prng_t prng;
    prng_t * prng0 = &prng;
    prng_set( prng0 , sk_seed , LEN_SKSEED );
    generate_S_T( sk->s1 , prng0 );   // S,T:  only a part of sk

    unsigned char * t2 = (unsigned char *) malloc(sizeof(sk->t4));
//    unsigned char * t2 = (unsigned char *) aligned_alloc( 32, sizeof(sk->t4) );
    memcpy( t2 , sk->t4 , _V1_BYTE*_O2 );        // temporarily store t2
    calculate_t4( sk->t4 , sk->t1 , sk->t3 );    // t2 <- t4

    // prng for pk
    sk_t inst_Qs;
    sk_t * Qs = &inst_Qs;
    prng_t * prng1 = &prng;
    prng_set( prng1 , pk_seed , LEN_PKSEED );
    //generate_B1_B2( Qs->l1_F1 , prng1 );  // generating l1_Q1, l1_Q2, l2_Q1, l2_Q2, l2_Q3, l2_Q5, l2_Q6
    obsfucate_l1_polys( Qs->l1_F1 , Qs->l2_F1 , N_TRIANGLE_TERMS(_V1) , sk->s1 );
    obsfucate_l1_polys( Qs->l1_F2 , Qs->l2_F2 , _V1*_O1 , sk->s1 );
    // so far, the Qs contains l1_F1, l1_F2, l2_F1, l2_F2, l2_F3, l2_F5, l2_F6.

    calculate_F_from_Q( sk , Qs , sk );          // calcuate the rest parts of secret key from Qs and S,T

    memcpy( sk->t4 , t2 , _V1_BYTE*_O2 );        // restore t2
    calculate_Q_from_F_cyclic( pk, sk , sk );    // calculate the rest parts of public key: l1_Q3, l1_Q5, l1_Q6, l1_Q9, l2_Q9

    obsfucate_l1_polys( pk->l1_Q3 , Qs->l2_F3 , _V1*_O2 , sk->s1 );
    obsfucate_l1_polys( pk->l1_Q5 , Qs->l2_F5 , N_TRIANGLE_TERMS(_O1) , sk->s1 );
    obsfucate_l1_polys( pk->l1_Q6 , Qs->l2_F6 , _O1*_O2 , sk->s1 );
    obsfucate_l1_polys( pk->l1_Q9 , pk->l2_Q9 , N_TRIANGLE_TERMS(_O2) , sk->s1 );

    // clean
    memset( &prng , 0 , sizeof(prng_t) );
    memset( t2 , 0 , sizeof(sk->t4) );
    free( t2 );
}



void generate_compact_keypair_cyclic( cpk_t * pk, csk_t* rsk, const unsigned char *pk_seed , const unsigned char *sk_seed )
{
    memcpy( rsk->pk_seed , pk_seed , LEN_PKSEED );
    memcpy( rsk->sk_seed , sk_seed , LEN_SKSEED );

    sk_t * sk = (sk_t *) malloc(sizeof(sk_t));
//    sk_t * sk = (sk_t *) aligned_alloc( 32 , sizeof(sk_t) );
    generate_keypair_cyclic( pk , sk , pk_seed , sk_seed );
    memset( sk , 0 , sizeof(sk_t) );
    free( sk );    // dispose of sk. don't need to output.
}




