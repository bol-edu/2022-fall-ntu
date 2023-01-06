#ifndef CORDICCART2POL_H
#define CORDICCART2POL_H
#define SYNTHESIS
#include <ap_fixed.h>
#include<iostream>
using namespace std;

#define DEBUG 0
//#define SYNTHESIS // uncomment me for synthesis; comment me for simulation

typedef ap_fixed<8,3> data_t; // Data type of a value in the LUT
typedef ap_fixed<8,3> data_theta;
#define W			8  // Total size of fixed-point representation
#define I			2  // Number of integer bits of fixed-point representation
#define FRACTIONAL_BITS	W-I  // Number of fractional bits
#define LUT_SIZE	(1 << (W << 1)) // Size of the LUT = 2^(2*W)

extern data_t my_LUT_r[LUT_SIZE];
extern data_theta my_LUT_th[LUT_SIZE];

void cordiccart2pol(data_t x, data_t y, data_t * r,  data_theta * theta);
void init_cart2pol_LUTs(data_t my_LUT_th[LUT_SIZE], data_t my_LUT_r[LUT_SIZE]);

#endif // CORDICCART2POL_H
