#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("in1", 32, hls_in, 0, "ap_vld", "in_data", 1),
	Port_Property("in1_ap_vld", 1, hls_in, 0, "ap_vld", "in_vld", 1),
	Port_Property("in2", 32, hls_in, 1, "ap_ack", "in_data", 1),
	Port_Property("in2_ap_ack", 1, hls_out, 1, "ap_ack", "in_acc", 1),
	Port_Property("in_out1_i", 32, hls_in, 2, "ap_hs", "in_data", 1),
	Port_Property("in_out1_i_ap_vld", 1, hls_in, 2, "ap_hs", "in_vld", 1),
	Port_Property("in_out1_i_ap_ack", 1, hls_out, 2, "ap_hs", "in_acc", 1),
	Port_Property("in_out1_o", 32, hls_out, 2, "ap_hs", "out_data", 1),
	Port_Property("in_out1_o_ap_vld", 1, hls_out, 2, "ap_hs", "out_vld", 1),
	Port_Property("in_out1_o_ap_ack", 1, hls_in, 2, "ap_hs", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "adders_io";
