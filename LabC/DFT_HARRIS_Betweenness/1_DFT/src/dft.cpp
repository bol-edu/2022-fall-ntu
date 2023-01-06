#include<math.h>
#include "dft.h"
#include"coefficients1024.h"
#include "cstring"

void dft(DTYPE real_sample[1024], DTYPE imag_sample[1024],DTYPE real_op[1024],DTYPE imag_op[1024])	//Use pointers while doing the demo for streaming//
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=1024 max_widen_bitwidth=512 max_read_burst_length=256 num_read_outstanding=256 port=real_sample bundle=input_re_r
#pragma HLS INTERFACE m_axi depth=1024 max_widen_bitwidth=512 max_read_burst_length=256 num_read_outstanding=256 port=imag_sample bundle=input_im_r
#pragma HLS INTERFACE m_axi depth=1024 max_widen_bitwidth=512 max_read_burst_length=256 num_read_outstanding=256 port=real_op bundle=output_re_r
#pragma HLS INTERFACE m_axi depth=1024 max_widen_bitwidth=512 max_read_burst_length=256 num_read_outstanding=256 port=imag_op bundle=output_im_r
	//Write your code here
	DTYPE re_sample[SIZE];
	DTYPE im_sample[SIZE];
	DTYPE re_buff[SIZE];
	DTYPE im_buff[SIZE];
#pragma HLS ARRAY_PARTITION variable=cos_coefficients_table,sin_coefficients_table,re_buff,im_buff type=cyclic factor=32
	int n,k;
	for(k=0; k<SIZE; k++)
	{
		re_sample[k]=real_sample[k];
		im_sample[k]=imag_sample[k];
		re_buff[k]=0;
		im_buff[k]=0;
	}
	loop_k: for (n=0 ; n<SIZE ; ++n){
		loop_n: for (k=0 ; k<SIZE ; ++k) {
			#pragma HLS pipeline II=11
			#pragma HLS UNROLL factor=32
			float c = cos_coefficients_table[n*k %SIZE];
			float s = sin_coefficients_table[n*k %SIZE];
			re_buff[k] += re_sample[n] * c + im_sample[n] * s;
			im_buff[k] += re_sample[n] * s - im_sample[n] * c;
	    }
	 }
	memcpy(real_op,(const float*)re_buff,sizeof(DTYPE)*SIZE);
	memcpy(imag_op,(const float*)im_buff,sizeof(DTYPE)*SIZE);
}
