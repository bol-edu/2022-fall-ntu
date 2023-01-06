#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("Arows_V_a_0_dout", 32, hls_in, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("Arows_V_a_0_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("Arows_V_a_0_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 1),
	Port_Property("Arows_V_a_1_dout", 32, hls_in, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("Arows_V_a_1_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("Arows_V_a_1_read", 1, hls_out, 1, "ap_fifo", "fifo_update", 1),
	Port_Property("Arows_V_a_2_dout", 32, hls_in, 2, "ap_fifo", "fifo_data", 1),
	Port_Property("Arows_V_a_2_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("Arows_V_a_2_read", 1, hls_out, 2, "ap_fifo", "fifo_update", 1),
	Port_Property("Arows_V_a_3_dout", 32, hls_in, 3, "ap_fifo", "fifo_data", 1),
	Port_Property("Arows_V_a_3_empty_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("Arows_V_a_3_read", 1, hls_out, 3, "ap_fifo", "fifo_update", 1),
	Port_Property("Bcols_V_a_0_dout", 32, hls_in, 4, "ap_fifo", "fifo_data", 1),
	Port_Property("Bcols_V_a_0_empty_n", 1, hls_in, 4, "ap_fifo", "fifo_status", 1),
	Port_Property("Bcols_V_a_0_read", 1, hls_out, 4, "ap_fifo", "fifo_update", 1),
	Port_Property("Bcols_V_a_1_dout", 32, hls_in, 5, "ap_fifo", "fifo_data", 1),
	Port_Property("Bcols_V_a_1_empty_n", 1, hls_in, 5, "ap_fifo", "fifo_status", 1),
	Port_Property("Bcols_V_a_1_read", 1, hls_out, 5, "ap_fifo", "fifo_update", 1),
	Port_Property("Bcols_V_a_2_dout", 32, hls_in, 6, "ap_fifo", "fifo_data", 1),
	Port_Property("Bcols_V_a_2_empty_n", 1, hls_in, 6, "ap_fifo", "fifo_status", 1),
	Port_Property("Bcols_V_a_2_read", 1, hls_out, 6, "ap_fifo", "fifo_update", 1),
	Port_Property("Bcols_V_a_3_dout", 32, hls_in, 7, "ap_fifo", "fifo_data", 1),
	Port_Property("Bcols_V_a_3_empty_n", 1, hls_in, 7, "ap_fifo", "fifo_status", 1),
	Port_Property("Bcols_V_a_3_read", 1, hls_out, 7, "ap_fifo", "fifo_update", 1),
	Port_Property("ABpartial_out_address0", 4, hls_out, 8, "ap_memory", "mem_address", 1),
	Port_Property("ABpartial_out_ce0", 1, hls_out, 8, "ap_memory", "mem_ce", 1),
	Port_Property("ABpartial_out_d0", 32, hls_out, 8, "ap_memory", "mem_din", 1),
	Port_Property("ABpartial_out_q0", 32, hls_in, 8, "ap_memory", "mem_dout", 1),
	Port_Property("ABpartial_out_we0", 1, hls_out, 8, "ap_memory", "mem_we", 1),
	Port_Property("ABpartial_out_address1", 4, hls_out, 8, "ap_memory", "MemPortADDR2", 1),
	Port_Property("ABpartial_out_ce1", 1, hls_out, 8, "ap_memory", "MemPortCE2", 1),
	Port_Property("ABpartial_out_d1", 32, hls_out, 8, "ap_memory", "MemPortDIN2", 1),
	Port_Property("ABpartial_out_q1", 32, hls_in, 8, "ap_memory", "mem_dout", 1),
	Port_Property("ABpartial_out_we1", 1, hls_out, 8, "ap_memory", "MemPortWE2", 1),
	Port_Property("it", 32, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "blockmatmul";
