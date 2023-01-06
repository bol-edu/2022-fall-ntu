#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("a_dout", 24, hls_in, 0, "ap_fifo", "fifo_data", 8),
	Port_Property("a_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 8),
	Port_Property("a_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 8),
	Port_Property("b_dout", 24, hls_in, 1, "ap_fifo", "fifo_data", 8),
	Port_Property("b_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 8),
	Port_Property("b_read", 1, hls_out, 1, "ap_fifo", "fifo_update", 8),
	Port_Property("res_din", 16, hls_out, 2, "ap_fifo", "fifo_data", 8),
	Port_Property("res_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 8),
	Port_Property("res_write", 1, hls_out, 2, "ap_fifo", "fifo_update", 8),
};
const char* HLS_Design_Meta::dut_name = "matrixmul";
