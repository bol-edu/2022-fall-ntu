#include <stdint.h>
#include <stdio.h>
#include "./clean/params.h"
#include "dpu.h"
#include "spu.h"
#include "wrapper.h"

int dpu_keygen(uint8_t pk[CRYPTO_PUBLICKEYBYTES], uint8_t sk[CRYPTO_SECRETKEYBYTES], uint8_t seedbuf[3*SEEDBYTES]) {
  //---------------acclerate start---------------------//
  DPU dpu;
  SPU spu;
#pragma HLS ALLOCATION function instances=dpu.dpu_func limit=1
#pragma HLS ALLOCATION function instances=dpu.dpu_unit limit=1
#pragma HLS ALLOCATION function instances=dpu.dpu_pack limit=1
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=dpu.p1
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=dpu.p2
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=dpu.p3
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=dpu.p4
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=dpu.p5
#pragma HLS ARRAY_RESHAPE dim=2 type=complete variable=dpu.pMem
#pragma HLS BIND_STORAGE variable=dpu.pMem type=ram_t2p
  int32_t tmp[N];
#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=tmp
  uint8_t tr[CRHBYTES];
  uint8_t *rho, *rhoprime, *key;

  spu.shake(256, seedbuf, 3*SEEDBYTES, seedbuf, SEEDBYTES);
  rho = seedbuf;
  rhoprime = seedbuf + SEEDBYTES;
  key = seedbuf + 2*SEEDBYTES;

SAMPA_LOOP0:for(unsigned int k = 0; k < K; ++k){
SAMPA_LOOP1:for(unsigned int p = 0; p < L; ++p){
      spu.sample_uniform(tmp, rho, (k << 8) + p);
      dpu.write_Mem(tmp, A_ADDR+L*k+p);
    }
  }
SAMPETA_LOOP0:for(unsigned int k = 0; k < L; ++k){
    spu.sample_eta(tmp, rhoprime, k);
    dpu.write_Mem(tmp, S1H_ADDR+k);
    dpu.write_Mem(tmp,  S1_ADDR+k);
  }
SAMPETA_LOOP1:for(unsigned int k = 0; k < K; ++k){
    spu.sample_eta(tmp, rhoprime, L+k);
    dpu.write_Mem(tmp,  S2_ADDR+k);
  }
  dpu.dpu_func(  S1H_ADDR,       0,       0,      FUNC_NTT, 0, L);
  dpu.dpu_func(    A_ADDR,S1H_ADDR, T1_ADDR,   FUNC_MATMUL, 0, L);
  dpu.dpu_func(   T1_ADDR,       0,       0,       FUNC_RD, 0, K);
  dpu.dpu_func(   T1_ADDR,       0,       0,     FUNC_INTT, 0, K);
  dpu.dpu_func(MONT2_ADDR, T1_ADDR, T1_ADDR,  FUNC_MONTMUL, 0, K);
  dpu.dpu_func(   T1_ADDR, S2_ADDR, T1_ADDR,      FUNC_ADD, 0, K);
  dpu.dpu_func(   T1_ADDR,       0,       0,    FUNC_CADDQ, 0, K);
  dpu.dpu_func(   T1_ADDR, T1_ADDR, T0_ADDR,FUNC_POW2ROUND, 0, K);

  for(unsigned int k = 0; k < SEEDBYTES; ++k) pk[k] = rho[k];
  dpu.dpu_pack(T1_ADDR, NULL,  pk, SEEDBYTES,   T1_PACK,         K); 
  spu.shake(256, tr, CRHBYTES, pk, CRYPTO_PUBLICKEYBYTES);
  

  for(unsigned int k = 0; k < SEEDBYTES; ++k) sk[k] = rho[k];
  for(unsigned int k = 0; k < SEEDBYTES; ++k) sk[SEEDBYTES+k] = key[k];
  for(unsigned int k = 0; k <  CRHBYTES; ++k) sk[2*SEEDBYTES+k] = tr[k];
  dpu.dpu_pack(S1_ADDR, NULL, sk,   2*SEEDBYTES+CRHBYTES,  ETA_PACK,         L);
  dpu.dpu_pack(S2_ADDR, NULL, sk,   2*SEEDBYTES+CRHBYTES
                                  +L*POLYETA_PACKEDBYTES,  ETA_PACK,         K);
  dpu.dpu_pack(T0_ADDR, NULL, sk,   2*SEEDBYTES+CRHBYTES
                                  +L*POLYETA_PACKEDBYTES
                                  +K*POLYETA_PACKEDBYTES,   T0_PACK,         K);
  //---------------acclerate end---------------------//


  return 0;
}
