#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("img_in_address0", 15, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("img_in_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("img_in_q0", 9, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("threshold", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("img_out_address0", 15, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("img_out_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("img_out_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("img_out_d0", 9, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("rows", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("cols", 32, hls_in, 4, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "fast_accel";
