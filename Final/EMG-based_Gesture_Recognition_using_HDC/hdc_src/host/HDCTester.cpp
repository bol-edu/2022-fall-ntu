#include <iostream>
#include "HDC.h"

using namespace std;

int main(int argc, char *argv[])
{  
	//int AM[5][1000];  
	//int IM[1000];   
	//int test_data[3][320];  
	int test_label[3];

	//int AM_out[5][1000]; 
	//int test_label_out[3];

	hls::stream<ap_axis<32,1,1,1>> IM;
	hls::stream<ap_axis<32,1,1,1>> AM_out;
	hls::stream<ap_axis<32,1,1,1>> test_data;
	hls::stream<ap_axis<32,1,1,1>> test_label_out;

	int train_data_buff;

 
    FILE *file = fopen("IM.csv", "r"); 
    for (int j = 0; j < 1000; j++) {
        //fscanf(file, "%d,", &IM[j]);
        fscanf(file, "%d,", &train_data_buff);  

        ap_axis<32,1,1,1> valDataCtrl;

		valDataCtrl.data = 0;
		valDataCtrl.keep = 0xF;
		valDataCtrl.strb = 0;
		valDataCtrl.user = 0;
		valDataCtrl.last = 0;
		valDataCtrl.id = 0;
		valDataCtrl.dest = 0;


        if (train_data_buff == 1) valDataCtrl.data = 0;
        else valDataCtrl.data = -1;

        IM.write(valDataCtrl);
        
        //IM.write(train_data_buff);
    } 

    FILE *filee = fopen("AM_gen.csv", "r"); 
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 1000; j++) {
            //fscanf(filee, "%d,", &AM_out[i][j]);
	        fscanf(filee, "%d,", &train_data_buff);  


	        ap_axis<32,1,1,1> valDataCtrl;

			valDataCtrl.data = 0;
			valDataCtrl.keep = 0xF;
			valDataCtrl.strb = 0;
			valDataCtrl.user = 0;
			valDataCtrl.last = 0;
			valDataCtrl.id = 0;
			valDataCtrl.dest = 0;


	        if (train_data_buff == 1) valDataCtrl.data = 0;
	        else valDataCtrl.data = -1;

	        AM_out.write(valDataCtrl);

	        //AM_out.write(train_data_buff);
        }
    } 

    FILE *ssss = fopen("test_data_1.csv", "r"); 
    for (int i = 0; i < 3; i++) {

        for (int j = 0; j < 320; j++) {
            //fscanf(ssss, "%d,", &test_data[i][j]);
	        fscanf(ssss, "%d,", &train_data_buff);  

	        ap_axis<32,1,1,1> valDataCtrl;

	        if(i == 0){ 

				valDataCtrl.data = train_data_buff;
				valDataCtrl.keep = 0xF;
				valDataCtrl.strb = 0;
				valDataCtrl.user = 0;
				valDataCtrl.last = 0;
				valDataCtrl.id = 0;
				valDataCtrl.dest = 0;     


				test_data.write(valDataCtrl);   	
	        }  
	        else if(i == 2){
				valDataCtrl.data = train_data_buff;
				valDataCtrl.keep = 0xF;
				valDataCtrl.strb = 0;
				valDataCtrl.user = 0;
				if(j == 319) valDataCtrl.last = 1;
				else valDataCtrl.last = 0;
				valDataCtrl.id = 0;
				valDataCtrl.dest = 0;       
 
				test_data.write(valDataCtrl);  
	        }    
	        

	        //if(i != 1) test_data.write(train_data_buff);  
        }
    }  

    FILE *sww = fopen("test_label_golden_1.csv", "r"); 
    for (int i = 0; i < 3; i++) { 
        fscanf(sww, "%d,", &test_label[i]);  
    } 
 
	cout << ">> Start test!" << endl;

	/*for(int i=0; i<5; i++){ 
		for(int j=0; j<1000; j++){
			cout << AM[i][j] << ',';
		} 
		cout << endl;
	}*/

 
	// Execute the function with latest input
	hdc_maxi(&test_data, &test_label_out, &IM, &AM_out);
 

	/*cout << ">> Comparing against output data..." << endl;
	for(int i=0; i<5; i++){ 
		for(int j=0; j<1000; j++){
			if(AM_out[i][j] != AM[i][j]){
				cout << ">> Test failed!" << endl;
				return 1;
			}
		} 
	}

	cout << ">> Training Test passed!" << endl;
	cout << "------------------------" << endl;

	cout << ">> Comparing against output data..." << endl;*/
 
 	float total = 0;
	float correct = 0;
	for(int i=0; i<3; i+=2){   
		if(test_label[i] != -1){
			total += 1;
			int a = test_label_out.read().data;
			if(a == test_label[i]){
				correct += 1;			
			} 		

			cout << a << " --> " << test_label[i] << endl;	
		} 
	}

	cout << "Accu. = " << correct << "/" << total << " = " << float(correct/total) << endl;
	cout << "------------------------" << endl; 

	if(float(correct/total) < 0.93) return 1;

	return 0;
}
