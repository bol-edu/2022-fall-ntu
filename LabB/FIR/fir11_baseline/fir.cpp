/*
	Filename: fir.cpp
		FIR lab wirtten for WES/CSE237C class at UCSD.

	INPUT:
		x: signal (chirp)

	OUTPUT:
		y: filtered output

*/

#include "fir.h"

void fir (
  data_t *y,
  data_t x
  )
{
	coef_t c[N] = {53, 0, -91, 0, 313, 500, 313, 0, -91, 0,53};
	// Write your code here
	static acc_t reg[N] = {0};

	shift_reg: for(int i = N-1; i > 0; i--){
		reg[i] = reg[i-1];
	}
	reg[0] = x;
	*y = 0;
	forward: for(int i = 0; i < N; i++){
		*y += c[i] * reg[i];
	}
}


