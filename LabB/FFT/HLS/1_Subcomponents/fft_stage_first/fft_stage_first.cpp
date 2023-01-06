#include"fft_stage_first.h"
/*
 * Function: fft_stage_first_op calculates the first stage of the FFT.
 * 
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal

OUTPUT:
	OUT_R, OUT_I[]: Real and Imag parts of Complex signal
 */

//=======================BEGIN: FFT fft_stage_first_op =========================
void fft_stage_first(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]) {
	DTYPE c, s;
	DTYPE t_R, t_I;

	int i, j, j_lower, DFTpts, numBF;
	DFTpts = 2;
	numBF = DFTpts >> 1;
	BF_Loop: for (i=0; i<numBF; i++) {
		c = W_real[1024*i/DFTpts];
		s = W_imag[1024*i/DFTpts];

		DFT_Loop: for (j=0; j<SIZE; j+=DFTpts) {
			j_lower = j + numBF;
			t_R = X_R[j_lower]*c - X_I[j_lower]*s;
			t_I = X_I[j_lower]*c + X_R[j_lower]*s;

			OUT_R[j_lower] = X_R[j] - t_R;
			OUT_I[j_lower] = X_I[j] - t_I;
			OUT_R[j] = X_R[j] + t_R;
			OUT_I[j] = X_I[j] + t_I;
		}
	}
}
//=======================END: FFT fft_stage_first_op =========================

