#include "model.h"
#include "param.h"

#ifdef MODEL

void FC1(const DTYPE input[], DTYPE output[])
{
#pragma HLS INLINE off
#pragma HLS BIND_STORAGE variable=fc1_weight type=ROM_1P impl=LUTRAM

	calculate: for(int i=0; i<FC1_OUTPUT_SIZE; i++) {
		int sum = 0;
		temp_sum: for(int j=0; j<FC1_INPUT_SIZE; j++) {
#pragma HLS PIPELINE II=1
			sum += input[j] * fc1_weight[i][j];
		}
		float out_float = round((sum - fc1_sum_merge[i]) * fc1_scale_merge[i]);
		int out_int = int(out_float); // float to integer
		DTYPE out = out_int < 0 ? 0 : (out_int > 127 ? 127 : out_int); // clip
		output[i] = out;
	}
}

void FC2(const DTYPE input[], DTYPE output[])
{
#pragma HLS INLINE off
#pragma HLS BIND_STORAGE variable=fc2_weight type=ROM_1P impl=LUTRAM

	calculate: for(int i=0; i<FC2_OUTPUT_SIZE; i++) {
		int temp_sum[FC2_PE] = {0};
		int sum = 0;
		temp_sum: for(int j=0; j<FC2_LOOP; j++) {
#pragma HLS PIPELINE II=1
			accumulate: for (int k=0; k<FC2_PE; k++) {
#pragma HLS UNROLL
				temp_sum[k] += input[j*FC2_PE+k] * fc2_weight[i][j*FC2_PE+k];
			}
		}
		sum: for (int k=0; k<FC2_PE; k++) {
#pragma HLS UNROLL
			sum += temp_sum[k];
		}
		float out_float = round((sum) * fc2_scale_merge[i]);
		int out_int = int(out_float); // float to integer
		DTYPE out = out_int < 0 ? 0 : (out_int > 127 ? 127 : out_int); // clip
		output[i] = out;
	}
}

void FC3(const DTYPE input[], float output[])
{
#pragma HLS INLINE off
#pragma HLS BIND_STORAGE variable=fc3_weight type=ROM_1P impl=BRAM

	calculate: for(int i=0; i<FC3_OUTPUT_SIZE; i++) {
		int temp_sum[FC3_PE] = {0};
		int sum = 0;
		temp_sum: for(int j=0; j<FC3_LOOP; j++) {
#pragma HLS PIPELINE II=1
			accumulate: for (int k=0; k<FC3_PE; k++) {
#pragma HLS UNROLL
				temp_sum[k] += input[j*FC3_PE+k] * fc3_weight[i][j*FC3_PE+k];
			}
		}
		sum: for (int k=0; k<FC3_PE; k++) {
#pragma HLS UNROLL
			sum += temp_sum[k];
		}
		float out = (sum) * fc3_scale_merge[i];
		float out_tanh = out < -1 ? -1 : (out > 1 ? 1 : out);
		output[i] = out_tanh;
	}
}

void model(const DTYPE* data_in_noise, float* data_out)
{
#pragma HLS INTERFACE m_axi port=data_in_noise bundle=in offset=slave depth=100000
#pragma HLS INTERFACE m_axi port=data_out bundle=out offset=slave depth=784000
#pragma HLS INTERFACE s_axilite port=data_in_noise bundle=control
#pragma HLS INTERFACE s_axilite port=data_out bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

	DTYPE fc1_out[FC1_OUTPUT_SIZE];
	DTYPE fc2_out[FC2_OUTPUT_SIZE];
	for(int i=0; i<IMAGE_NUM; i++) {
#pragma HLS DATAFLOW
		FC1(data_in_noise+NOISE_INPUT_SIZE*i, fc1_out);
		FC2(fc1_out, fc2_out);
		FC3(fc2_out, data_out+OUTPUT_SIZE*i);
	}
}
#endif
