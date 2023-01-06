/*
The bit_reverse part of FFT.
INPUT:
	In[]:

OUTPUT:
	Out[]:
 */

#include "bit_reverse.h"
#include <stdio.h>

void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE]){
#pragma HLS DEPENDENCE dependent=false type=inter variable=X_I
#pragma HLS DEPENDENCE dependent=false type=inter variable=X_R
	int i;
	unsigned int idx, r_idx;
	DTYPE tmp;
	For_Loop: for (i=0; i<R_N; i++) {
		idx = reversible_idx[i];
		r_idx = reversed_idx[i];

		tmp = X_R[idx];
		X_R[idx] = X_R[r_idx];
		X_R[r_idx] = tmp;

		tmp = X_I[idx];
		X_I[idx] = X_I[r_idx];
		X_I[r_idx] = tmp;
	}

//	int i, bit_i, reversed_i;
//	DTYPE tmp0, tmp1;
//
//	For_Loop: for (i=0; i<SIZE; i++) {
//		reversed_i = 0;
//		Bit_Reversal_Loop: for (bit_i=0; bit_i<M; bit_i++) {
//			reversed_i <<= 1;
//			reversed_i |= (i >> bit_i) & 1;
//		}
//
//		if (reversed_i > i) {
//			tmp0 = X_R[i];
//			tmp1 = X_R[reversed_i];
//			X_R[i] = tmp1;
//			X_R[reversed_i] = tmp0;
//
//			tmp0 = X_I[i];
//			tmp1 = X_I[reversed_i];
//			X_I[i] = tmp1;
//			X_I[reversed_i] = tmp0;
//		}
//	}
}
