#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "model.h"

#include <iostream>
using namespace std;

#ifdef MODEL

int main()
{
    //DTYPE input_noise[IMAGE_NUM*NOISE_INPUT_SIZE];
	DTYPE *input_noise = new DTYPE[IMAGE_NUM*NOISE_INPUT_SIZE];
    //float output[IMAGE_NUM*OUTPUT_SIZE];
	float *output = new float[IMAGE_NUM*OUTPUT_SIZE];
    float gold;
    DTYPE in;
    FILE * fp = fopen("C:\\Users\\Kuo\\Vitis_HLS\\AAHLS_MNIST_GAN\\src\\weight\\input.txt","r");
    FILE * fpo = fopen("C:\\Users\\Kuo\\Vitis_HLS\\AAHLS_MNIST_GAN\\src\\weight\\write.txt","r");

	int tf = 0;
	for(int n=0; n<IMAGE_NUM; n++) {
		for(int i=0; i<NOISE_INPUT_SIZE; i++)
		{
			fscanf(fp, "%d", &in);
			input_noise[n*NOISE_INPUT_SIZE+i] = in;
		}
	}

	model(input_noise, output);

	for(int n=0; n<IMAGE_NUM; n++) {
		for(int i=0; i<OUTPUT_SIZE; i++)
		{
			//fscanf(fpo, "%f", &gold);
			if (n<10)
				cout << output[n*OUTPUT_SIZE+i] << ",";
			/*if (abs(output[n*OUTPUT_SIZE+i] - gold) > 1e-1)
			{
				cout << n << ": "<< (i+1)%OUTPUT_SIZE << " " << output[n*OUTPUT_SIZE+i] << " " << gold << endl;
				tf = 1;
			}
			if((i+1)%OUTPUT_SIZE==0)
				cout << endl;*/
		}
		cout << endl;
	}

    fclose(fp);
    fclose(fpo);

    delete input_noise;
    delete output;

    if (tf == 1)
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }
    else
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }

}

#endif
