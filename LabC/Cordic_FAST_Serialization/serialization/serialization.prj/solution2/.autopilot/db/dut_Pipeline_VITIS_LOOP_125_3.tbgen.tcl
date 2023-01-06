set moduleName dut_Pipeline_VITIS_LOOP_125_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dut_Pipeline_VITIS_LOOP_125_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 8 regular {axi_master 1}  }
	{ dst_buff int 64 regular  }
	{ int_1 int 8 regular {array 8000 { 1 3 } 1 1 }  }
	{ int_2 int 8 regular {array 8000 { 1 3 } 1 1 }  }
	{ double_1 int 8 regular {array 8000 { 1 3 } 1 1 }  }
	{ double_2 int 8 regular {array 8000 { 1 3 } 1 1 }  }
	{ string_pos_1 int 8 regular {array 4008 { 1 1 } 1 1 }  }
	{ string_1 int 8 regular {array 1000 { 1 1 } 1 1 }  }
	{ string_pos_2 int 8 regular {array 4008 { 1 1 } 1 1 }  }
	{ string_2 int 8 regular {array 6132 { 1 1 } 1 1 }  }
	{ string_2_1 int 8 regular {array 6132 { 1 1 } 1 1 }  }
	{ string_2_2 int 8 regular {array 6132 { 1 1 } 1 1 }  }
	{ string_2_3 int 8 regular {array 6132 { 1 1 } 1 1 }  }
	{ icmp_ln34_1 int 1 regular  }
	{ output_line_num int 17 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "src_buff","offset": { "type": "dynamic","port_name": "src_buff","bundle": "control"},"direction": "READONLY"},{"cName": "dst_buff","offset": { "type": "dynamic","port_name": "dst_buff","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "dst_buff", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "int_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "int_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "double_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "double_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_pos_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_pos_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln34_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_line_num", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 109
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ dst_buff sc_in sc_lv 64 signal 1 } 
	{ int_1_address0 sc_out sc_lv 13 signal 2 } 
	{ int_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ int_1_q0 sc_in sc_lv 8 signal 2 } 
	{ int_2_address0 sc_out sc_lv 13 signal 3 } 
	{ int_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ int_2_q0 sc_in sc_lv 8 signal 3 } 
	{ double_1_address0 sc_out sc_lv 13 signal 4 } 
	{ double_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ double_1_q0 sc_in sc_lv 8 signal 4 } 
	{ double_2_address0 sc_out sc_lv 13 signal 5 } 
	{ double_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ double_2_q0 sc_in sc_lv 8 signal 5 } 
	{ string_pos_1_address0 sc_out sc_lv 12 signal 6 } 
	{ string_pos_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ string_pos_1_q0 sc_in sc_lv 8 signal 6 } 
	{ string_pos_1_address1 sc_out sc_lv 12 signal 6 } 
	{ string_pos_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ string_pos_1_q1 sc_in sc_lv 8 signal 6 } 
	{ string_1_address0 sc_out sc_lv 10 signal 7 } 
	{ string_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ string_1_q0 sc_in sc_lv 8 signal 7 } 
	{ string_1_address1 sc_out sc_lv 10 signal 7 } 
	{ string_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ string_1_q1 sc_in sc_lv 8 signal 7 } 
	{ string_pos_2_address0 sc_out sc_lv 12 signal 8 } 
	{ string_pos_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ string_pos_2_q0 sc_in sc_lv 8 signal 8 } 
	{ string_pos_2_address1 sc_out sc_lv 12 signal 8 } 
	{ string_pos_2_ce1 sc_out sc_logic 1 signal 8 } 
	{ string_pos_2_q1 sc_in sc_lv 8 signal 8 } 
	{ string_2_address0 sc_out sc_lv 13 signal 9 } 
	{ string_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ string_2_q0 sc_in sc_lv 8 signal 9 } 
	{ string_2_address1 sc_out sc_lv 13 signal 9 } 
	{ string_2_ce1 sc_out sc_logic 1 signal 9 } 
	{ string_2_q1 sc_in sc_lv 8 signal 9 } 
	{ string_2_1_address0 sc_out sc_lv 13 signal 10 } 
	{ string_2_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ string_2_1_q0 sc_in sc_lv 8 signal 10 } 
	{ string_2_1_address1 sc_out sc_lv 13 signal 10 } 
	{ string_2_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ string_2_1_q1 sc_in sc_lv 8 signal 10 } 
	{ string_2_2_address0 sc_out sc_lv 13 signal 11 } 
	{ string_2_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ string_2_2_q0 sc_in sc_lv 8 signal 11 } 
	{ string_2_2_address1 sc_out sc_lv 13 signal 11 } 
	{ string_2_2_ce1 sc_out sc_logic 1 signal 11 } 
	{ string_2_2_q1 sc_in sc_lv 8 signal 11 } 
	{ string_2_3_address0 sc_out sc_lv 13 signal 12 } 
	{ string_2_3_ce0 sc_out sc_logic 1 signal 12 } 
	{ string_2_3_q0 sc_in sc_lv 8 signal 12 } 
	{ string_2_3_address1 sc_out sc_lv 13 signal 12 } 
	{ string_2_3_ce1 sc_out sc_logic 1 signal 12 } 
	{ string_2_3_q1 sc_in sc_lv 8 signal 12 } 
	{ icmp_ln34_1 sc_in sc_lv 1 signal 13 } 
	{ output_line_num sc_in sc_lv 17 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "dst_buff", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dst_buff", "role": "default" }} , 
 	{ "name": "int_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "int_1", "role": "address0" }} , 
 	{ "name": "int_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_1", "role": "ce0" }} , 
 	{ "name": "int_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "int_1", "role": "q0" }} , 
 	{ "name": "int_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "int_2", "role": "address0" }} , 
 	{ "name": "int_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_2", "role": "ce0" }} , 
 	{ "name": "int_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "int_2", "role": "q0" }} , 
 	{ "name": "double_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "double_1", "role": "address0" }} , 
 	{ "name": "double_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "double_1", "role": "ce0" }} , 
 	{ "name": "double_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "double_1", "role": "q0" }} , 
 	{ "name": "double_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "double_2", "role": "address0" }} , 
 	{ "name": "double_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "double_2", "role": "ce0" }} , 
 	{ "name": "double_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "double_2", "role": "q0" }} , 
 	{ "name": "string_pos_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "string_pos_1", "role": "address0" }} , 
 	{ "name": "string_pos_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_pos_1", "role": "ce0" }} , 
 	{ "name": "string_pos_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_pos_1", "role": "q0" }} , 
 	{ "name": "string_pos_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "string_pos_1", "role": "address1" }} , 
 	{ "name": "string_pos_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_pos_1", "role": "ce1" }} , 
 	{ "name": "string_pos_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_pos_1", "role": "q1" }} , 
 	{ "name": "string_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "string_1", "role": "address0" }} , 
 	{ "name": "string_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_1", "role": "ce0" }} , 
 	{ "name": "string_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_1", "role": "q0" }} , 
 	{ "name": "string_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "string_1", "role": "address1" }} , 
 	{ "name": "string_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_1", "role": "ce1" }} , 
 	{ "name": "string_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_1", "role": "q1" }} , 
 	{ "name": "string_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "string_pos_2", "role": "address0" }} , 
 	{ "name": "string_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_pos_2", "role": "ce0" }} , 
 	{ "name": "string_pos_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_pos_2", "role": "q0" }} , 
 	{ "name": "string_pos_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "string_pos_2", "role": "address1" }} , 
 	{ "name": "string_pos_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_pos_2", "role": "ce1" }} , 
 	{ "name": "string_pos_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_pos_2", "role": "q1" }} , 
 	{ "name": "string_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2", "role": "address0" }} , 
 	{ "name": "string_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2", "role": "ce0" }} , 
 	{ "name": "string_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2", "role": "q0" }} , 
 	{ "name": "string_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2", "role": "address1" }} , 
 	{ "name": "string_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2", "role": "ce1" }} , 
 	{ "name": "string_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2", "role": "q1" }} , 
 	{ "name": "string_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_1", "role": "address0" }} , 
 	{ "name": "string_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_1", "role": "ce0" }} , 
 	{ "name": "string_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_1", "role": "q0" }} , 
 	{ "name": "string_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_1", "role": "address1" }} , 
 	{ "name": "string_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_1", "role": "ce1" }} , 
 	{ "name": "string_2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_1", "role": "q1" }} , 
 	{ "name": "string_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_2", "role": "address0" }} , 
 	{ "name": "string_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_2", "role": "ce0" }} , 
 	{ "name": "string_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_2", "role": "q0" }} , 
 	{ "name": "string_2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_2", "role": "address1" }} , 
 	{ "name": "string_2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_2", "role": "ce1" }} , 
 	{ "name": "string_2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_2", "role": "q1" }} , 
 	{ "name": "string_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_3", "role": "address0" }} , 
 	{ "name": "string_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_3", "role": "ce0" }} , 
 	{ "name": "string_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_3", "role": "q0" }} , 
 	{ "name": "string_2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_3", "role": "address1" }} , 
 	{ "name": "string_2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_3", "role": "ce1" }} , 
 	{ "name": "string_2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_3", "role": "q1" }} , 
 	{ "name": "icmp_ln34_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln34_1", "role": "default" }} , 
 	{ "name": "output_line_num", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "output_line_num", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "dut_Pipeline_VITIS_LOOP_125_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "65618",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "dst_buff", "Type" : "None", "Direction" : "I"},
			{"Name" : "int_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "int_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "double_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "double_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_pos_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_pos_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "icmp_ln34_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_line_num", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_125_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter73", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter73", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_64ns_64ns_64_2_1_U30", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U31", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U32", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut_Pipeline_VITIS_LOOP_125_3 {
		gmem {Type O LastRead 10 FirstWrite 5}
		dst_buff {Type I LastRead 0 FirstWrite -1}
		int_1 {Type I LastRead 2 FirstWrite -1}
		int_2 {Type I LastRead 2 FirstWrite -1}
		double_1 {Type I LastRead 2 FirstWrite -1}
		double_2 {Type I LastRead 2 FirstWrite -1}
		string_pos_1 {Type I LastRead 3 FirstWrite -1}
		string_1 {Type I LastRead 3 FirstWrite -1}
		string_pos_2 {Type I LastRead 3 FirstWrite -1}
		string_2 {Type I LastRead 2 FirstWrite -1}
		string_2_1 {Type I LastRead 2 FirstWrite -1}
		string_2_2 {Type I LastRead 2 FirstWrite -1}
		string_2_3 {Type I LastRead 2 FirstWrite -1}
		icmp_ln34_1 {Type I LastRead 0 FirstWrite -1}
		output_line_num {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75", "Max" : "65618"}
	, {"Name" : "Interval", "Min" : "75", "Max" : "65618"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 8 }  { m_axi_gmem_WSTRB STRB 1 1 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 8 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 11 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	dst_buff { ap_none {  { dst_buff in_data 0 64 } } }
	int_1 { ap_memory {  { int_1_address0 mem_address 1 13 }  { int_1_ce0 mem_ce 1 1 }  { int_1_q0 mem_dout 0 8 } } }
	int_2 { ap_memory {  { int_2_address0 mem_address 1 13 }  { int_2_ce0 mem_ce 1 1 }  { int_2_q0 mem_dout 0 8 } } }
	double_1 { ap_memory {  { double_1_address0 mem_address 1 13 }  { double_1_ce0 mem_ce 1 1 }  { double_1_q0 mem_dout 0 8 } } }
	double_2 { ap_memory {  { double_2_address0 mem_address 1 13 }  { double_2_ce0 mem_ce 1 1 }  { double_2_q0 mem_dout 0 8 } } }
	string_pos_1 { ap_memory {  { string_pos_1_address0 mem_address 1 12 }  { string_pos_1_ce0 mem_ce 1 1 }  { string_pos_1_q0 mem_dout 0 8 }  { string_pos_1_address1 MemPortADDR2 1 12 }  { string_pos_1_ce1 MemPortCE2 1 1 }  { string_pos_1_q1 MemPortDOUT2 0 8 } } }
	string_1 { ap_memory {  { string_1_address0 mem_address 1 10 }  { string_1_ce0 mem_ce 1 1 }  { string_1_q0 mem_dout 0 8 }  { string_1_address1 MemPortADDR2 1 10 }  { string_1_ce1 MemPortCE2 1 1 }  { string_1_q1 MemPortDOUT2 0 8 } } }
	string_pos_2 { ap_memory {  { string_pos_2_address0 mem_address 1 12 }  { string_pos_2_ce0 mem_ce 1 1 }  { string_pos_2_q0 mem_dout 0 8 }  { string_pos_2_address1 MemPortADDR2 1 12 }  { string_pos_2_ce1 MemPortCE2 1 1 }  { string_pos_2_q1 MemPortDOUT2 0 8 } } }
	string_2 { ap_memory {  { string_2_address0 mem_address 1 13 }  { string_2_ce0 mem_ce 1 1 }  { string_2_q0 mem_dout 0 8 }  { string_2_address1 MemPortADDR2 1 13 }  { string_2_ce1 MemPortCE2 1 1 }  { string_2_q1 MemPortDOUT2 0 8 } } }
	string_2_1 { ap_memory {  { string_2_1_address0 mem_address 1 13 }  { string_2_1_ce0 mem_ce 1 1 }  { string_2_1_q0 mem_dout 0 8 }  { string_2_1_address1 MemPortADDR2 1 13 }  { string_2_1_ce1 MemPortCE2 1 1 }  { string_2_1_q1 MemPortDOUT2 0 8 } } }
	string_2_2 { ap_memory {  { string_2_2_address0 mem_address 1 13 }  { string_2_2_ce0 mem_ce 1 1 }  { string_2_2_q0 mem_dout 0 8 }  { string_2_2_address1 MemPortADDR2 1 13 }  { string_2_2_ce1 MemPortCE2 1 1 }  { string_2_2_q1 MemPortDOUT2 0 8 } } }
	string_2_3 { ap_memory {  { string_2_3_address0 mem_address 1 13 }  { string_2_3_ce0 mem_ce 1 1 }  { string_2_3_q0 mem_dout 0 8 }  { string_2_3_address1 MemPortADDR2 1 13 }  { string_2_3_ce1 MemPortCE2 1 1 }  { string_2_3_q1 MemPortDOUT2 0 8 } } }
	icmp_ln34_1 { ap_none {  { icmp_ln34_1 in_data 0 1 } } }
	output_line_num { ap_none {  { output_line_num in_data 0 17 } } }
}
