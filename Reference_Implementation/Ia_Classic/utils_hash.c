#if 0
/// @file utils_hash.c
/// @brief the adapter for SHA2 families in openssl.
///
///

#include "utils_hash.h"

#include "openssl/sha.h"


#include "hash_len_config.h"

#ifndef _HASH_LEN
#define _HASH_LEN (32)
#endif

////This module is added by Deepraj.
//int SHA256_Init(SHA256_CTX *c)
//{
//    memset(c, 0, sizeof(*c));
//    c->h[0] = 0x6a09e667UL;
//    c->h[1] = 0xbb67ae85UL;
//    c->h[2] = 0x3c6ef372UL;
//    c->h[3] = 0xa54ff53aUL;
//    c->h[4] = 0x510e527fUL;
//    c->h[5] = 0x9b05688cUL;
//    c->h[6] = 0x1f83d9abUL;
//    c->h[7] = 0x5be0cd19UL;
//    c->md_len = SHA256_DIGEST_LENGTH;
//    return 1;
//}


static inline
int _hash( unsigned char * digest , const unsigned char * m , unsigned long long mlen )
{
#if 32 == _HASH_LEN
	SHA256_CTX sha256;
	SHA256_Init( &sha256 );
	SHA256_Update( &sha256 , m , mlen );
	SHA256_Final( digest , &sha256 );
#elif 48 == _HASH_LEN
	SHA512_CTX sha384;
	SHA384_Init( &sha384 );
	SHA384_Update( &sha384 , m , mlen );
	SHA384_Final( digest , &sha384 );
#elif 64 == _HASH_LEN
	SHA512_CTX sha512;
	SHA512_Init( &sha512 );
	SHA512_Update( &sha512 , m , mlen );
	SHA512_Final( digest , &sha512 );
#else
error: un-supported _HASH_LEN
#endif
	return 0;
}





static inline
int expand_hash( unsigned char * digest , unsigned n_digest , const unsigned char * hash )
{
	if( _HASH_LEN >= n_digest ) {
		for(unsigned i=0;i<n_digest;i++) digest[i] = hash[i];
		return 0;
	} else {
		for(unsigned i=0;i<_HASH_LEN;i++) digest[i] = hash[i];
		n_digest -= _HASH_LEN;
	}

	while( _HASH_LEN <= n_digest ) {
//		sha3_256( digest+_HASH_LEN , digest , _HASH_LEN );
		_hash( digest+_HASH_LEN , digest , _HASH_LEN );

		n_digest -= _HASH_LEN;
		digest += _HASH_LEN;
	}
	unsigned char temp[_HASH_LEN];
	if( n_digest ){
//		sha3_256( temp , digest , _HASH_LEN );
		_hash( temp , digest , _HASH_LEN );
		for(unsigned i=0;i<n_digest;i++) digest[_HASH_LEN+i] = temp[i];
	}
	return 0;
}




int hash_msg( unsigned char * digest , unsigned len_digest , const unsigned char * m , unsigned long long mlen )
{
	unsigned char buf[_HASH_LEN];
//	sha3_256( buf, m , mlen );
	_hash( buf , m , mlen );

	return expand_hash( digest , len_digest , buf );
}

#else
/// @file utils_hash.c
/// @brief the adapter for SHA2 families in openssl.
///
///

#include "utils_hash.h"

//#include "openssl/sha.h"


#include "hash_len_config.h"

#ifndef _HASH_LEN
#define _HASH_LEN (32)
#endif


/*************************** HEADER FILES ***************************/
#include <stddef.h>

/****************************** MACROS ******************************/
#define SHA256_BLOCK_SIZE 32            // SHA256 outputs a 32 byte digest

/**************************** DATA TYPES ****************************/
typedef unsigned char BYTE;             // 8-bit byte
typedef unsigned int  WORD;             // 32-bit word, change to "long" for 16-bit machines
WORD z;
typedef struct {
	BYTE data[64];
	WORD datalen;
	unsigned long long bitlen;
	WORD state[8];
} SHA256_CTX;

/*************************** HEADER FILES ***************************/
#include <stdlib.h>
#include <string.h>


/****************************** MACROS ******************************/
#define ROTLEFT(a,b) (((a) << (b)) | ((a) >> (32-(b))))
#define ROTRIGHT(a,b) (((a) >> (b)) | ((a) << (32-(b))))

#define CH(x,y,z) (((x) & (y)) ^ (~(x) & (z)))
#define MAJ(x,y,z) (((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z)))
#define EP0(x) (ROTRIGHT(x,2) ^ ROTRIGHT(x,13) ^ ROTRIGHT(x,22))
#define EP1(x) (ROTRIGHT(x,6) ^ ROTRIGHT(x,11) ^ ROTRIGHT(x,25))
#define SIG0(x) (ROTRIGHT(x,7) ^ ROTRIGHT(x,18) ^ ((x) >> 3))
#define SIG1(x) (ROTRIGHT(x,17) ^ ROTRIGHT(x,19) ^ ((x) >> 10))

/**************************** VARIABLES *****************************/
static const WORD k[64] = {
	0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
	0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
	0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
	0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
	0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
	0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
	0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
	0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
};

/*********************** FUNCTION DEFINITIONS ***********************/
void sha256_transform(SHA256_CTX *ctx, const BYTE data[])
{
	WORD a, b, c, d, e, f, g, h, i, j, t1, t2, m[64];

	sha256_transform_label0:for (i = 0, j = 0; i < 16; ++i, j += 4)
		m[i] = (data[j] << 24) | (data[j + 1] << 16) | (data[j + 2] << 8) | (data[j + 3]);
	sha256_transform_label1:for ( ; i < 64; ++i)
		m[i] = SIG1(m[i - 2]) + m[i - 7] + SIG0(m[i - 15]) + m[i - 16];

	a = ctx->state[0];
	b = ctx->state[1];
	c = ctx->state[2];
	d = ctx->state[3];
	e = ctx->state[4];
	f = ctx->state[5];
	g = ctx->state[6];
	h = ctx->state[7];

	sha256_transform_label2:for (i = 0; i < 64; ++i) {
		t1 = h + EP1(e) + CH(e,f,g) + k[i] + m[i];
		t2 = EP0(a) + MAJ(a,b,c);
		h = g;
		g = f;
		f = e;
		e = d + t1;
		d = c;
		c = b;
		b = a;
		a = t1 + t2;
	}

	ctx->state[0] += a;
	ctx->state[1] += b;
	ctx->state[2] += c;
	ctx->state[3] += d;
	ctx->state[4] += e;
	ctx->state[5] += f;
	ctx->state[6] += g;
	ctx->state[7] += h;
}

void sha256_init(SHA256_CTX *ctx)
{
	ctx->datalen = 0;
	ctx->bitlen = 0;
	ctx->state[0] = 0x6a09e667;
	ctx->state[1] = 0xbb67ae85;
	ctx->state[2] = 0x3c6ef372;
	ctx->state[3] = 0xa54ff53a;
	ctx->state[4] = 0x510e527f;
	ctx->state[5] = 0x9b05688c;
	ctx->state[6] = 0x1f83d9ab;
	ctx->state[7] = 0x5be0cd19;
}

void sha256_update(SHA256_CTX *ctx, const BYTE data[], size_t len)
{
	WORD i;

	sha256_update_label3:for (i = 0; i < len; ++i) {
		ctx->data[ctx->datalen] = data[i];
		ctx->datalen++;
		if (ctx->datalen == 64) {
			sha256_transform(ctx, ctx->data);
			ctx->bitlen += 512;
			ctx->datalen = 0;
		}
	}
}

void sha256_final(SHA256_CTX *ctx, BYTE hash[])
{
	WORD i,j;

	i = ctx->datalen;

	// Pad whatever data is left in the buffer.
	if (ctx->datalen < 56) {
		ctx->data[i++] = 0x80;
		sha256_final_label6:while (i < 56)
			ctx->data[i++] = 0x00;
	}
	else {
		ctx->data[i++] = 0x80;
		sha256_final_label7:while (i < 64)
			ctx->data[i++] = 0x00;
		sha256_transform(ctx, ctx->data);
		sha256_final_label8:for (j = 0;j <57;j++)
		{
			ctx->data[j] = 0;
		}
	}

	// Append to the padding the total message's length in bits and transform.
	ctx->bitlen += ctx->datalen * 8;
	ctx->data[63] = ctx->bitlen;
	ctx->data[62] = ctx->bitlen >> 8;
	ctx->data[61] = ctx->bitlen >> 16;
	ctx->data[60] = ctx->bitlen >> 24;
	ctx->data[59] = ctx->bitlen >> 32;
	ctx->data[58] = ctx->bitlen >> 40;
	ctx->data[57] = ctx->bitlen >> 48;
	ctx->data[56] = ctx->bitlen >> 56;
	sha256_transform(ctx, ctx->data);

	// Since this implementation uses little endian byte ordering and SHA uses big endian,
	// reverse all the bytes when copying the final state to the output hash.
	sha256_final_label4:for (i = 0; i < 4; ++i) {
		hash[i]      = (ctx->state[0] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 4]  = (ctx->state[1] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 8]  = (ctx->state[2] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 12] = (ctx->state[3] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 16] = (ctx->state[4] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 20] = (ctx->state[5] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 24] = (ctx->state[6] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 28] = (ctx->state[7] >> (24 - i * 8)) & 0x000000ff;
	}
}

static inline
int _hash( unsigned char * digest , const unsigned char * m , unsigned long long mlen )
{
//	printf ("\n ---------------------mlen = %d ----------------\n" , mlen);
int size,size1,i;

#if 32 == _HASH_LEN
	SHA256_CTX sha256;
	sha256_init( &sha256 );
	sha256_update( &sha256 , m , mlen );
//	for (i = 0; i< 17; i++)
//	{
//		printf("\n data %d = %x \n",i,sha256.data[i]);
//	}

//	printf("\n");
//		for (i = 0; i< mlen; i++){
//		printf(" m %d = %x",i,m[i]);}
//		printf("\n");
//
//		for (i = 0; i<8; i++)
//			printf(" \n state %d = %x \n" , i,sha256.state[i]);
	sha256_final(&sha256,digest );
//printf("\n\n\n");

#elif 48 == _HASH_LEN
	SHA512_CTX sha384;
	SHA384_Init( &sha384 );
	SHA384_Update( &sha384 , m , mlen );

	SHA384_Final( digest , &sha384 );
#elif 64 == _HASH_LEN
	SHA512_CTX sha512;
	SHA512_Init( &sha512 );
	SHA512_Update( &sha512 , m , mlen );
	SHA512_Final( digest , &sha512 );
#else
error: un-supported _HASH_LEN
#endif
	return 0;
}





static inline
int expand_hash( unsigned char * digest , unsigned n_digest , const unsigned char * hash )
{
	if( _HASH_LEN >= n_digest ) {
		expand_hash_label9:for(unsigned i=0;i<n_digest;i++) digest[i] = hash[i];
		return 0;
	} else {
		expand_hash_label10:for(unsigned i=0;i<_HASH_LEN;i++) digest[i] = hash[i];
		n_digest -= _HASH_LEN;
	}

	while( _HASH_LEN <= n_digest ) {
//		sha3_256( digest+_HASH_LEN , digest , _HASH_LEN );
		_hash( digest+_HASH_LEN , digest , _HASH_LEN );

		n_digest -= _HASH_LEN;
		digest += _HASH_LEN;
	}
	unsigned char temp[_HASH_LEN];
	if( n_digest ){
//		sha3_256( temp , digest , _HASH_LEN );
		_hash( temp , digest , _HASH_LEN );
		expand_hash_label5:for(unsigned i=0;i<n_digest;i++) digest[_HASH_LEN+i] = temp[i];
	}
	return 0;
}




int hash_msg( unsigned char * digest , unsigned len_digest , const unsigned char * m , unsigned long long mlen )
{

	unsigned char buf[_HASH_LEN];
//	sha3_256( buf, m , mlen );
	_hash( buf , m , mlen );

	return expand_hash( digest , len_digest , buf );
}

#endif
