#include "top.hpp"
#include <stdlib.h>
#include <iostream>

void bits2LLRs(Bit bits[BIT_BUF_SIZE], float SNR, float LLRs[BIT_BUF_SIZE]) {
	for (int i = 0; i < BIT_BUF_SIZE; i++) {
#pragma HLS PIPELINE
		float noise = gaussian[i % 1024];
		LLRs[i] = ((1 - 2*bits[i]) * SNR + noise);
	}
}

//void top(Byte in[BUF_SIZE], unsigned int width, unsigned int height, Byte out[BUF_SIZE]) {
void top(Byte in[BUF_SIZE], float SNR, Byte out[BUF_SIZE]) {
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=m_axi port=in offset=slave
#pragma HLS INTERFACE mode=m_axi port=out offset=slave
#pragma HLS INTERFACE mode=s_axilite port=in
#pragma HLS INTERFACE mode=s_axilite port=out
#pragma HLS INTERFACE mode=s_axilite port=SNR
//#pragma HLS INTERFACE mode=s_axilite port=max_iter
#pragma HLS DataFlow
	Byte qoi_encoded[BUF_SIZE];
	Bit polar_encoded_bits[BIT_BUF_SIZE];
	float polar_encoded_LLRs[BIT_BUF_SIZE];
	Byte polar_decoded[BUF_SIZE];
#pragma HLS STREAM variable= qoi_encoded type= fifo
#pragma HLS STREAM variable= polar_encoded_bits type= fifo
#pragma HLS STREAM variable= polar_encoded_LLRs type= fifo
#pragma HLS STREAM variable= polar_decoded type= fifo

	qoi_encode(in, 32, 32, qoi_encoded);
	polar_encode(qoi_encoded, polar_encoded_bits);
	bits2LLRs(polar_encoded_bits, SNR, polar_encoded_LLRs);
	polar_decode(polar_encoded_LLRs, polar_decoded);
	qoi_decode(polar_decoded, out);
}
