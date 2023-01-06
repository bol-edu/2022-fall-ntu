#include "polar_code.hpp"

struct xor_rep {
	float r_xor, r_rep;
};

float minsum(float a, float b);
float MIN(float x, float y);
float ABS(float x);
xor_rep PE(float left_up, float left_down, float right_up, float right_down);

void polar_decode(float src[BIT_BUF_SIZE], Byte dst[BUF_SIZE])
{
	const int N = 64;
	const int N_div2 = 32;
	const int K = 32;
	const int n = 6; // log2(N)
	const int num_load = K/8;
	const float inf = 255; // 1 / 0.f;
	const int max_iter = 20;

	int reliability_sequence[N] = {0, 1, 2, 4, 8, 16, 32, 3, 5, 9, 6, 17, 10, 18, 12, 33, 20, 34, 24, 36, 7, 11, 40, 19, 13, 48, 14, 21, 35, 26, 37, 25, 22, 38, 41, 28, 42, 49, 44, 50, 15, 52, 23, 56, 27, 39, 29, 43, 30, 45, 51, 46, 53, 54, 57, 58, 60, 31, 47, 55, 59, 61, 62, 63};
	int src_idx = 0;
	int dst_idx = 0;
	for (int round = 0; round < BIT_BUF_SIZE; round += N) {
		float L_rx_llr[N] = {0};
		float R_tx_llr[N] = {0};
		float shared_memory_0[N] = {0}, shared_memory_1[N] = {0}, shared_memory_2[N] = {0}, shared_memory_3[N] = {0}, shared_memory_4[N] = {0}, shared_memory_5[N] = {0}, shared_memory_6[N] = {0};

#pragma HLS ARRAY_PARTITION variable=L_rx_llr complete
#pragma HLS ARRAY_PARTITION variable=R_tx_llr complete
#pragma HLS ARRAY_PARTITION variable=shared_memory_0 complete
#pragma HLS ARRAY_PARTITION variable=shared_memory_1 complete
#pragma HLS ARRAY_PARTITION variable=shared_memory_2 complete
#pragma HLS ARRAY_PARTITION variable=shared_memory_3 complete
#pragma HLS ARRAY_PARTITION variable=shared_memory_4 complete
#pragma HLS ARRAY_PARTITION variable=shared_memory_5 complete
#pragma HLS ARRAY_PARTITION variable=shared_memory_6 complete

		// initialization
		for(int i = 0; i < N; i++){
#pragma HLS PIPELINE
			L_rx_llr[i] = src[src_idx++];
		}
		for(int i = 0; i < (N-K); i++){
#pragma HLS UNROLL
			R_tx_llr[reliability_sequence[i]] = inf;
		}

		// Decoding
		for(int iter = 0; iter < max_iter; iter++){
		// R-Propagation
			for(int depth = 0; depth < 2*n; depth++){
#pragma HLS PIPELINE off
				float left_up[N_div2], right_up[N_div2], left_down[N_div2], right_down[N_div2], result_xor[N_div2], result_rep[N_div2];
#pragma HLS ARRAY_PARTITION variable=left_up complete
#pragma HLS ARRAY_PARTITION variable=right_up complete
#pragma HLS ARRAY_PARTITION variable=left_down complete
#pragma HLS ARRAY_PARTITION variable=right_down complete
#pragma HLS ARRAY_PARTITION variable=result_xor complete
#pragma HLS ARRAY_PARTITION variable=result_rep complete
				switch(depth){
					case 0:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
#pragma HLS UNROLL
							left_up[pe_num]    = R_tx_llr[(pe_num << 1)];
							left_down[pe_num]  = R_tx_llr[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_1[(pe_num << 1)];
							right_down[pe_num] = shared_memory_1[(pe_num << 1)+1];
						}
						break;
					case 1:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_1[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_1[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_2[(pe_num << 1)];
							right_down[pe_num] = shared_memory_2[(pe_num << 1)+1];
						}
						break;
					case 2:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_2[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_2[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_3[(pe_num << 1)];
							right_down[pe_num] = shared_memory_3[(pe_num << 1)+1];
						}
						break;
					case 3:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_3[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_3[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_4[(pe_num << 1)];
							right_down[pe_num] = shared_memory_4[(pe_num << 1)+1];
						}
						break;
					case 4:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_4[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_4[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_5[(pe_num << 1)];
							right_down[pe_num] = shared_memory_5[(pe_num << 1)+1];
						}
						break;
					case 5:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_5[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_5[(pe_num << 1)+1];
							right_up[pe_num]   = L_rx_llr[(pe_num << 1)];
							right_down[pe_num] = L_rx_llr[(pe_num << 1)+1];
						}
						break;
					case 11:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_1[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_1[(pe_num << 1)+1];
							right_up[pe_num]   = R_tx_llr[(pe_num << 1)];
							right_down[pe_num] = R_tx_llr[(pe_num << 1)+1];
						}
						break;
					case 10:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_2[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_2[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_1[(pe_num << 1)];
							right_down[pe_num] = shared_memory_1[(pe_num << 1)+1];
						}
						break;
					case 9:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_3[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_3[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_2[(pe_num << 1)];
							right_down[pe_num] = shared_memory_2[(pe_num << 1)+1];
						}
						break;
					case 8:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_4[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_4[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_3[(pe_num << 1)];
							right_down[pe_num] = shared_memory_3[(pe_num << 1)+1];
						}
						break;
					case 7:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = shared_memory_5[(pe_num << 1)];
							left_down[pe_num]  = shared_memory_5[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_4[(pe_num << 1)];
							right_down[pe_num] = shared_memory_4[(pe_num << 1)+1];
						}
						break;
					case 6:
						for(int pe_num=0; pe_num < N_div2; pe_num++){
							// initial value
#pragma HLS UNROLL
							left_up[pe_num]    = L_rx_llr[(pe_num << 1)];
							left_down[pe_num]  = L_rx_llr[(pe_num << 1)+1];
							right_up[pe_num]   = shared_memory_5[(pe_num << 1)];
							right_down[pe_num] = shared_memory_5[(pe_num << 1)+1];
						}
						break;
				}
				for(int pe_num = 0; pe_num < N_div2; pe_num++){
#pragma HLS UNROLL factor=32
//#pragma HLS PIPELINE
					xor_rep result;
					float input_u1, input_u2, input_d1, input_d2;
					// compute value
					result = PE(right_up[pe_num], right_down[pe_num], left_up[pe_num], left_down[pe_num]);
					result_xor[pe_num] = result.r_xor;
					result_rep[pe_num] = result.r_rep;
				}
				switch(depth){
					case 0 :
						shared_memory_1[0]=result_xor[0];
						shared_memory_1[32]=result_rep[0];
						shared_memory_1[1]=result_xor[1];
						shared_memory_1[33]=result_rep[1];
						shared_memory_1[2]=result_xor[2];
						shared_memory_1[34]=result_rep[2];
						shared_memory_1[3]=result_xor[3];
						shared_memory_1[35]=result_rep[3];
						shared_memory_1[4]=result_xor[4];
						shared_memory_1[36]=result_rep[4];
						shared_memory_1[5]=result_xor[5];
						shared_memory_1[37]=result_rep[5];
						shared_memory_1[6]=result_xor[6];
						shared_memory_1[38]=result_rep[6];
						shared_memory_1[7]=result_xor[7];
						shared_memory_1[39]=result_rep[7];
						shared_memory_1[8]=result_xor[8];
						shared_memory_1[40]=result_rep[8];
						shared_memory_1[9]=result_xor[9];
						shared_memory_1[41]=result_rep[9];
						shared_memory_1[10]=result_xor[10];
						shared_memory_1[42]=result_rep[10];
						shared_memory_1[11]=result_xor[11];
						shared_memory_1[43]=result_rep[11];
						shared_memory_1[12]=result_xor[12];
						shared_memory_1[44]=result_rep[12];
						shared_memory_1[13]=result_xor[13];
						shared_memory_1[45]=result_rep[13];
						shared_memory_1[14]=result_xor[14];
						shared_memory_1[46]=result_rep[14];
						shared_memory_1[15]=result_xor[15];
						shared_memory_1[47]=result_rep[15];
						shared_memory_1[16]=result_xor[16];
						shared_memory_1[48]=result_rep[16];
						shared_memory_1[17]=result_xor[17];
						shared_memory_1[49]=result_rep[17];
						shared_memory_1[18]=result_xor[18];
						shared_memory_1[50]=result_rep[18];
						shared_memory_1[19]=result_xor[19];
						shared_memory_1[51]=result_rep[19];
						shared_memory_1[20]=result_xor[20];
						shared_memory_1[52]=result_rep[20];
						shared_memory_1[21]=result_xor[21];
						shared_memory_1[53]=result_rep[21];
						shared_memory_1[22]=result_xor[22];
						shared_memory_1[54]=result_rep[22];
						shared_memory_1[23]=result_xor[23];
						shared_memory_1[55]=result_rep[23];
						shared_memory_1[24]=result_xor[24];
						shared_memory_1[56]=result_rep[24];
						shared_memory_1[25]=result_xor[25];
						shared_memory_1[57]=result_rep[25];
						shared_memory_1[26]=result_xor[26];
						shared_memory_1[58]=result_rep[26];
						shared_memory_1[27]=result_xor[27];
						shared_memory_1[59]=result_rep[27];
						shared_memory_1[28]=result_xor[28];
						shared_memory_1[60]=result_rep[28];
						shared_memory_1[29]=result_xor[29];
						shared_memory_1[61]=result_rep[29];
						shared_memory_1[30]=result_xor[30];
						shared_memory_1[62]=result_rep[30];
						shared_memory_1[31]=result_xor[31];
						shared_memory_1[63]=result_rep[31];
						break;
					case 1:
						shared_memory_2[0]=result_xor[0];
						shared_memory_2[16]=result_rep[0];
						shared_memory_2[1]=result_xor[1];
						shared_memory_2[17]=result_rep[1];
						shared_memory_2[2]=result_xor[2];
						shared_memory_2[18]=result_rep[2];
						shared_memory_2[3]=result_xor[3];
						shared_memory_2[19]=result_rep[3];
						shared_memory_2[4]=result_xor[4];
						shared_memory_2[20]=result_rep[4];
						shared_memory_2[5]=result_xor[5];
						shared_memory_2[21]=result_rep[5];
						shared_memory_2[6]=result_xor[6];
						shared_memory_2[22]=result_rep[6];
						shared_memory_2[7]=result_xor[7];
						shared_memory_2[23]=result_rep[7];
						shared_memory_2[8]=result_xor[8];
						shared_memory_2[24]=result_rep[8];
						shared_memory_2[9]=result_xor[9];
						shared_memory_2[25]=result_rep[9];
						shared_memory_2[10]=result_xor[10];
						shared_memory_2[26]=result_rep[10];
						shared_memory_2[11]=result_xor[11];
						shared_memory_2[27]=result_rep[11];
						shared_memory_2[12]=result_xor[12];
						shared_memory_2[28]=result_rep[12];
						shared_memory_2[13]=result_xor[13];
						shared_memory_2[29]=result_rep[13];
						shared_memory_2[14]=result_xor[14];
						shared_memory_2[30]=result_rep[14];
						shared_memory_2[15]=result_xor[15];
						shared_memory_2[31]=result_rep[15];
						shared_memory_2[32]=result_xor[16];
						shared_memory_2[48]=result_rep[16];
						shared_memory_2[33]=result_xor[17];
						shared_memory_2[49]=result_rep[17];
						shared_memory_2[34]=result_xor[18];
						shared_memory_2[50]=result_rep[18];
						shared_memory_2[35]=result_xor[19];
						shared_memory_2[51]=result_rep[19];
						shared_memory_2[36]=result_xor[20];
						shared_memory_2[52]=result_rep[20];
						shared_memory_2[37]=result_xor[21];
						shared_memory_2[53]=result_rep[21];
						shared_memory_2[38]=result_xor[22];
						shared_memory_2[54]=result_rep[22];
						shared_memory_2[39]=result_xor[23];
						shared_memory_2[55]=result_rep[23];
						shared_memory_2[40]=result_xor[24];
						shared_memory_2[56]=result_rep[24];
						shared_memory_2[41]=result_xor[25];
						shared_memory_2[57]=result_rep[25];
						shared_memory_2[42]=result_xor[26];
						shared_memory_2[58]=result_rep[26];
						shared_memory_2[43]=result_xor[27];
						shared_memory_2[59]=result_rep[27];
						shared_memory_2[44]=result_xor[28];
						shared_memory_2[60]=result_rep[28];
						shared_memory_2[45]=result_xor[29];
						shared_memory_2[61]=result_rep[29];
						shared_memory_2[46]=result_xor[30];
						shared_memory_2[62]=result_rep[30];
						shared_memory_2[47]=result_xor[31];
						shared_memory_2[63]=result_rep[31];
						break;
					case 2:
						shared_memory_3[0]=result_xor[0];
						shared_memory_3[8]=result_rep[0];
						shared_memory_3[1]=result_xor[1];
						shared_memory_3[9]=result_rep[1];
						shared_memory_3[2]=result_xor[2];
						shared_memory_3[10]=result_rep[2];
						shared_memory_3[3]=result_xor[3];
						shared_memory_3[11]=result_rep[3];
						shared_memory_3[4]=result_xor[4];
						shared_memory_3[12]=result_rep[4];
						shared_memory_3[5]=result_xor[5];
						shared_memory_3[13]=result_rep[5];
						shared_memory_3[6]=result_xor[6];
						shared_memory_3[14]=result_rep[6];
						shared_memory_3[7]=result_xor[7];
						shared_memory_3[15]=result_rep[7];
						shared_memory_3[16]=result_xor[8];
						shared_memory_3[24]=result_rep[8];
						shared_memory_3[17]=result_xor[9];
						shared_memory_3[25]=result_rep[9];
						shared_memory_3[18]=result_xor[10];
						shared_memory_3[26]=result_rep[10];
						shared_memory_3[19]=result_xor[11];
						shared_memory_3[27]=result_rep[11];
						shared_memory_3[20]=result_xor[12];
						shared_memory_3[28]=result_rep[12];
						shared_memory_3[21]=result_xor[13];
						shared_memory_3[29]=result_rep[13];
						shared_memory_3[22]=result_xor[14];
						shared_memory_3[30]=result_rep[14];
						shared_memory_3[23]=result_xor[15];
						shared_memory_3[31]=result_rep[15];
						shared_memory_3[32]=result_xor[16];
						shared_memory_3[40]=result_rep[16];
						shared_memory_3[33]=result_xor[17];
						shared_memory_3[41]=result_rep[17];
						shared_memory_3[34]=result_xor[18];
						shared_memory_3[42]=result_rep[18];
						shared_memory_3[35]=result_xor[19];
						shared_memory_3[43]=result_rep[19];
						shared_memory_3[36]=result_xor[20];
						shared_memory_3[44]=result_rep[20];
						shared_memory_3[37]=result_xor[21];
						shared_memory_3[45]=result_rep[21];
						shared_memory_3[38]=result_xor[22];
						shared_memory_3[46]=result_rep[22];
						shared_memory_3[39]=result_xor[23];
						shared_memory_3[47]=result_rep[23];
						shared_memory_3[48]=result_xor[24];
						shared_memory_3[56]=result_rep[24];
						shared_memory_3[49]=result_xor[25];
						shared_memory_3[57]=result_rep[25];
						shared_memory_3[50]=result_xor[26];
						shared_memory_3[58]=result_rep[26];
						shared_memory_3[51]=result_xor[27];
						shared_memory_3[59]=result_rep[27];
						shared_memory_3[52]=result_xor[28];
						shared_memory_3[60]=result_rep[28];
						shared_memory_3[53]=result_xor[29];
						shared_memory_3[61]=result_rep[29];
						shared_memory_3[54]=result_xor[30];
						shared_memory_3[62]=result_rep[30];
						shared_memory_3[55]=result_xor[31];
						shared_memory_3[63]=result_rep[31];
						break;
					case 3:
						shared_memory_4[0]=result_xor[0];
						shared_memory_4[4]=result_rep[0];
						shared_memory_4[1]=result_xor[1];
						shared_memory_4[5]=result_rep[1];
						shared_memory_4[2]=result_xor[2];
						shared_memory_4[6]=result_rep[2];
						shared_memory_4[3]=result_xor[3];
						shared_memory_4[7]=result_rep[3];
						shared_memory_4[8]=result_xor[4];
						shared_memory_4[12]=result_rep[4];
						shared_memory_4[9]=result_xor[5];
						shared_memory_4[13]=result_rep[5];
						shared_memory_4[10]=result_xor[6];
						shared_memory_4[14]=result_rep[6];
						shared_memory_4[11]=result_xor[7];
						shared_memory_4[15]=result_rep[7];
						shared_memory_4[16]=result_xor[8];
						shared_memory_4[20]=result_rep[8];
						shared_memory_4[17]=result_xor[9];
						shared_memory_4[21]=result_rep[9];
						shared_memory_4[18]=result_xor[10];
						shared_memory_4[22]=result_rep[10];
						shared_memory_4[19]=result_xor[11];
						shared_memory_4[23]=result_rep[11];
						shared_memory_4[24]=result_xor[12];
						shared_memory_4[28]=result_rep[12];
						shared_memory_4[25]=result_xor[13];
						shared_memory_4[29]=result_rep[13];
						shared_memory_4[26]=result_xor[14];
						shared_memory_4[30]=result_rep[14];
						shared_memory_4[27]=result_xor[15];
						shared_memory_4[31]=result_rep[15];
						shared_memory_4[32]=result_xor[16];
						shared_memory_4[36]=result_rep[16];
						shared_memory_4[33]=result_xor[17];
						shared_memory_4[37]=result_rep[17];
						shared_memory_4[34]=result_xor[18];
						shared_memory_4[38]=result_rep[18];
						shared_memory_4[35]=result_xor[19];
						shared_memory_4[39]=result_rep[19];
						shared_memory_4[40]=result_xor[20];
						shared_memory_4[44]=result_rep[20];
						shared_memory_4[41]=result_xor[21];
						shared_memory_4[45]=result_rep[21];
						shared_memory_4[42]=result_xor[22];
						shared_memory_4[46]=result_rep[22];
						shared_memory_4[43]=result_xor[23];
						shared_memory_4[47]=result_rep[23];
						shared_memory_4[48]=result_xor[24];
						shared_memory_4[52]=result_rep[24];
						shared_memory_4[49]=result_xor[25];
						shared_memory_4[53]=result_rep[25];
						shared_memory_4[50]=result_xor[26];
						shared_memory_4[54]=result_rep[26];
						shared_memory_4[51]=result_xor[27];
						shared_memory_4[55]=result_rep[27];
						shared_memory_4[56]=result_xor[28];
						shared_memory_4[60]=result_rep[28];
						shared_memory_4[57]=result_xor[29];
						shared_memory_4[61]=result_rep[29];
						shared_memory_4[58]=result_xor[30];
						shared_memory_4[62]=result_rep[30];
						shared_memory_4[59]=result_xor[31];
						shared_memory_4[63]=result_rep[31];
						break;
					case 4:
						shared_memory_5[0]=result_xor[0];
						shared_memory_5[2]=result_rep[0];
						shared_memory_5[1]=result_xor[1];
						shared_memory_5[3]=result_rep[1];
						shared_memory_5[4]=result_xor[2];
						shared_memory_5[6]=result_rep[2];
						shared_memory_5[5]=result_xor[3];
						shared_memory_5[7]=result_rep[3];
						shared_memory_5[8]=result_xor[4];
						shared_memory_5[10]=result_rep[4];
						shared_memory_5[9]=result_xor[5];
						shared_memory_5[11]=result_rep[5];
						shared_memory_5[12]=result_xor[6];
						shared_memory_5[14]=result_rep[6];
						shared_memory_5[13]=result_xor[7];
						shared_memory_5[15]=result_rep[7];
						shared_memory_5[16]=result_xor[8];
						shared_memory_5[18]=result_rep[8];
						shared_memory_5[17]=result_xor[9];
						shared_memory_5[19]=result_rep[9];
						shared_memory_5[20]=result_xor[10];
						shared_memory_5[22]=result_rep[10];
						shared_memory_5[21]=result_xor[11];
						shared_memory_5[23]=result_rep[11];
						shared_memory_5[24]=result_xor[12];
						shared_memory_5[26]=result_rep[12];
						shared_memory_5[25]=result_xor[13];
						shared_memory_5[27]=result_rep[13];
						shared_memory_5[28]=result_xor[14];
						shared_memory_5[30]=result_rep[14];
						shared_memory_5[29]=result_xor[15];
						shared_memory_5[31]=result_rep[15];
						shared_memory_5[32]=result_xor[16];
						shared_memory_5[34]=result_rep[16];
						shared_memory_5[33]=result_xor[17];
						shared_memory_5[35]=result_rep[17];
						shared_memory_5[36]=result_xor[18];
						shared_memory_5[38]=result_rep[18];
						shared_memory_5[37]=result_xor[19];
						shared_memory_5[39]=result_rep[19];
						shared_memory_5[40]=result_xor[20];
						shared_memory_5[42]=result_rep[20];
						shared_memory_5[41]=result_xor[21];
						shared_memory_5[43]=result_rep[21];
						shared_memory_5[44]=result_xor[22];
						shared_memory_5[46]=result_rep[22];
						shared_memory_5[45]=result_xor[23];
						shared_memory_5[47]=result_rep[23];
						shared_memory_5[48]=result_xor[24];
						shared_memory_5[50]=result_rep[24];
						shared_memory_5[49]=result_xor[25];
						shared_memory_5[51]=result_rep[25];
						shared_memory_5[52]=result_xor[26];
						shared_memory_5[54]=result_rep[26];
						shared_memory_5[53]=result_xor[27];
						shared_memory_5[55]=result_rep[27];
						shared_memory_5[56]=result_xor[28];
						shared_memory_5[58]=result_rep[28];
						shared_memory_5[57]=result_xor[29];
						shared_memory_5[59]=result_rep[29];
						shared_memory_5[60]=result_xor[30];
						shared_memory_5[62]=result_rep[30];
						shared_memory_5[61]=result_xor[31];
						shared_memory_5[63]=result_rep[31];
						break;
					case 5:
						shared_memory_6[0]=result_xor[0];
						shared_memory_6[1]=result_rep[0];
						shared_memory_6[2]=result_xor[1];
						shared_memory_6[3]=result_rep[1];
						shared_memory_6[4]=result_xor[2];
						shared_memory_6[5]=result_rep[2];
						shared_memory_6[6]=result_xor[3];
						shared_memory_6[7]=result_rep[3];
						shared_memory_6[8]=result_xor[4];
						shared_memory_6[9]=result_rep[4];
						shared_memory_6[10]=result_xor[5];
						shared_memory_6[11]=result_rep[5];
						shared_memory_6[12]=result_xor[6];
						shared_memory_6[13]=result_rep[6];
						shared_memory_6[14]=result_xor[7];
						shared_memory_6[15]=result_rep[7];
						shared_memory_6[16]=result_xor[8];
						shared_memory_6[17]=result_rep[8];
						shared_memory_6[18]=result_xor[9];
						shared_memory_6[19]=result_rep[9];
						shared_memory_6[20]=result_xor[10];
						shared_memory_6[21]=result_rep[10];
						shared_memory_6[22]=result_xor[11];
						shared_memory_6[23]=result_rep[11];
						shared_memory_6[24]=result_xor[12];
						shared_memory_6[25]=result_rep[12];
						shared_memory_6[26]=result_xor[13];
						shared_memory_6[27]=result_rep[13];
						shared_memory_6[28]=result_xor[14];
						shared_memory_6[29]=result_rep[14];
						shared_memory_6[30]=result_xor[15];
						shared_memory_6[31]=result_rep[15];
						shared_memory_6[32]=result_xor[16];
						shared_memory_6[33]=result_rep[16];
						shared_memory_6[34]=result_xor[17];
						shared_memory_6[35]=result_rep[17];
						shared_memory_6[36]=result_xor[18];
						shared_memory_6[37]=result_rep[18];
						shared_memory_6[38]=result_xor[19];
						shared_memory_6[39]=result_rep[19];
						shared_memory_6[40]=result_xor[20];
						shared_memory_6[41]=result_rep[20];
						shared_memory_6[42]=result_xor[21];
						shared_memory_6[43]=result_rep[21];
						shared_memory_6[44]=result_xor[22];
						shared_memory_6[45]=result_rep[22];
						shared_memory_6[46]=result_xor[23];
						shared_memory_6[47]=result_rep[23];
						shared_memory_6[48]=result_xor[24];
						shared_memory_6[49]=result_rep[24];
						shared_memory_6[50]=result_xor[25];
						shared_memory_6[51]=result_rep[25];
						shared_memory_6[52]=result_xor[26];
						shared_memory_6[53]=result_rep[26];
						shared_memory_6[54]=result_xor[27];
						shared_memory_6[55]=result_rep[27];
						shared_memory_6[56]=result_xor[28];
						shared_memory_6[57]=result_rep[28];
						shared_memory_6[58]=result_xor[29];
						shared_memory_6[59]=result_rep[29];
						shared_memory_6[60]=result_xor[30];
						shared_memory_6[61]=result_rep[30];
						shared_memory_6[62]=result_xor[31];
						shared_memory_6[63]=result_rep[31];
						break;
					case 11:
						shared_memory_0[0]=result_xor[0];
						shared_memory_0[1]=result_rep[0];
						shared_memory_0[2]=result_xor[1];
						shared_memory_0[3]=result_rep[1];
						shared_memory_0[4]=result_xor[2];
						shared_memory_0[5]=result_rep[2];
						shared_memory_0[6]=result_xor[3];
						shared_memory_0[7]=result_rep[3];
						shared_memory_0[8]=result_xor[4];
						shared_memory_0[9]=result_rep[4];
						shared_memory_0[10]=result_xor[5];
						shared_memory_0[11]=result_rep[5];
						shared_memory_0[12]=result_xor[6];
						shared_memory_0[13]=result_rep[6];
						shared_memory_0[14]=result_xor[7];
						shared_memory_0[15]=result_rep[7];
						shared_memory_0[16]=result_xor[8];
						shared_memory_0[17]=result_rep[8];
						shared_memory_0[18]=result_xor[9];
						shared_memory_0[19]=result_rep[9];
						shared_memory_0[20]=result_xor[10];
						shared_memory_0[21]=result_rep[10];
						shared_memory_0[22]=result_xor[11];
						shared_memory_0[23]=result_rep[11];
						shared_memory_0[24]=result_xor[12];
						shared_memory_0[25]=result_rep[12];
						shared_memory_0[26]=result_xor[13];
						shared_memory_0[27]=result_rep[13];
						shared_memory_0[28]=result_xor[14];
						shared_memory_0[29]=result_rep[14];
						shared_memory_0[30]=result_xor[15];
						shared_memory_0[31]=result_rep[15];
						shared_memory_0[32]=result_xor[16];
						shared_memory_0[33]=result_rep[16];
						shared_memory_0[34]=result_xor[17];
						shared_memory_0[35]=result_rep[17];
						shared_memory_0[36]=result_xor[18];
						shared_memory_0[37]=result_rep[18];
						shared_memory_0[38]=result_xor[19];
						shared_memory_0[39]=result_rep[19];
						shared_memory_0[40]=result_xor[20];
						shared_memory_0[41]=result_rep[20];
						shared_memory_0[42]=result_xor[21];
						shared_memory_0[43]=result_rep[21];
						shared_memory_0[44]=result_xor[22];
						shared_memory_0[45]=result_rep[22];
						shared_memory_0[46]=result_xor[23];
						shared_memory_0[47]=result_rep[23];
						shared_memory_0[48]=result_xor[24];
						shared_memory_0[49]=result_rep[24];
						shared_memory_0[50]=result_xor[25];
						shared_memory_0[51]=result_rep[25];
						shared_memory_0[52]=result_xor[26];
						shared_memory_0[53]=result_rep[26];
						shared_memory_0[54]=result_xor[27];
						shared_memory_0[55]=result_rep[27];
						shared_memory_0[56]=result_xor[28];
						shared_memory_0[57]=result_rep[28];
						shared_memory_0[58]=result_xor[29];
						shared_memory_0[59]=result_rep[29];
						shared_memory_0[60]=result_xor[30];
						shared_memory_0[61]=result_rep[30];
						shared_memory_0[62]=result_xor[31];
						shared_memory_0[63]=result_rep[31];
						break;
					case 10:
						shared_memory_1[0]=result_xor[0];
						shared_memory_1[1]=result_xor[16];
						shared_memory_1[2]=result_rep[0];
						shared_memory_1[3]=result_rep[16];
						shared_memory_1[4]=result_xor[1];
						shared_memory_1[5]=result_xor[17];
						shared_memory_1[6]=result_rep[1];
						shared_memory_1[7]=result_rep[17];
						shared_memory_1[8]=result_xor[2];
						shared_memory_1[9]=result_xor[18];
						shared_memory_1[10]=result_rep[2];
						shared_memory_1[11]=result_rep[18];
						shared_memory_1[12]=result_xor[3];
						shared_memory_1[13]=result_xor[19];
						shared_memory_1[14]=result_rep[3];
						shared_memory_1[15]=result_rep[19];
						shared_memory_1[16]=result_xor[4];
						shared_memory_1[17]=result_xor[20];
						shared_memory_1[18]=result_rep[4];
						shared_memory_1[19]=result_rep[20];
						shared_memory_1[20]=result_xor[5];
						shared_memory_1[21]=result_xor[21];
						shared_memory_1[22]=result_rep[5];
						shared_memory_1[23]=result_rep[21];
						shared_memory_1[24]=result_xor[6];
						shared_memory_1[25]=result_xor[22];
						shared_memory_1[26]=result_rep[6];
						shared_memory_1[27]=result_rep[22];
						shared_memory_1[28]=result_xor[7];
						shared_memory_1[29]=result_xor[23];
						shared_memory_1[30]=result_rep[7];
						shared_memory_1[31]=result_rep[23];
						shared_memory_1[32]=result_xor[8];
						shared_memory_1[33]=result_xor[24];
						shared_memory_1[34]=result_rep[8];
						shared_memory_1[35]=result_rep[24];
						shared_memory_1[36]=result_xor[9];
						shared_memory_1[37]=result_xor[25];
						shared_memory_1[38]=result_rep[9];
						shared_memory_1[39]=result_rep[25];
						shared_memory_1[40]=result_xor[10];
						shared_memory_1[41]=result_xor[26];
						shared_memory_1[42]=result_rep[10];
						shared_memory_1[43]=result_rep[26];
						shared_memory_1[44]=result_xor[11];
						shared_memory_1[45]=result_xor[27];
						shared_memory_1[46]=result_rep[11];
						shared_memory_1[47]=result_rep[27];
						shared_memory_1[48]=result_xor[12];
						shared_memory_1[49]=result_xor[28];
						shared_memory_1[50]=result_rep[12];
						shared_memory_1[51]=result_rep[28];
						shared_memory_1[52]=result_xor[13];
						shared_memory_1[53]=result_xor[29];
						shared_memory_1[54]=result_rep[13];
						shared_memory_1[55]=result_rep[29];
						shared_memory_1[56]=result_xor[14];
						shared_memory_1[57]=result_xor[30];
						shared_memory_1[58]=result_rep[14];
						shared_memory_1[59]=result_rep[30];
						shared_memory_1[60]=result_xor[15];
						shared_memory_1[61]=result_xor[31];
						shared_memory_1[62]=result_rep[15];
						shared_memory_1[63]=result_rep[31];
						break;
					case 9:
						shared_memory_2[0]=result_xor[0];
						shared_memory_2[1]=result_xor[8];
						shared_memory_2[2]=result_rep[0];
						shared_memory_2[3]=result_rep[8];
						shared_memory_2[4]=result_xor[1];
						shared_memory_2[5]=result_xor[9];
						shared_memory_2[6]=result_rep[1];
						shared_memory_2[7]=result_rep[9];
						shared_memory_2[8]=result_xor[2];
						shared_memory_2[9]=result_xor[10];
						shared_memory_2[10]=result_rep[2];
						shared_memory_2[11]=result_rep[10];
						shared_memory_2[12]=result_xor[3];
						shared_memory_2[13]=result_xor[11];
						shared_memory_2[14]=result_rep[3];
						shared_memory_2[15]=result_rep[11];
						shared_memory_2[16]=result_xor[4];
						shared_memory_2[17]=result_xor[12];
						shared_memory_2[18]=result_rep[4];
						shared_memory_2[19]=result_rep[12];
						shared_memory_2[20]=result_xor[5];
						shared_memory_2[21]=result_xor[13];
						shared_memory_2[22]=result_rep[5];
						shared_memory_2[23]=result_rep[13];
						shared_memory_2[24]=result_xor[6];
						shared_memory_2[25]=result_xor[14];
						shared_memory_2[26]=result_rep[6];
						shared_memory_2[27]=result_rep[14];
						shared_memory_2[28]=result_xor[7];
						shared_memory_2[29]=result_xor[15];
						shared_memory_2[30]=result_rep[7];
						shared_memory_2[31]=result_rep[15];
						shared_memory_2[32]=result_xor[16];
						shared_memory_2[33]=result_xor[24];
						shared_memory_2[34]=result_rep[16];
						shared_memory_2[35]=result_rep[24];
						shared_memory_2[36]=result_xor[17];
						shared_memory_2[37]=result_xor[25];
						shared_memory_2[38]=result_rep[17];
						shared_memory_2[39]=result_rep[25];
						shared_memory_2[40]=result_xor[18];
						shared_memory_2[41]=result_xor[26];
						shared_memory_2[42]=result_rep[18];
						shared_memory_2[43]=result_rep[26];
						shared_memory_2[44]=result_xor[19];
						shared_memory_2[45]=result_xor[27];
						shared_memory_2[46]=result_rep[19];
						shared_memory_2[47]=result_rep[27];
						shared_memory_2[48]=result_xor[20];
						shared_memory_2[49]=result_xor[28];
						shared_memory_2[50]=result_rep[20];
						shared_memory_2[51]=result_rep[28];
						shared_memory_2[52]=result_xor[21];
						shared_memory_2[53]=result_xor[29];
						shared_memory_2[54]=result_rep[21];
						shared_memory_2[55]=result_rep[29];
						shared_memory_2[56]=result_xor[22];
						shared_memory_2[57]=result_xor[30];
						shared_memory_2[58]=result_rep[22];
						shared_memory_2[59]=result_rep[30];
						shared_memory_2[60]=result_xor[23];
						shared_memory_2[61]=result_xor[31];
						shared_memory_2[62]=result_rep[23];
						shared_memory_2[63]=result_rep[31];
						break;
					case 8:
						shared_memory_3[0]=result_xor[0];
						shared_memory_3[1]=result_xor[4];
						shared_memory_3[2]=result_rep[0];
						shared_memory_3[3]=result_rep[4];
						shared_memory_3[4]=result_xor[1];
						shared_memory_3[5]=result_xor[5];
						shared_memory_3[6]=result_rep[1];
						shared_memory_3[7]=result_rep[5];
						shared_memory_3[8]=result_xor[2];
						shared_memory_3[9]=result_xor[6];
						shared_memory_3[10]=result_rep[2];
						shared_memory_3[11]=result_rep[6];
						shared_memory_3[12]=result_xor[3];
						shared_memory_3[13]=result_xor[7];
						shared_memory_3[14]=result_rep[3];
						shared_memory_3[15]=result_rep[7];
						shared_memory_3[16]=result_xor[8];
						shared_memory_3[17]=result_xor[12];
						shared_memory_3[18]=result_rep[8];
						shared_memory_3[19]=result_rep[12];
						shared_memory_3[20]=result_xor[9];
						shared_memory_3[21]=result_xor[13];
						shared_memory_3[22]=result_rep[9];
						shared_memory_3[23]=result_rep[13];
						shared_memory_3[24]=result_xor[10];
						shared_memory_3[25]=result_xor[14];
						shared_memory_3[26]=result_rep[10];
						shared_memory_3[27]=result_rep[14];
						shared_memory_3[28]=result_xor[11];
						shared_memory_3[29]=result_xor[15];
						shared_memory_3[30]=result_rep[11];
						shared_memory_3[31]=result_rep[15];
						shared_memory_3[32]=result_xor[16];
						shared_memory_3[33]=result_xor[20];
						shared_memory_3[34]=result_rep[16];
						shared_memory_3[35]=result_rep[20];
						shared_memory_3[36]=result_xor[17];
						shared_memory_3[37]=result_xor[21];
						shared_memory_3[38]=result_rep[17];
						shared_memory_3[39]=result_rep[21];
						shared_memory_3[40]=result_xor[18];
						shared_memory_3[41]=result_xor[22];
						shared_memory_3[42]=result_rep[18];
						shared_memory_3[43]=result_rep[22];
						shared_memory_3[44]=result_xor[19];
						shared_memory_3[45]=result_xor[23];
						shared_memory_3[46]=result_rep[19];
						shared_memory_3[47]=result_rep[23];
						shared_memory_3[48]=result_xor[24];
						shared_memory_3[49]=result_xor[28];
						shared_memory_3[50]=result_rep[24];
						shared_memory_3[51]=result_rep[28];
						shared_memory_3[52]=result_xor[25];
						shared_memory_3[53]=result_xor[29];
						shared_memory_3[54]=result_rep[25];
						shared_memory_3[55]=result_rep[29];
						shared_memory_3[56]=result_xor[26];
						shared_memory_3[57]=result_xor[30];
						shared_memory_3[58]=result_rep[26];
						shared_memory_3[59]=result_rep[30];
						shared_memory_3[60]=result_xor[27];
						shared_memory_3[61]=result_xor[31];
						shared_memory_3[62]=result_rep[27];
						shared_memory_3[63]=result_rep[31];
						break;
					case 7:
						shared_memory_4[0]=result_xor[0];
						shared_memory_4[1]=result_xor[2];
						shared_memory_4[2]=result_rep[0];
						shared_memory_4[3]=result_rep[2];
						shared_memory_4[4]=result_xor[1];
						shared_memory_4[5]=result_xor[3];
						shared_memory_4[6]=result_rep[1];
						shared_memory_4[7]=result_rep[3];
						shared_memory_4[8]=result_xor[4];
						shared_memory_4[9]=result_xor[6];
						shared_memory_4[10]=result_rep[4];
						shared_memory_4[11]=result_rep[6];
						shared_memory_4[12]=result_xor[5];
						shared_memory_4[13]=result_xor[7];
						shared_memory_4[14]=result_rep[5];
						shared_memory_4[15]=result_rep[7];
						shared_memory_4[16]=result_xor[8];
						shared_memory_4[17]=result_xor[10];
						shared_memory_4[18]=result_rep[8];
						shared_memory_4[19]=result_rep[10];
						shared_memory_4[20]=result_xor[9];
						shared_memory_4[21]=result_xor[11];
						shared_memory_4[22]=result_rep[9];
						shared_memory_4[23]=result_rep[11];
						shared_memory_4[24]=result_xor[12];
						shared_memory_4[25]=result_xor[14];
						shared_memory_4[26]=result_rep[12];
						shared_memory_4[27]=result_rep[14];
						shared_memory_4[28]=result_xor[13];
						shared_memory_4[29]=result_xor[15];
						shared_memory_4[30]=result_rep[13];
						shared_memory_4[31]=result_rep[15];
						shared_memory_4[32]=result_xor[16];
						shared_memory_4[33]=result_xor[18];
						shared_memory_4[34]=result_rep[16];
						shared_memory_4[35]=result_rep[18];
						shared_memory_4[36]=result_xor[17];
						shared_memory_4[37]=result_xor[19];
						shared_memory_4[38]=result_rep[17];
						shared_memory_4[39]=result_rep[19];
						shared_memory_4[40]=result_xor[20];
						shared_memory_4[41]=result_xor[22];
						shared_memory_4[42]=result_rep[20];
						shared_memory_4[43]=result_rep[22];
						shared_memory_4[44]=result_xor[21];
						shared_memory_4[45]=result_xor[23];
						shared_memory_4[46]=result_rep[21];
						shared_memory_4[47]=result_rep[23];
						shared_memory_4[48]=result_xor[24];
						shared_memory_4[49]=result_xor[26];
						shared_memory_4[50]=result_rep[24];
						shared_memory_4[51]=result_rep[26];
						shared_memory_4[52]=result_xor[25];
						shared_memory_4[53]=result_xor[27];
						shared_memory_4[54]=result_rep[25];
						shared_memory_4[55]=result_rep[27];
						shared_memory_4[56]=result_xor[28];
						shared_memory_4[57]=result_xor[30];
						shared_memory_4[58]=result_rep[28];
						shared_memory_4[59]=result_rep[30];
						shared_memory_4[60]=result_xor[29];
						shared_memory_4[61]=result_xor[31];
						shared_memory_4[62]=result_rep[29];
						shared_memory_4[63]=result_rep[31];
						break;
					case 6:
						shared_memory_5[0]=result_xor[0];
						shared_memory_5[1]=result_xor[1];
						shared_memory_5[2]=result_rep[0];
						shared_memory_5[3]=result_rep[1];
						shared_memory_5[4]=result_xor[2];
						shared_memory_5[5]=result_xor[3];
						shared_memory_5[6]=result_rep[2];
						shared_memory_5[7]=result_rep[3];
						shared_memory_5[8]=result_xor[4];
						shared_memory_5[9]=result_xor[5];
						shared_memory_5[10]=result_rep[4];
						shared_memory_5[11]=result_rep[5];
						shared_memory_5[12]=result_xor[6];
						shared_memory_5[13]=result_xor[7];
						shared_memory_5[14]=result_rep[6];
						shared_memory_5[15]=result_rep[7];
						shared_memory_5[16]=result_xor[8];
						shared_memory_5[17]=result_xor[9];
						shared_memory_5[18]=result_rep[8];
						shared_memory_5[19]=result_rep[9];
						shared_memory_5[20]=result_xor[10];
						shared_memory_5[21]=result_xor[11];
						shared_memory_5[22]=result_rep[10];
						shared_memory_5[23]=result_rep[11];
						shared_memory_5[24]=result_xor[12];
						shared_memory_5[25]=result_xor[13];
						shared_memory_5[26]=result_rep[12];
						shared_memory_5[27]=result_rep[13];
						shared_memory_5[28]=result_xor[14];
						shared_memory_5[29]=result_xor[15];
						shared_memory_5[30]=result_rep[14];
						shared_memory_5[31]=result_rep[15];
						shared_memory_5[32]=result_xor[16];
						shared_memory_5[33]=result_xor[17];
						shared_memory_5[34]=result_rep[16];
						shared_memory_5[35]=result_rep[17];
						shared_memory_5[36]=result_xor[18];
						shared_memory_5[37]=result_xor[19];
						shared_memory_5[38]=result_rep[18];
						shared_memory_5[39]=result_rep[19];
						shared_memory_5[40]=result_xor[20];
						shared_memory_5[41]=result_xor[21];
						shared_memory_5[42]=result_rep[20];
						shared_memory_5[43]=result_rep[21];
						shared_memory_5[44]=result_xor[22];
						shared_memory_5[45]=result_xor[23];
						shared_memory_5[46]=result_rep[22];
						shared_memory_5[47]=result_rep[23];
						shared_memory_5[48]=result_xor[24];
						shared_memory_5[49]=result_xor[25];
						shared_memory_5[50]=result_rep[24];
						shared_memory_5[51]=result_rep[25];
						shared_memory_5[52]=result_xor[26];
						shared_memory_5[53]=result_xor[27];
						shared_memory_5[54]=result_rep[26];
						shared_memory_5[55]=result_rep[27];
						shared_memory_5[56]=result_xor[28];
						shared_memory_5[57]=result_xor[29];
						shared_memory_5[58]=result_rep[28];
						shared_memory_5[59]=result_rep[29];
						shared_memory_5[60]=result_xor[30];
						shared_memory_5[61]=result_xor[31];
						shared_memory_5[62]=result_rep[30];
						shared_memory_5[63]=result_rep[31];
						break;
				}
			}
		}

		// belief
		bool u_cap[N];
		for(int i = 0; i < N; i++){
#pragma HLS UNROLL
			u_cap[i] = ((DTYPE)shared_memory_0[i] + (DTYPE)R_tx_llr[i]) < 0;
		}

		// message
		for(int iter = 0; iter < K / 8; iter++) {
			Byte c = 0;
			for (int byte_idx = 0; byte_idx < 8; byte_idx++) {
#pragma HLS UNROLL
				c = c | ((Byte)u_cap[reliability_sequence[N - K + (iter*8 + byte_idx)]] << byte_idx);
			}
			dst[dst_idx++] = c;
		}
	}
}

union float_int {
	float fval;
	unsigned int ival;
};

inline int sign(float x) {
	float_int fi;
	fi.fval = x;
	return 1 - ((fi.ival >> 31) << 1);
}

int sign(DTYPE x){
	return 1 - ((x >> 31) << 1);
}

inline float minsum(float a, float b) {
	return (sign(a) * sign(b) * MIN(ABS(a), ABS(b)) * 0.9375); // 15 >> 4; // 15/16=0.9375
}

inline xor_rep PE(float right_up, float right_down, float left_up, float left_down)
{
	xor_rep result;
	result.r_xor = minsum(right_down + left_down, left_up);
	result.r_rep = minsum(right_up, left_up) + left_down;
	return result;
}

inline float MIN(float x, float y){
	float tmp_value;
	if(x > y){
		tmp_value = y;
	}
	else{
		tmp_value = x;
	}
	return (float) tmp_value;
}

inline float ABS(float x){
	float tmp_value;
	if(x > 0){
		tmp_value = x;
	}
	else{
		tmp_value = -x;
	}
	return (float) tmp_value;
}
