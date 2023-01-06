#include <iostream>
#include "filt.h"

using namespace std;

#define NUM_SAMPLES			600

int main(int argc, char *argv[])
{
	FILE *file = fopen("raw.csv", "r");

	data_t data_in[b2_tap][64];
	data_t data_out[N][64];
	
	bool reset;
	int value;

	cout << ">> Start test! \n\n";
	
	reset = 1;
	cout << "  begin function reset\n";
	filt(reset, data_in, data_out);
	for(int row=0; row<b2_tap; row++)
		for(int ch=0; ch<64; ch++)
			data_in[row][ch] = 0;
	for(int row=0; row<b2_tap; row++)
		for(int ch=0; ch<64; ch++)
			data_out[row][ch] = 0;
	cout << "  end reset function\n";

	reset = 0;
	int counter=0;
	for(int row=0; row<128; row++) {
		for(int ch=0; ch<64; ch++) {
			fscanf(file, "%d,", &value);
			data_in[row%b2_tap][ch] = (data_t)value;
		}
		filt(reset, data_in, data_out);
		

		// cout << counter << ": \n";
		// if(counter%Period==Period-1){
		// 	for(int row=0; row<N; row++){
		// 		for(int ch=0;ch<64;ch++){
		// 			cout << data_out[row][ch] << ", ";
		// 		}
		// 		cout << endl;
		// 	}
		// }
		// counter++;

	}
	fclose(file);
	
	return 0;
}
