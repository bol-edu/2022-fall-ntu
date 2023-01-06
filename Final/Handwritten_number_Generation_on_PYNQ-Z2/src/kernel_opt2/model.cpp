#include "model.h"
#include "param.h"

#ifdef MODEL

void ReadFromMem(DTYPE* data_noise, hls::stream<DTYPE> &noise_stream)
{
	read_noise: for(int i=0; i<NOISE_INPUT_SIZE; i++) {
		DTYPE temp = data_noise[i];
		noise_stream.write(temp);
	}
}

void FC1(hls::stream<DTYPE> &input_stream, const DTYPE const_weight[FC1_OUTPUT_SIZE][FC1_INPUT_SIZE], hls::stream<DTYPE> &output_stream)
{
	DTYPE data[FC1_INPUT_SIZE];

#pragma HLS ARRAY_PARTITION variable=data dim=1 complete
#pragma HLS BIND_STORAGE variable=const_weight type=ROM_1P impl=BRAM
//#pragma HLS ARRAY_PARTITION variable=const_weight dim=2 complete

	load_data: for(int i=0; i<FC1_INPUT_SIZE; i++) {
#pragma HLS PIPELINE II=1
		data[i] = input_stream.read();
	}

	calculate: for(int i=0; i<FC1_OUTPUT_SIZE; i++) {
		int sum = 0;
		sum: for(int j=0; j<FC1_INPUT_SIZE; j++) {
#pragma HLS PIPELINE II=1
			sum += data[j] * const_weight[i][j];
		}
		float out_float = round((sum - fc1_sum_merge[i]) * fc1_scale_merge[i]);
		int out_int = int(out_float); // float to integer
		DTYPE out = out_int < 0 ? 0 : (out_int > 127 ? 127 : out_int); // clip
		output_stream.write(out);
	}
}

void FC2(hls::stream<DTYPE> &input_stream, const DTYPE const_weight[FC2_OUTPUT_SIZE][FC2_INPUT_SIZE], hls::stream<DTYPE> &output_stream)
{
	DTYPE data[FC2_INPUT_SIZE];

#pragma HLS ARRAY_PARTITION variable=data dim=1 complete
#pragma HLS BIND_STORAGE variable=const_weight type=ROM_1P impl=LUTRAM
//#pragma HLS ARRAY_PARTITION variable=const_weight dim=2 complete

	load_data: for(int i=0; i<FC2_INPUT_SIZE; i++) {
#pragma HLS PIPELINE II=1
		data[i] = input_stream.read();
	}

	calculate: for(int i=0; i<FC2_OUTPUT_SIZE; i++) {
		int temp_sum[4] = {0};
		int sum = 0;
		sum: for(int j=0; j<FC2_INPUT_SIZE; j+=4) {
#pragma HLS PIPELINE II=1
			for (int k=0; k<4; k++) {
#pragma HLS UNROLL
				temp_sum[k] += data[j+k] * const_weight[i][j+k];
			}
		}
		for (int k=0; k<4; k++) {
#pragma HLS UNROLL
			sum += temp_sum[k];
		}
		float out_float = round((sum) * fc2_scale_merge[i]);
		int out_int = int(out_float); // float to integer
		DTYPE out = out_int < 0 ? 0 : (out_int > 127 ? 127 : out_int); // clip
		output_stream.write(out);
	}
}

void FC3(hls::stream<DTYPE> &input_stream, const DTYPE const_weight[FC3_OUTPUT_SIZE][FC3_INPUT_SIZE], hls::stream<float> &output_stream)
{
	DTYPE data[FC3_INPUT_SIZE];

#pragma HLS ARRAY_PARTITION variable=data dim=1 complete
#pragma HLS BIND_STORAGE variable=const_weight type=ROM_1P impl=BRAM
//#pragma HLS ARRAY_PARTITION variable=const_weight dim=2 complete

	load_data: for(int i=0; i<FC3_INPUT_SIZE; i++) {
#pragma HLS PIPELINE II=1
		data[i] = input_stream.read();
	}

	calculate: for(int i=0; i<FC3_OUTPUT_SIZE; i++) {
		int temp_sum[8] = {0};
		int sum = 0;
		sum: for(int j=0; j<FC3_INPUT_SIZE; j+=8) {
#pragma HLS PIPELINE II=1
			for (int k=0; k<8; k++) {
#pragma HLS UNROLL
				temp_sum[k] += data[j+k] * const_weight[i][j+k];
			}
		}
		for (int k=0; k<8; k++) {
#pragma HLS UNROLL
			sum += temp_sum[k];
		}
		float out = (sum) * fc3_scale_merge[i];
		output_stream.write(out);
	}
}

void WriteToMem(hls::stream<float> &output_stream, float *data_out)
{
	write_data: for(int i=0; i<OUTPUT_SIZE; i++) {
		float temp = output_stream.read();
		float temp_tanh = temp < -1 ? -1 : (temp > 1 ? 1 : temp);
		data_out[i] = temp_tanh;
	}
}

void model(DTYPE* data_in_noise, float* data_out)
{
#pragma HLS INTERFACE m_axi port=data_in_noise bundle=in offset=slave depth=100
#pragma HLS INTERFACE m_axi port=data_out bundle=out offset=slave depth=784
#pragma HLS INTERFACE s_axilite port=data_in_noise bundle=control
#pragma HLS INTERFACE s_axilite port=data_out bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control


#pragma HLS DATAFLOW

	hls::stream<DTYPE> input_noise_stream("input_noise_stream");
	hls::stream<DTYPE> fc1_output_stream("fc1_output_stream");
	hls::stream<DTYPE> fc2_output_stream("fc2_output_stream");
	hls::stream<float> output_stream("output_stream");

#pragma HLS STREAM variable=input_noise_stream depth=100
#pragma HLS STREAM variable=fc1_output_stream depth=256
#pragma HLS STREAM variable=fc2_output_stream depth=512
#pragma HLS STREAM variable=output_stream depth=784

	ReadFromMem(data_in_noise, input_noise_stream);
	FC1(input_noise_stream, fc1_weight, fc1_output_stream);
	FC2(fc1_output_stream, fc2_weight, fc2_output_stream);
	FC3(fc2_output_stream, fc3_weight, output_stream);
	WriteToMem(output_stream, data_out);
}
#endif
