/*
This is traditional 2-radix DIT FFT algorithm implementation.
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal

OUTPUT:
	Out_R, Out_I[]: Real and Imag parts of Complex signal
*/
#include "fft.h"
#include <string.h>
#define FACTOR 4

template<int stage, int factor=FACTOR>
void fft_stage_t(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);
void fft_stage(DTYPE X_R[SIZE], DTYPE X_I[SIZE], int stage, DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);
void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);
void fft_exec(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]);

void fft(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]) {
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=m_axi bundle=input_0 port=X_I offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=input_1 port=X_R offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=output_0 port=OUT_I offset=slave
#pragma HLS INTERFACE mode=m_axi bundle=output_1 port=OUT_R offset=slave
#pragma HLS INTERFACE mode=s_axilite port=X_R
#pragma HLS INTERFACE mode=s_axilite port=X_I
#pragma HLS INTERFACE mode=s_axilite port=OUT_R
#pragma HLS INTERFACE mode=s_axilite port=OUT_I

	DTYPE X_R_i[SIZE], X_I_i[SIZE];
	DTYPE OUT_R_o[SIZE], OUT_I_o[SIZE];

	memcpy(X_R_i, X_R, SIZE*sizeof(DTYPE));
	memcpy(X_I_i, X_I, SIZE*sizeof(DTYPE));
	fft_exec(X_R_i, X_I_i, OUT_R_o, OUT_I_o);
	memcpy(OUT_R, OUT_R_o, SIZE*sizeof(DTYPE));
	memcpy(OUT_I, OUT_I_o, SIZE*sizeof(DTYPE));
}

void fft_exec(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]) {
	const unsigned short factor = FACTOR;
	DTYPE Stage0_R[SIZE],  Stage0_I[SIZE];
	DTYPE Stage1_R[SIZE],  Stage1_I[SIZE];
	DTYPE Stage2_R[SIZE],  Stage2_I[SIZE];
	DTYPE Stage3_R[SIZE],  Stage3_I[SIZE];
	DTYPE Stage4_R[SIZE],  Stage4_I[SIZE];
	DTYPE Stage5_R[SIZE],  Stage5_I[SIZE];
	DTYPE Stage6_R[SIZE],  Stage6_I[SIZE];
	DTYPE Stage7_R[SIZE],  Stage7_I[SIZE];
	DTYPE Stage8_R[SIZE],  Stage8_I[SIZE];
	DTYPE Stage9_R[SIZE],  Stage9_I[SIZE];
#pragma HLS ARRAY_PARTITION variable=Stage0_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage0_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage1_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage1_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage2_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage2_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage3_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage3_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage4_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage4_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage5_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage5_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage6_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage6_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage7_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage7_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage8_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage8_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage9_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=Stage9_I type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=OUT_R type=cyclic factor=factor
#pragma HLS ARRAY_PARTITION variable=OUT_I type=cyclic factor=factor
	bit_reverse(X_R, X_I, Stage0_R, Stage0_I);
	fft_stage_t<1> (Stage0_R, Stage0_I, Stage1_R, Stage1_I);
	fft_stage_t<2> (Stage1_R, Stage1_I, Stage2_R, Stage2_I);
	fft_stage_t<3> (Stage2_R, Stage2_I, Stage3_R, Stage3_I);
	fft_stage_t<4> (Stage3_R, Stage3_I, Stage4_R, Stage4_I);
	fft_stage_t<5> (Stage4_R, Stage4_I, Stage5_R, Stage5_I);
	fft_stage_t<6> (Stage5_R, Stage5_I, Stage6_R, Stage6_I);
	fft_stage_t<7> (Stage6_R, Stage6_I, Stage7_R, Stage7_I);
	fft_stage_t<8> (Stage7_R, Stage7_I, Stage8_R, Stage8_I);
	fft_stage_t<9> (Stage8_R, Stage8_I, Stage9_R, Stage9_I);
	fft_stage_t<10>(Stage9_R, Stage9_I, OUT_R, OUT_I);
}

void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]){
#pragma HLS DEPENDENCE dependent=false type=inter variable=X_I
#pragma HLS DEPENDENCE dependent=false type=inter variable=X_R
	All_Loop: for (unsigned short i = 0; i < SIZE; i++) {
		unsigned short ri = 0;
		Reversal_Loop: for (unsigned short j = 0; j < M; j++) {
			ri = (ri << 1) | ((i >> j) & 1);
		}
		OUT_R[i] = X_R[ri];
		OUT_I[i] = X_I[ri];
	}
}

template<int stage, int factor>
void fft_stage_t(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]) {
#pragma HLS DEPENDENCE dependent=false type=inter variable=OUT_R
#pragma HLS DEPENDENCE dependent=false type=inter variable=OUT_I
	const unsigned short numPts = 1 << stage;
	const unsigned short numBF = numPts >> 1;
	const unsigned short wMask = (1 << (stage-1))-1;
	const unsigned short kMask = ~wMask;

	DFT_Loop: for (unsigned short i = 0; i < SIZE2; i++) {
#pragma HLS UNROLL factor=factor
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
