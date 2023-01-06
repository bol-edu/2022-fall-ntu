 
#include <ap_axi_sdata.h>
#include <hls_stream.h>
 
typedef ap_int<1> reg1_t; 
typedef hls::stream<int> stream_t;


void hdc_maxi(hls::stream<ap_axis<32,1,1,1>>* test_data, hls::stream<ap_axis<32,1,1,1>>* test_label_out, hls::stream<ap_axis<32,1,1,1>>* IM, hls::stream<ap_axis<32,1,1,1>>* AM_out);

//void hdc_maxi(stream_t* test_data, stream_t* test_label_out, stream_t* IM, stream_t* AM_out);
