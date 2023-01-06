#include <iostream>
//#include <fstream>
#include "HDC.h"

using namespace std;

void hdc_train(data_hdc train_data[320], int train_label, data_hdc new_IM[1064], data_hdc AM_out[5][500]){
	#pragma HLS INLINE

	data_hdc s[500];
    data_hdc ngram[500];
	data_hdc tmp = 0;

	tmp = train_label;
	if(tmp == -1) tmp = 0;

	for(int i=0; i<500; i++){
		#pragma HLS PIPELINE II=1
		ngram[i] = 1;
	}
  
	for(int t=0; t<5; t++){ 
		for(int i=0; i<500; i++){ 
			for(int e=0; e<64; e++){
				tmp = tmp + new_IM[i + e + t] * train_data[t * 64 + e];
			} 
			if(tmp >= 0){
				s[i] = 1;
			}
			else{
				s[i] = -1;
			}
		}

		for(int i=0; i<500; i++){ 
			#pragma HLS UNROLL factor = 500
			#pragma HLS dependence variable=ngram type=inter false
			ngram[i] = ngram[i] * s[i];
		}
	}


	for(int i=0; i<500; i++){ 
		AM_out[tmp][i] = AM_out[tmp][i] + ngram[i];
	}
 	
	for(int i=0; i<5; i++){  
		for(int j=0; j<500; j++){
			#pragma HLS PIPELINE II=1 
	    	if(AM_out[i][j] >= 0){
	    		AM_out[i][j] = 1;
	    	}
	    	else{
	    		AM_out[i][j] = -1;
	    	} 
		}   
	}

	return;
}
