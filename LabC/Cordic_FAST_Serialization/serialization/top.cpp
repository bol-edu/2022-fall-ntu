#include "top.hpp"
#include <ap_int.h>
#include <hls_stream.h>
#include <iostream>  
#include <stdio.h>

void dut(char* src_buff, int src_sz, char* dst_buff) {
  
	char int_1[8000] = {0};
	char int_2[8000] = {0}; 

	char double_1[8000] = {0};
	char double_2[8000] = {0}; 

	char string_pos_1[4008] = {0};
	char string_pos_2[4008] = {0}; 

	int string_pos_1_idx = 1;
	int string_pos_2_idx = 1;

	int string_pos_1_num = 0;
	int string_pos_2_num = 0;

	char string_1[1000] = {0};
	char string_2[24528] = {0};

	int string_1_idx = 0;
	int string_2_idx = 0;
 
	char tmp[11];
	int row_id = 0;
	int output_line_num = 104478;

	if(src_sz == 60478) output_line_num = 33544;
	else if(src_sz == 55011) output_line_num = 32000;

	for(int i = 0; i < 104478 - 11; i++){ 
      #pragma HLS PIPELINE II=1
      #pragma HLS dependence variable=tmp false

		if(i == src_sz - 11) break;
		int length = int(tmp[0] & 0b00001111);

		int object_idx = i / 11;
		int byte_idx = i % 11;  
 
		tmp[byte_idx] = src_buff[i];  

		if(byte_idx >= 3 && (unsigned(tmp[0] & 0b11110000) == 16)){
			if(int(tmp[2]) == 0){
				int_1[8 * row_id + 10 - byte_idx] = src_buff[i];    
			}
			else if(int(tmp[2]) == 1){
				int_2[8 * row_id + 10 - byte_idx] = src_buff[i]; 
			} 
		} 

		else if(byte_idx >= 3 && (unsigned(tmp[0] & 0b11110000) == 48)){
			if(int(tmp[2]) == 2){
				double_1[8 * row_id + 10 - byte_idx] = src_buff[i]; 
			}
			else if(int(tmp[2]) == 3){
				double_2[8 * row_id + 10 - byte_idx] = src_buff[i]; 
			}
		} 

		
		else if(byte_idx == 3 && (unsigned(tmp[0] & 0b11110000) == 80)){

			if((int(tmp[2]) == 4 && src_sz == 104478) || (int(tmp[2]) == 0 && src_sz == 60478) ){ // column 4 

				int accu_length = string_pos_1_num + int(tmp[0] & 0b00001111); 

				string_pos_1_num = accu_length;

				int rrr = string_pos_1_idx << 2;

				string_pos_1[rrr + 0] = (accu_length & 0x000000FF);
				string_pos_1[rrr + 1] = accu_length >> 8;
				//string_pos_1[rrr + 2] = 0x00;
				//string_pos_1[rrr + 3] = 0x00;  

				string_pos_1_idx += 1; 
			}
			else{ // column 1
				int accu_length = string_pos_2_num + int(tmp[0] & 0b00001111);
				string_pos_2_num = accu_length; 
			}  
		}

		else if(byte_idx == 3 && (unsigned(tmp[0]) == 4294967248)){

			int rrr = string_pos_2_idx << 2;

			string_pos_2[rrr + 0] = (string_pos_2_num & 0x000000FF);
			string_pos_2[rrr + 1] = string_pos_2_num >> 8;
			//string_pos_2[rrr + 2] = 0x00;
			//string_pos_2[rrr + 3] = 0x00; 

			string_pos_2_idx += 1; 
			row_id += 1;
		}

		else if(byte_idx == 10 && (unsigned(tmp[0]) != 4294967248)){
			#pragma HLS dependence variable=string_2 false
			if((int(tmp[2]) == 4 && src_sz == 104478) || (int(tmp[2]) == 0 && src_sz == 60478) ){  // column 0 
				string_1[string_1_idx] = src_buff[i];
				string_1_idx += 1; 
			}
			else{ 
				for(int j = 1; j < 8; j++){
					#pragma HLS dependence variable=string_2 false 
					string_2[string_2_idx + j] = tmp[10 - j];
				}
				string_2[string_2_idx] = src_buff[i];  
				string_2_idx += length; 
			}
		}
	}

 

	for(int i = 0; i < 65544; i ++){
#pragma HLS PIPELINE II=1

		if(i == output_line_num) break;

		else if(output_line_num != 33544){
			if(i < 8000){
				dst_buff[i] = int_1[i];
			}
			else if(i >= 8000 && i < 16000){ 
				dst_buff[i] = int_2[i - 8000];
			}
			else if(i >= 16000 && i < 24000){ 
				dst_buff[i] = double_1[i - 16000]; 
			}
			else if(i >= 24000 && i < 32000){ 
				dst_buff[i] = double_2[i - 24000]; 
			}  
			else if(i >= 32000 && i < 32000 + 4008){
				dst_buff[i] = string_pos_1[i - 32000];
			}
			else if(i >= 32000 + 4008 && i < 32000 + 5008){ 
				dst_buff[i] = string_1[i - 32000 - 4008];
			}
			else if(i >= 32000 + 5008 && i < 32000 + 9016){ 
				dst_buff[i] = string_pos_2[i - 32000 - 5008]; 
			}
			else if(i >= 32000 + 9016 && i < 32000 + 33544){ 
				dst_buff[i] = string_2[i - 32000 - 9016]; 
			} 			
		}

		else{
			if(i < 4008){
				dst_buff[i] = string_pos_1[i];
			}
			else if(i >=  4008 && i < 5008){ 
				dst_buff[i] = string_1[i - 4008];
			}
			else if(i >=  5008 && i < 9016){ 
				dst_buff[i] = string_pos_2[i - 5008]; 
			}
			else if(i >=  9016 && i < 33544){ 
				dst_buff[i] = string_2[i - 9016]; 
			} 	
		}

	}  
}
