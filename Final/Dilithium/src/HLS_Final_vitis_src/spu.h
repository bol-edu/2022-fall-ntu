#ifndef SPU_H
#define SPU_H

#include <stdint.h>
#include "./clean/params.h"
#define NROUNDS 24
#define ROL(a, offset) ((a << offset) ^ (a >> (64-offset)))
#define SHAKE128_RATE 168
#define SHAKE256_RATE 136
#define BUF_SIZE 1600/8 - SHAKE256_RATE 


class SPU
{
private:
    uint64_t s[25];
    unsigned int pos;
public:
    SPU();
    void store64(uint8_t x[8], uint64_t u);
    uint64_t load64(const uint8_t x[8]);
    void KeccakF1600_StatePermute();
    void shake_init();
    void stream_init(unsigned int mode, const uint8_t seed[CRHBYTES], uint16_t nonce);
    void shake_absorb(unsigned int mode, const uint8_t *m, size_t mlen);
    void shake_finalize(unsigned int mode);
    void shake_squeezeblocks(unsigned int mode, uint8_t *out, size_t nblocks);
    void shake_squeeze(unsigned int mode, uint8_t *out, size_t outlen);
    void shake(unsigned int mode, uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen);
    void sample_uniform(int32_t* a, const uint8_t seed[SEEDBYTES], uint16_t nonce);
    void sample_eta(int32_t* a, const uint8_t seed[SEEDBYTES], uint16_t nonce);
};
#endif

