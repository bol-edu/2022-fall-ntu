#ifndef CORDICCART2POL_H
#define CORDICCART2POL_H

#define cordic_Baseline

#define NO_ITER 32

typedef int   coef_t;
typedef float data_t;
typedef float acc_t;

void cordiccart2pol(data_t x, data_t y, data_t &r,  data_t &theta);

#endif
