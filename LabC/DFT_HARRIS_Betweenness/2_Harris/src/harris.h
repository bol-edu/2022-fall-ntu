#include "ap_int.h"
// #define CPU
#define PARALLEL 32 // [IMPORTANT] the number of parallel should be factor of 128
#define CLOG2    2
#define SYN

typedef ap_uint<8> DTYPE;

#define I_LEN 12
#define G_LEN 16
#define GB_LEN 16
#define R_LEN 20


void harris(DTYPE* imgSrc, DTYPE* imgDst, double alpha);
void harris_cpu(DTYPE* imgSrc, DTYPE* imgDst, double alpha);
