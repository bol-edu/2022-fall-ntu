#include <iostream>
#include "hls_math.h"
using namespace std;

#include "canny.hpp"
typedef ap_int<13> DTYPE_Sobel;
typedef ap_int<20> DTYPE_Sobel_7;
typedef ap_int<26> DTYPE_Mag;
typedef ap_int<32> DTYPE_Tan;
void MergeFilter(DTYPE* src, DTYPE_Sobel* dst_1, DTYPE_Sobel* dst_2, DTYPE_Sobel_7* dst_3);
void ConvertXY(DTYPE_Sobel* src_1, DTYPE_Sobel* src_2, DTYPE_Sobel_7* src_3, DTYPE_Mag* dst_1, DTYPE_Tan* dst_2, DTYPE_Tan* dst_3, DTYPE_Tan* dst_4);
void NonMaximumSuppression(DTYPE_Mag* src_1, DTYPE_Tan* src_2, DTYPE_Tan* src_3, DTYPE_Tan* src_4, int upperThresh, int lowerThresh, DTYPE* dst);

void canny(DTYPE src[16384], DTYPE dst[16384], int upperThresh, int lowerThresh)
{
	#pragma HLS DATAFLOW
	const int W=128;
	DTYPE_Sobel x_sobel[W][W], y_sobel[W][W];
	DTYPE_Sobel_7 y_sobel_7[W][W];
	DTYPE_Mag magnitude[W][W];
	DTYPE_Tan tangent_y[W][W];
	DTYPE_Tan tangent_x_225[W][W];
	DTYPE_Tan tangent_x_675[W][W];
	#pragma HLS STREAM variable= x_sobel type= fifo
	#pragma HLS STREAM variable= y_sobel type= fifo
	#pragma HLS STREAM variable= y_sobel_7 type= fifo
	#pragma HLS STREAM variable= magnitude type= fifo
	#pragma HLS STREAM variable= tangent_y   type= fifo
	#pragma HLS STREAM variable= tangent_x_225 type= fifo
	#pragma HLS STREAM variable= tangent_x_675 type= fifo
    MergeFilter(src, &x_sobel[0][0], &y_sobel[0][0], &y_sobel_7[0][0]);
    ConvertXY(&x_sobel[0][0], &y_sobel[0][0], &y_sobel_7[0][0], &magnitude[0][0], &tangent_y[0][0], &tangent_x_225[0][0], &tangent_x_675[0][0]);
    NonMaximumSuppression(&magnitude[0][0], &tangent_y[0][0], &tangent_x_225[0][0], &tangent_x_675[0][0], upperThresh, lowerThresh, dst);
}

void MergeFilter(DTYPE* src, DTYPE_Sobel* dst_1, DTYPE_Sobel* dst_2, DTYPE_Sobel_7* dst_3){
    const int k = 5; // kernel size
    const int W = 128;
    const int NRU = 4;
	uint8_t LineBuff[k][W+4];
	uint8_t WindowBuff[k][k];
	#pragma HLS ARRAY_RESHAPE variable=LineBuff complete dim=1
    #pragma HLS ARRAY_PARTITION variable=WindowBuff complete dim=0
	#pragma HLS DEPENDENCE variable=LineBuff inter false
	#pragma HLS DEPENDENCE variable=LineBuff intra false
	static const ap_int<11> X_MERGE_KERNEL[k][k] =\
	{
	{ -97, -121, 0, 121,  97},
	{-315, -394, 0, 394, 315},
	{-436, -546, 0, 546, 436},
	{-315, -394, 0, 394, 315},
	{ -97, -121, 0, 121,  97}
	};
	static const ap_int<11> Y_MERGE_KERNEL[k][k] =\
	{
	{ -97, -315, -436, -315,  -97},
	{-121, -394, -546, -394, -121},
	{   0,    0,    0,    0,    0},
	{ 121,  394,  546,  394,  121},
	{  97,  315,  436,  315,   97}
	};
	ap_uint<8> adr_x, adr_y;
	#pragma HLS ARRAY_PARTITION variable=X_MERGE_KERNEL complete dim=0
	#pragma HLS ARRAY_PARTITION variable=Y_MERGE_KERNEL complete dim=0
	int x = 0;
	int y = 0;
	const int total_cycle = (W+4)*(W+4);
    for(int xy = 0; xy < total_cycle; xy++) {
		#pragma HLS PIPELINE
		for(int yl = 0; yl < k - 1; yl++) {
			LineBuff[yl][x] = LineBuff[yl + 1][x];
		}
		if(x < 2){
			adr_x = 2-x;
		}
		else if(x > W+1){
			adr_x = 2*W-x;
		}
		else{
			adr_x = x-2;
		}
		if(y < 2){
			adr_y = 2-y;
		}
		else if(y > W+1){
			adr_y = 2*W-y;
		}
		else{
			adr_y = y-2;
		}
		LineBuff[k - 1][x] = src[adr_x + adr_y*W];

		for(ap_uint<3> yw = 0; yw < k; yw++) {
			for(int xw = 0; xw < k - 1; xw++) {
				WindowBuff[yw][xw] = WindowBuff[yw][xw + 1];
			}
		}
		for(ap_uint<3> yw = 0; yw < k; yw++) {
			WindowBuff[yw][k - 1] = LineBuff[yw][x];
		}

		int pixel_tmp_1 = 0;
		int pixel_tmp_2 = 0;
		int pixel_tmp_3;
		int pixel_tmp_4;
		int pixel_tmp_5;
		for(int yw = 0; yw < k; yw++) {
			for(int xw = 0; xw < k; xw++) {
				pixel_tmp_1 += WindowBuff[yw][xw] * X_MERGE_KERNEL[yw][xw];
				pixel_tmp_2 += WindowBuff[yw][xw] * Y_MERGE_KERNEL[yw][xw];
			}
		}
		pixel_tmp_3 = pixel_tmp_1 >> 8; //(10-5)
		pixel_tmp_4 = pixel_tmp_2 >> 8; //(10-5)
		pixel_tmp_5 = pixel_tmp_2 >> 1;
		// output
		if((x > 3) && (y > 3)){
			dst_1[(x-4) + (y-4)*W] = pixel_tmp_3;
			dst_2[(x-4) + (y-4)*W] = pixel_tmp_4;
			dst_3[(x-4) + (y-4)*W] = pixel_tmp_5;
		}
		if(x == W+3){
			y += 1;
			x = 0;
		}
		else{
			x += 1;
		}
    }
}

void ConvertXY(DTYPE_Sobel* src_1, DTYPE_Sobel* src_2, DTYPE_Sobel_7* src_3, DTYPE_Mag* dst_1, DTYPE_Tan* dst_2, DTYPE_Tan* dst_3, DTYPE_Tan* dst_4){
	const int W = 128;
	DTYPE_Tan tmp, tmp_d;
	DTYPE_Sobel pixel_tmp_1;
	DTYPE_Sobel_7 pixel_tmp_2;
	DTYPE_Sobel_7 pixel_tmp_3;
	const int tan_225 = 53;
	const int tan_675 = 309;

	for(int xy = 0; xy < W*W; xy++) {
		#pragma HLS PIPELINE
		pixel_tmp_1 = src_1[xy];
		pixel_tmp_2 = src_2[xy];
		pixel_tmp_3 = src_3[xy];
		dst_1[xy] = pixel_tmp_1*pixel_tmp_1 + pixel_tmp_2*pixel_tmp_2;
		dst_2[xy] = pixel_tmp_3*pixel_tmp_1;
		dst_3[xy] = pixel_tmp_1*pixel_tmp_1*tan_225;
		dst_4[xy] = pixel_tmp_1*pixel_tmp_1*tan_675;
	}
}


void NonMaximumSuppression(DTYPE_Mag* src_1, DTYPE_Tan* src_2, DTYPE_Tan* src_3, DTYPE_Tan* src_4, int upperThresh, int lowerThresh, DTYPE* dst){
	const int tan_225 = 53;
	const int tan_675 = 309;
	const int W = 128;
	const int k = 3;
	const int factor = 2;
	int mag_nms, tan_y_nms, tan_x_225_nms, tan_x_675_nms, pixel_thr;
	int LineBuff_mag[k][W];
	int WindowBuff_mag[k][k];
	int LineBuff_tan_y[k][W];
	int WindowBuff_tan_y[k][k];
	int LineBuff_tan_x_225[k][W];
	int WindowBuff_tan_x_225[k][k];
	int LineBuff_tan_x_675[k][W];
	int WindowBuff_tan_x_675[k][k];
	int adr_x, adr_y;
	const int upperThresh_scale = ((upperThresh*upperThresh) << (2*factor));
	const int lowerThresh_scale = ((lowerThresh*lowerThresh) << (2*factor));
//	const int upperThresh_scale = 102400;
//	const int lowerThresh_scale = 14400;
	#pragma HLS ARRAY_RESHAPE variable=LineBuff_mag complete dim=1
	#pragma HLS ARRAY_PARTITION variable=WindowBuff_mag complete dim=0
	#pragma HLS ARRAY_RESHAPE variable=LineBuff_tan_y complete dim=1
	#pragma HLS ARRAY_PARTITION variable=WindowBuff_tan_y complete dim=0
	#pragma HLS ARRAY_RESHAPE variable=LineBuff_tan_x_225 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=WindowBuff_tan_x_225 complete dim=0
	#pragma HLS ARRAY_RESHAPE variable=LineBuff_tan_x_675 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=WindowBuff_tan_x_675 complete dim=0
	#pragma HLS DEPENDENCE variable=LineBuff_mag inter false
	#pragma HLS DEPENDENCE variable=LineBuff_mag intra false
	#pragma HLS DEPENDENCE variable=LineBuff_tan_y inter false
	#pragma HLS DEPENDENCE variable=LineBuff_tan_y intra false
	#pragma HLS DEPENDENCE variable=LineBuff_tan_x_225 inter false
	#pragma HLS DEPENDENCE variable=LineBuff_tan_x_225 intra false
	#pragma HLS DEPENDENCE variable=LineBuff_tan_x_675 inter false
	#pragma HLS DEPENDENCE variable=LineBuff_tan_x_675 intra false
	int x = 0;
	int y = 0;
	int adr = -129;
	for(int xy = 0; xy < W*W; xy++) {
		#pragma HLS PIPELINE
		for(int yl = 0; yl < k - 1; yl++) {
			LineBuff_mag[yl][x] = LineBuff_mag[yl + 1][x];
			LineBuff_tan_y[yl][x] = LineBuff_tan_y[yl + 1][x];
			LineBuff_tan_x_225[yl][x] = LineBuff_tan_x_225[yl + 1][x];
			LineBuff_tan_x_675[yl][x] = LineBuff_tan_x_675[yl + 1][x];
		}
		adr_x = x;
		adr_y = y;
		LineBuff_mag[k - 1][x] = src_1[adr_x + adr_y*W];
		LineBuff_tan_y[k - 1][x] = src_2[adr_x + adr_y*W];
		LineBuff_tan_x_225[k - 1][x] = src_3[adr_x + adr_y*W];
		LineBuff_tan_x_675[k - 1][x] = src_4[adr_x + adr_y*W];
		for(int yw = 0; yw < k; yw++) {
			for(int xw = 0; xw < k - 1; xw++) {
				WindowBuff_mag[yw][xw] = WindowBuff_mag[yw][xw + 1];
				WindowBuff_tan_y[yw][xw] = WindowBuff_tan_y[yw][xw + 1];
				WindowBuff_tan_x_225[yw][xw] = WindowBuff_tan_x_225[yw][xw + 1];
				WindowBuff_tan_x_675[yw][xw] = WindowBuff_tan_x_675[yw][xw + 1];
			}
		}
		for(int yw = 0; yw < k; yw++) {
			WindowBuff_mag[yw][k - 1] = LineBuff_mag[yw][x];
			WindowBuff_tan_y[yw][k - 1] = LineBuff_tan_y[yw][x];
			WindowBuff_tan_x_225[yw][k - 1] = LineBuff_tan_x_225[yw][x];
			WindowBuff_tan_x_675[yw][k - 1] = LineBuff_tan_x_675[yw][x];
		}

		mag_nms = WindowBuff_mag[1][1];
		tan_y_nms = WindowBuff_tan_y[1][1];
		tan_x_225_nms = WindowBuff_tan_x_225[1][1];
		tan_x_675_nms = WindowBuff_tan_x_675[1][1];
		if ((tan_y_nms <= tan_x_225_nms) && (tan_y_nms > -tan_x_225_nms)){
			// left and right
			if((mag_nms <= WindowBuff_mag[1][0]) || (mag_nms <= WindowBuff_mag[1][2])){
				mag_nms = 0;
			}
		}
		else if ((tan_y_nms > tan_x_225_nms) && (tan_y_nms <= tan_x_675_nms)){
			// leftup and rightdown
			if((mag_nms <= WindowBuff_mag[0][0]) || (mag_nms <= WindowBuff_mag[2][2])){
				mag_nms = 0;
			}
		}
		else if ((tan_y_nms > tan_x_675_nms) || (tan_y_nms <= -tan_x_675_nms)){
			// up and down
			if((mag_nms <= WindowBuff_mag[0][1]) || (mag_nms <= WindowBuff_mag[2][1])){
				mag_nms = 0;
			}
		}
		else if ((tan_y_nms > -tan_x_675_nms) && (tan_y_nms <= -tan_x_225_nms)){
			// leftdown and rightup
			if((mag_nms <= WindowBuff_mag[2][0]) || (mag_nms <= WindowBuff_mag[0][2])){
				mag_nms = 0;
			}
		}

		if(mag_nms > upperThresh_scale){
			pixel_thr = 255;
		}
		else if(mag_nms > lowerThresh_scale){
			pixel_thr = 127;
		}
		else{
			pixel_thr = 0;
		}

		if((x > 1) && (y > 1)){
			dst[adr] = pixel_thr;
		}
		adr += 1;
		if(x == W-1){
			y += 1;
			x = 0;
		}
		else{
			x += 1;
		}
	}
}
