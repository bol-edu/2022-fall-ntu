#include <iostream>
#include "HDC.h"

using namespace std;

int main(int argc, char *argv[])
{  
	//int AM[5][1000];  
	int IM[1000];  
	int train_data[300][320];   
	int train_label[300];  

	int AM_gen[5][1000];  
	int AM_out[5][1000];  

 
    FILE *file = fopen("../../../data/IM.csv", "r"); 
    for (int j = 0; j < 1000; j++) {
        fscanf(file, "%d,", &IM[j]);
    }

    FILE *filee = fopen("../../../data/AM_gen.csv", "r"); 
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 1000; j++) {
            fscanf(filee, "%d,", &AM_gen[i][j]);
        }
    }

    FILE *sss = fopen("../../../data/train_data.csv", "r"); 
    for (int i = 0; i < 300; i++) {
        for (int j = 0; j < 320; j++) {
            fscanf(sss, "%d,", &train_data[i][j]);
        }
    } 

    FILE *ss = fopen("../../../data/train_label.csv", "r"); 
    for (int i = 0; i < 300; i++) { 
        fscanf(ss, "%d,", &train_label[i]); 
    }  
 
	cout << ">> Start test!" << endl;
 
 
	// Execute the function with latest input
	hdc_train(train_data, train_label, IM, AM_out);
 

	cout << ">> Comparing against output data..." << endl;
	for(int i=0; i<5; i++){ 
		for(int j=0; j<500; j++){
			if(AM_out[i][j] != AM_gen[i][j]){
				cout << ">> Test failed!" << endl;
				return 1;
			}
		} 
	}

	cout << ">> Training Test passed!" << endl;
	cout << "------------------------" << endl;
	return 0;
}
