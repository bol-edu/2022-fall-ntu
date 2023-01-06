//#include <iostream>
//#include <fstream>
#include "HDC.h"
 
void hdc_maxi(hls::stream<ap_axis<32,1,1,1>>* test_data, hls::stream<ap_axis<32,1,1,1>>* test_label_out, hls::stream<ap_axis<32,1,1,1>>* IM, hls::stream<ap_axis<32,1,1,1>>* AM_out)
{  

#pragma HLS INTERFACE axis register both port=test_data
#pragma HLS INTERFACE axis register both port=test_label_out
#pragma HLS INTERFACE axis register both port=IM
#pragma HLS INTERFACE axis register both port=AM_out
#pragma HLS INTERFACE s_axilite port=return

    int new_IM[1000];  
    for(int i=0; i<1000; i++){ 
    	ap_axis<32,1,1,1> tmp = IM->read();
    	new_IM[i] = tmp.data;
    } 
  
    int AM[5][1000];
	for(int i=0; i<5; i++){   
		for(int j=0; j<1000; j++){ 
			ap_axis<32,1,1,1> tmp = AM_out->read(); 
			AM[i][j] = tmp.data;
		}   
	}   

	///////////////////////// Inference /////////////////////////
	ap_axis<32,1,1,1> valDataCtrl; 

	hdc_maxi_label0:for(int d=0; d<2; d++){

		int ngram[380];
	    for(int i=0; i<380; i++){
	    	#pragma HLS UNROLL factor=380
	    	ngram[i] = 1;
	    }
 
		int test_data_d [320];
	    for(int i=0; i<320; i++){ 
	    	ap_axis<32,1,1,1> tmp = test_data->read();
	    	test_data_d[i] = tmp.data;
	    	valDataCtrl = tmp;
	    }  

	    for(int t=0; t<5; t++){ 

		    for(int e=0; e<64; e++){ 
		    	for(int i=0; i<1000; i++){
		    		s[i] = s[i] + IM[e][i] * train_data[d][t * 64 + e];
		    	}
		    } 

		    for(int i=0; i<1000; i++){ 
		    	if(s[i] >= 0){
		    		s[i] = 1;
		    	}
		    	else{
		    		s[i] = -1;
		    	}
		    }
 
		    for(int i=0; i<1000; i++){ 
		    	if(i - (4 - t) >= 0){
		    		ngram[i] = ngram[i] * s[i - (4 - t)];
		    	}
		    	else{
		    		ngram[i] = ngram[i] * s[i - (4 - t) + 1000];
		    	}
		    }
	    }
 
	    int maxSim = -1;
	    int label = -1;
	    for(int c=0; c<5; c++){ 
	    	int dot_product = 0;
	    	for(int i=0; i<380; i++){  

	    		//dot_product = dot_product + ngram[i] * AM[c][i];
	    		
	    		if(AM[c][i] == 0) dot_product = dot_product + ngram[i];
	    		else dot_product = dot_product - ngram[i];
	    	}  
	    	if(dot_product > maxSim){
	    		maxSim = dot_product;
	    		label = c;
	    	}
	    }
 
		valDataCtrl.data = label;  
	    test_label_out->write(valDataCtrl);

	    if (valDataCtrl.last) break;
	}  
	return;
}
