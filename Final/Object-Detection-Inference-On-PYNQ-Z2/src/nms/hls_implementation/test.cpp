#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <iostream>
#include <math.h>
#include "nms.hpp"
#include "hls_stream.h"

#define TEST_NUM 50
// #define TEST_NUM 5823

struct Rmse
{
	int num_sq;
	float sum_sq;
	float error;

	Rmse() { num_sq = 0; sum_sq = 0; error = 0; }

	float add_value(float d_n)
	{
		num_sq++;
		sum_sq += (d_n*d_n);
		error = sqrtf(sum_sq / num_sq);
		return error;
	}

};

Rmse rmse_box, rmse_class;

float pred;
fixed nms_bboxes[S*S*5];
unsigned nms_class_preds[S*S], nms_num;

int main()
{
	float gold_bboxes[5], gold_class_preds_float; 
	unsigned gold_class_preds;

	for (int k = 0;k < TEST_NUM;++k) {
		std::string inputpath = "C:/Users/user/Desktop/AAHLS/final/model_out/" + std::to_string(k) + ".txt";
		std::string outputpath = "C:/Users/user/Desktop/AAHLS/final/nms_out/" + std::to_string(k) + ".txt";
		FILE *fin = fopen(inputpath.c_str(), "r");
		FILE *fgt = fopen(outputpath.c_str(), "r");
		std::cout << "processing " << k << ".txt..." << std::endl;
		// getting input data
		static hls::stream<fixed> inData;
		for (int i = 0;i < S*S*(C+B*5);++i)
		{
			fscanf(fin, "%f", &pred);
			inData << (fixed)pred;
		}
		fclose(fin);

		// NMS
		nms(inData, nms_bboxes, nms_class_preds, &nms_num);

		// comparing with golden output
		int gold_num = 0;
		while (true) {
			int end = fscanf(fgt, "%f %f %f %f %f %f", &gold_class_preds_float
										             , &gold_bboxes[0]
										             , &gold_bboxes[1]
										             , &gold_bboxes[2]
										             , &gold_bboxes[3]
										             , &gold_bboxes[4]
										             );
			if (end == -1) break;
			for (int j = 0;j < 5;++j) {
				rmse_box.add_value((float)nms_bboxes[gold_num*5+j] - gold_bboxes[j]);
			}
			gold_class_preds = (unsigned)(gold_class_preds_float);                 
			rmse_class.add_value(nms_class_preds[gold_num] - gold_class_preds);
			++gold_num;
		}
		fclose(fgt);
		// printing error results
		if (gold_num != nms_num) {
			fprintf(stdout, "***********************************************\n");
			fprintf(stdout, "FAIL: Output NUM DOES NOT match the golden output\n");
			fprintf(stdout, "***********************************************\n");
			return 1;
		}
	}
	
	// printing error results
	printf("----------------------------------------------\n");
	printf("   RMSE(bboxes)      RMSE(class_preds)\n");
	printf("%0.15f %0.15f\n", rmse_box.error, rmse_class.error);
	printf("----------------------------------------------\n");

	if (rmse_box.error > 0.1 || rmse_class.error > 0.0001) {
		fprintf(stdout, "***********************************************\n");
		fprintf(stdout, "FAIL: Output VALUE DOES NOT match the golden output\n");
		fprintf(stdout, "***********************************************\n");
	    return 1;
	}else {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "PASS: The output matches the golden output!\n");
		fprintf(stdout, "*******************************************\n");
	    return 0;
	}

}
