/// @file utils_prng.c
/// @brief The implementation of PRNG related functions.
///

#include "utils_prng.h"

#include <stdlib.h>
#include <string.h>

// int hash_msg( unsigned char * digest , unsigned len_digest , const unsigned char * m , unsigned long long mlen );
#include "utils_hash.h"

#ifndef _DEBUG_

#include "rng.h"


int prng_set(prng_t *ctx, const unsigned char  *prng_seed, unsigned long prng_seedlen)
{int k;
    unsigned char seed[48];
    if( prng_seedlen >= 48 ) {
        //memcpy( seed , prng_seed , 48 );
    	for(k=0;k<48;k++) seed[k] = prng_seed[k];
    } else {
        //memcpy( seed , prng_seed , prng_seedlen );
    	for(k=0;k<prng_seedlen;k++) seed[k] = prng_seed[k];
        hash_msg( seed + prng_seedlen , 48-prng_seedlen , (const unsigned char *)prng_seed, prng_seedlen);
    }

    randombytes_init_with_state( ctx , seed );

    return 0;
}
int p_gen1(prng_t *ctx, unsigned char out[512], unsigned long outlen)
{
	return randombytes_with_state512( ctx , out, outlen);
}

int p_gen2(prng_t *ctx, unsigned char out[8448], unsigned long outlen)
{	//printf("\n in p_gen2 \n");
	return randombytes_with_state8448( ctx , out, outlen);
}

int p_gen3(prng_t *ctx, unsigned char out[16384], unsigned long outlen)
{//printf("\n in p_gen3 \n");
	return randombytes_with_state16384( ctx , out, outlen);
}

int prng_gen(prng_t *ctx, unsigned char *out, unsigned long outlen)
{
    return randombytes_with_state( ctx , out, outlen);
}



#else



int prng_set(prng_t *ctx, const void *prng_seed, unsigned long prng_seedlen)
{
    memset(ctx, 0, sizeof (prng_t));

    hash_msg(ctx->buf, _HASH_LEN , (const unsigned char *)prng_seed, prng_seedlen);

    return 0;
}

int prng_gen(prng_t *ctx, unsigned char *out, unsigned long outlen) {

   while( outlen ) {
      if( _HASH_LEN == ctx->used ) { hash_msg(ctx->buf, _HASH_LEN , ctx->buf, _HASH_LEN); ctx->used = 0; }
      out[0] = ctx->buf[ctx->used];
      out++;
      ctx->used++;
      outlen--;
   }
   return 0;
}

#endif
