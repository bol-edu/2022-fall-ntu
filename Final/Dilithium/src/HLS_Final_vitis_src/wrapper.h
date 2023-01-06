#ifndef WRAPPER_H
#define WRAPPER_H

#include <stddef.h>
#include <stdint.h>
#include "./clean/params.h"

int dpu_keygen(uint8_t pk[CRYPTO_PUBLICKEYBYTES], uint8_t sk[CRYPTO_SECRETKEYBYTES], uint8_t seedbuf[3*SEEDBYTES]);

#endif
