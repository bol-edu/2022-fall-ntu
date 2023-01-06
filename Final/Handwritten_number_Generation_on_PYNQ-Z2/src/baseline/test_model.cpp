#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "model.h"

#include <iostream>
using namespace std;

#ifdef MODEL

int main()
{
    DTYPE input_noise[NOISE_INPUT_SIZE];
    float output[OUTPUT_SIZE];
    float gold;
    DTYPE in;
    FILE * fp = fopen("C:\\Users\\Kuo\\Vitis_HLS\\AAHLS_MNIST_GAN\\src\\weight\\input.txt","r");
    FILE * fpo = fopen("C:\\Users\\Kuo\\Vitis_HLS\\AAHLS_MNIST_GAN\\src\\weight\\output.txt","r");

	int tf = 0;

    for (int n=0 ;n<1; n++) {

		fseek(fp, NOISE_INPUT_SIZE*n, SEEK_SET);
		for(int i=0; i<NOISE_INPUT_SIZE; i++)
		{
			fscanf(fp, "%d", &in);
			input_noise[i] = in;
		}


		model(input_noise, output);

		cout << endl;
		fseek(fpo, OUTPUT_SIZE*n, SEEK_SET);
		for(int i=0; i<OUTPUT_SIZE; i++)
		{
			fscanf(fpo, "%f", &gold);
			//cout << int(output[i]) << endl;
			cout << output[i] << endl;
			//cout << tanh((output[i]-FC3_ZEROP)*FC3_SCALE) << " " << gold << endl;
			/*if (abs(tanh((output[i]-FC3_ZEROP)*FC3_SCALE) - gold) > 1e-4)
			{
				cout << i << " " << int(output[i]) << " " << gold << endl;
				tf = 1;
			}*/
		}
    }

    fclose(fp);
    fclose(fpo);

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
