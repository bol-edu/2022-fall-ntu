#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("in1", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("in2", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("in3", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("ap_return", 32, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "adders";
