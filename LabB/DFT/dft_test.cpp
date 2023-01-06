/*
This is DFT computation using matrix vector multiplication form.
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal in time domain.
OUTPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal in frequency domain.

*/

#include<stdio.h>
#include <stdlib.h>
#include<iostream>
#include <math.h>
#include "dft.h"

struct Rmse
{
	int num_sq;
	float sum_sq;
	float error;

	Rmse(){ num_sq = 0; sum_sq = 0; error = 0; }

	float add_value(float d_n)
	{
		num_sq++;
		sum_sq += (d_n*d_n);
		error = sqrtf(sum_sq / num_sq);
		return error;
	}

};


Rmse rmse_R,  rmse_I;
hls::stream<DTYPE> real_sample, imag_sample, real_out, imag_out;
DTYPE In_R[SIZE], In_I[SIZE];
DTYPE Out_R[SIZE], Out_I[SIZE];
int main()
{
	int index;
	DTYPE gold_R, gold_I;

	FILE * fp = fopen("C:/Users/USER/HLS/labB_2/out.gold.dat","r");

	// getting input data
	for(int i=0; i<SIZE; i++)
	{
		In_R[i] = i;
		In_I[i] = 0.0;
#ifndef STREAM
		Out_R[i] = 0.0;
		Out_I[i] = 0.0;
#else
		real_sample.write(In_R[i]);
		imag_sample.write(In_I[i]);
#endif
	}
	

	// DFT
#ifdef ONE_PORT
	dft(In_R, In_I);
#else
#ifdef STREAM
	dft(&real_sample, &imag_sample, &real_out, &imag_out);
#else
	dft(In_R, In_I, Out_R, Out_I);
#endif
#endif

#ifdef STREAM
	for(int i=0; i<SIZE; i++)
	{
		Out_R[i] = real_out.read();
		Out_I[i] = imag_out.read();
	}
#endif

	// comparing with golden output
	for(int i=0; i<SIZE; i++)
	{
		fscanf(fp, "%d %f %f", &index, &gold_R, &gold_I);
		printf("Golden: %d %f %f\n", index, gold_R, gold_I);
#ifdef ONE_PORT
		printf("Ans:    %d %f %f\n", index, In_R[i], In_I[i]);
		rmse_R.add_value((float)In_R[i] - gold_R);
		rmse_I.add_value((float)In_I[i] - gold_I);
#else
		printf("Ans:    %d %f %f\n", index, Out_R[i], Out_I[i]);
		rmse_R.add_value((float)Out_R[i] - gold_R);
		rmse_I.add_value((float)Out_I[i] - gold_I);
#endif

	}
	fclose(fp);


	// printing error results
	printf("----------------------------------------------\n");
	printf("   RMSE(R)           RMSE(I)\n");
	printf("%0.15f %0.15f\n", rmse_R.error, rmse_I.error);
	printf("----------------------------------------------\n");

	if (rmse_R.error > 0.1 || rmse_I.error > 0.1 ) {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
		fprintf(stdout, "*******************************************\n");
	    return 1;
	}else {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "PASS: The output matches the golden output!\n");
		fprintf(stdout, "*******************************************\n");
	    return 0;
	}

}
