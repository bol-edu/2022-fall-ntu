#ifndef DPU_H
#define DPU_H

#include <stdint.h>
#include "./clean/params.h"

#define MONT -4186625 // 2^32 % Q
#define QINV 58728449 // q^(-1) mod 2^32
#define MAXBYTES 1024

#define   VAR_NUM L*K + 3*L + 5*K + 1
#define   TMP_NUM K*10
#define CONST_NUM 22
#define  POLY_NUM VAR_NUM + TMP_NUM + CONST_NUM


//-------------var---------
#define   A_ADDR 0
#define  S1_ADDR L*K
#define   Y_ADDR L*K + L
#define   Z_ADDR L*K + 2*L
#define  T0_ADDR L*K + 3*L
#define  S2_ADDR L*K + 3*L + K
#define  W1_ADDR L*K + 3*L + 2*K
#define  W0_ADDR L*K + 3*L + 3*K
#define   H_ADDR L*K + 3*L + 4*K
#define  CP_ADDR L*K + 3*L + 5*K
#define  T1_ADDR W0_ADDR
#define S1H_ADDR Y_ADDR
//-------------tmp---------
#define TMP_ADDR VAR_NUM
//------------cont---------
#define   Q_ADDR VAR_NUM + TMP_NUM
#define   QINV_ADDR VAR_NUM + TMP_NUM + 1
#define   NTTC_ADDR  VAR_NUM + TMP_NUM + 2
#define   INTTC_ADDR VAR_NUM + TMP_NUM + 10
#define   MONT2_ADDR VAR_NUM + TMP_NUM + 18
#define   DECO1_ADDR VAR_NUM + TMP_NUM + 19
#define   DECO2_ADDR VAR_NUM + TMP_NUM + 20


#define OP_ADD          0
#define OP_SUB          1
#define OP_MUL          2
#define OP_RD32         3
#define OP_CADDQ        4
#define OP_PASS         5
#define OP_POW2ROUND    6
#define OP_NTT          7
#define OP_INTT         8
#define OP_SFTL         9       
#define OP_DECOMP1     10
#define OP_DECOMP2     11
#define OP_DECOMP3     12
#define OP_MHINT       13
#define OP_UHINT1      14
#define OP_UHINT2       15

#define FUNC_ADD        0
#define FUNC_SUB        1
#define FUNC_RD         2
#define FUNC_MONTMUL    3
#define FUNC_MATMUL     4
#define FUNC_CADDQ      5
#define FUNC_POW2ROUND  6
#define FUNC_NTT        7
#define FUNC_INTT       8
#define FUNC_SFTL       9
#define FUNC_FREZ      10
#define FUNC_DECOMP    11
#define FUNC_MHINT     12
#define FUNC_UHINT     13

#define   T1_PACK   0
#define   T1_UNPACK 1
#define   T0_PACK   2
#define   T0_UNPACK 3
#define    Z_PACK   4
#define    Z_UNPACK 5
#define  ETA_PACK   6
#define  ETA_UNPACK 7
#define   W1_PACK   8
#define BYTE_PACK   9
#define BYTE_UNPACK 10
#define  CHK_NORM   11
#define    H_PACK   12
#define    H_UNPACK 13
#define    H_COUNT  14
#define NH 128

class DPU
{
private:
public:
    int32_t pMem [POLY_NUM][N];
    int32_t p1[N], p2[N], p3[N], p4[N];
    int32_t p5[N]; //for pack
    int norm_err;
    int sig_err;
    int hn;
    DPU();
    void read_p1(uint8_t addr);
    void read_p2(uint8_t addr);
    void read_p5(uint8_t addr);
    void read_ntt(uint8_t addr);
    void read_intt(uint8_t addr);
    void write_p3(uint8_t addr);
    void write_p4(uint8_t addr);
    void write_p5(uint8_t addr);
    void read_Mem(int32_t* a, uint8_t addr);
    void write_Mem(int32_t* a, uint8_t addr);
    void dpu_func(const uint8_t addr1, const uint8_t addr2, const uint8_t addr3, uint8_t type, uint8_t arg, uint8_t itr);
    void dpu_pack(const uint8_t addr, uint8_t rb[MAXBYTES], uint8_t pb[MAXBYTES], int ptrs, uint8_t type, const int itr);
    void dpu_unit(uint8_t type);
};
#endif
