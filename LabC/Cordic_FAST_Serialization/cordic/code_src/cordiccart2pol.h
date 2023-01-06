#include <ap_fixed.h>

#ifndef CORDICCART2POL_H
#define CORDICCART2POL_H

#define NO_ITER 11

typedef int   coef_t;
typedef float acc_t;

typedef ap_fixed<15, 3, AP_RND_MIN_INF> data_t;

void cordiccart2pol(data_t x, data_t y, data_t * r,  data_t * theta);

#endif
