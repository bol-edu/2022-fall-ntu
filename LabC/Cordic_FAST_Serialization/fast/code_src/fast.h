#include <ap_int.h>

// typedef int DTYPE;
#define N 771

typedef ap_int<9> DTYPE;

void fast_accel(DTYPE* img_in, int threshold, DTYPE* img_out, int rows, int cols);
