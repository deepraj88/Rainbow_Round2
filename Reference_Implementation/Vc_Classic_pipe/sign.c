///  @file  sign.c
///  @brief the implementations for functions in api.h
///
///
#include <stdlib.h>
#include <string.h>

#include "rainbow_config.h"
#include "rainbow_keypair.h"
#include "rainbow.h"

#include "api.h"

#include "utils_hash.h"

#include "rng.h"




int crypto_sign_keypair(unsigned char pk[CRYPTO_PUBLICKEYBYTES], unsigned char sk[CRYPTO_SECRETKEYBYTES])
{
    unsigned char sk_seed[LEN_SKSEED] = {0};
    randombytes( sk_seed , LEN_SKSEED );
    ext_cpk_t rpk;
    int k;
    for(k = 0; k < sizeof(sk_t);k++) sk[k] = 0;

#if defined _RAINBOW_CLASSIC

    generate_keypair( &rpk, pk , sk , sk_seed );

#elif defined _RAINBOW_CYCLIC

    unsigned char pk_seed[LEN_PKSEED] = {0};
    randombytes( pk_seed , LEN_PKSEED );
    generate_keypair_cyclic( (cpk_t*) pk , (sk_t*) sk , pk_seed , sk_seed );

#elif defined _RAINBOW_CYCLIC_COMPRESSED

    unsigned char pk_seed[LEN_PKSEED] = {0};
    randombytes( pk_seed , LEN_PKSEED );
    generate_compact_keypair_cyclic( (cpk_t*) pk , (csk_t*) sk , pk_seed , sk_seed );

#else
error here
#endif
    return 0;
}





int
crypto_sign(unsigned char sm[3300+CRYPTO_BYTES], unsigned long long smlen[1], const unsigned char m[3300], unsigned long long mlen, const unsigned char sk[CRYPTO_SECRETKEYBYTES])
{
	unsigned char digest[_HASH_LEN];

	hash_msg( digest , _HASH_LEN , m , mlen );

	//memcpy( sm , m , mlen );
	int k;
	crypto_sign_label7:for(k=0;k<mlen;k++)sm[k] = m[k];
	smlen[0] = mlen + _SIGNATURE_BYTE;

#if defined _RAINBOW_CLASSIC

	return rainbow_sign( sm + mlen , (const sk_t*)sk , digest );

#elif defined _RAINBOW_CYCLIC

	return rainbow_sign( sm + mlen , sk , digest );

#elif defined _RAINBOW_CYCLIC_COMPRESSED

	return rainbow_sign_cyclic( sm + mlen , (const csk_t*)sk , digest );

#else
error here
#endif


}






int
crypto_sign_open(unsigned char m[3300], unsigned long long mlen[1], const unsigned char sm[3300+CRYPTO_BYTES], unsigned long long smlen, const unsigned char pk[CRYPTO_PUBLICKEYBYTES])
{
	if( _SIGNATURE_BYTE > smlen ) return -1;
	//memcpy( m , sm , smlen-_SIGNATURE_BYTE );
	int k;
	crypto_sign_open_label2:for (k = 0; k <smlen-_SIGNATURE_BYTE;k++)m[k] = sm[k];
	mlen[0] = smlen-_SIGNATURE_BYTE;

	unsigned char digest[_HASH_LEN];
	hash_msg( digest , _HASH_LEN , m , *mlen );

#if defined _RAINBOW_CLASSIC

	return rainbow_verify( digest , sm + mlen[0] , pk );

#elif defined _RAINBOW_CYCLIC

	return rainbow_verify_cyclic( digest , sm + mlen[0] , (const cpk_t *)pk );

#elif defined _RAINBOW_CYCLIC_COMPRESSED

	return rainbow_verify_cyclic( digest , sm + mlen[0] , (const cpk_t *)pk );

#else
error here
#endif


}

