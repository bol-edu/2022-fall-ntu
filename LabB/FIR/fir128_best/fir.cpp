/*
	Filename: fir.cpp
		FIR lab wirtten for WES/CSE237C class at UCSD.
		Match filter
	INPUT:
		x: signal (chirp)

	OUTPUT:
		y: filtered output

*/

#include "fir.h"
#include "ap_fixed.h"

typedef ap_int<5> mytype;
typedef ap_int<8> regbit;

void fir (
  data_t *y,
  data_t x
  )
{



	mytype c[N] = {10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 8, 3, -3, -8, -11, -11, -10, -10, -10, -10, -10, -10, -10, -10, -11, -11, -8, -3, 3, 8, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10};
	
	// Write your cSode here
//	static acc_t reg[N] = {0};
	static regbit reg[N] = {0};
#pragma HLS ARRAY_RESHAPE variable=reg cyclic factor=2
#pragma HLS ARRAY_RESHAPE variable=c cyclic factor=2
	*y = 0;
	int sum = 0;
	FIR: for(int i = N-1; i > 0; i--){
#pragma HLS UNROLL
#pragma HLS PIPELINE II=1
		reg[i] = reg[i-1];
		sum += c[i] * reg[i];
	}
	reg[0] = (regbit)x;
	sum += (c[0] * reg[0]);

	*y = sum;

}


