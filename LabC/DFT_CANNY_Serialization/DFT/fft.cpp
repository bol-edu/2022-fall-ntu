/*
This is traditional 2-radix DIT FFT algorithm implementation.
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal

OUTPUT:
	Out_R, Out_I[]: Real and Imag parts of Complex signal
*/
#include "fft.h"

template<int stage>
void fft_stage(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);
void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);




void dft(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]) {
#pragma HLS INTERFACE mode=axis register_mode=both port=X_R register
#pragma HLS INTERFACE mode=axis register_mode=both port=X_I register
//#pragma HLS INTERFACE mode=ap_memory port=X_R
//#pragma HLS INTERFACE mode=ap_memory port=X_I
#pragma HLS INTERFACE mode=ap_memory port=OUT_R
#pragma HLS INTERFACE mode=ap_memory port=OUT_I

	DTYPE buf0_R[SIZE], buf0_I[SIZE];
	DTYPE buf1_R[SIZE], buf1_I[SIZE];
#pragma HLS ARRAY_PARTITION variable=buf0_R type=cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=buf0_I type=cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=buf1_R type=cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=buf1_I type=cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=OUT_R type=cyclic factor=4
#pragma HLS ARRAY_PARTITION variable=OUT_I type=cyclic factor=4

	bit_reverse   (X_R, X_I, buf0_R, buf0_I);
	fft_stage<1>  (buf0_R, buf0_I, buf1_R, buf1_I);
	fft_stage<2>  (buf1_R, buf1_I, buf0_R, buf0_I);
	fft_stage<3>  (buf0_R, buf0_I, buf1_R, buf1_I);
	fft_stage<4>  (buf1_R, buf1_I, buf0_R, buf0_I);
	fft_stage<5>  (buf0_R, buf0_I, buf1_R, buf1_I);
	fft_stage<6>  (buf1_R, buf1_I, buf0_R, buf0_I);
	fft_stage<7>  (buf0_R, buf0_I, buf1_R, buf1_I);
	fft_stage<8>  (buf1_R, buf1_I, buf0_R, buf0_I);
	fft_stage<9>  (buf0_R, buf0_I, buf1_R, buf1_I);
	fft_stage<10> (buf1_R, buf1_I, OUT_R, OUT_I);
}

void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]){
#pragma HLS DEPENDENCE dependent=false type=inter variable=X_I
#pragma HLS DEPENDENCE dependent=false type=inter variable=X_R
	All_Loop: for (unsigned short i = 0; i < SIZE; i++) {
		unsigned short ri = 0;
		Reversal_Loop: for (unsigned short j = 0; j < M; j++) {
			ri = (ri << 1) | ((i >> j) & 1);
		}
		OUT_R[ri] = X_R[i];
		OUT_I[ri] = X_I[i];
	}
}

template<int stage>
void fft_stage(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=OUT_R
#pragma HLS DEPENDENCE dependent=false type=inter variable=OUT_I
	const unsigned short numPts = 1 << stage;
	const unsigned short numBF = numPts >> 1;

	DFT_Loop: for (unsigned short i = 0; i < SIZE2; i++) {
#pragma HLS UNROLL factor=4
#pragma HLS PIPELINE
		unsigned short wi = i % (1 << (stage-1));
		DTYPE c = W_real[wi << (M-stage)];
		DTYPE s = W_imag[wi << (M-stage)];
		unsigned short k = i + (i / (1 << (stage-1)) * (1 << (stage-1)));
		unsigned short k_lower = k + numBF;

		DTYPE R = X_R[k];
		DTYPE I = X_I[k];
		DTYPE R_lower = X_R[k_lower];
		DTYPE I_lower = X_I[k_lower];

		DTYPE t_R = R_lower*c - I_lower*s;
		DTYPE t_I = I_lower*c + R_lower*s;

		OUT_R[k_lower] = R - t_R;
		OUT_I[k_lower] = I - t_I;
		OUT_R[k] = R + t_R;
		OUT_I[k] = I + t_I;
	}
}
