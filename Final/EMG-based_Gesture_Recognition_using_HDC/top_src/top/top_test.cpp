#include <iostream>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "top.h"


using namespace std;

typedef ap_fixed<22, 16, AP_RND_MIN_INF> data_t;
typedef ap_int<4> data_hdc;

int main(){
	data_EMG input[500*10];
	int data_len;
	int in_label[500*10];
	data_hdc AM_out[5*500];

	data_len = 500*10;
  
	float data_temp;
	data_t data_temp_2;

	cout << ">> Start test! \n\n";

	cout << "  start reading files\n";
	FILE *file = fopen("data_in.csv", "r"); 
    for(int i=0; i<500*10; i++){
		for(int ch=0; ch<64; ch++){
			fscanf(file, "%f,", &data_temp);
        	data_temp_2 = (data_t)data_temp;
			for(int bit=0; bit<22; bit++){
				input[i][ch*22+bit] = data_temp_2[bit];
			}
		}
		in_label[i] = 0;
    }
	fclose(file);
	cout << "  end reading files\n";


	top(input, in_label, data_len, AM_out);

	
	
	return 0;
}