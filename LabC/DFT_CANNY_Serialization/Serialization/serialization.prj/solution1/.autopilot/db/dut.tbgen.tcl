set moduleName dut
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ src int 8 regular {axi_s 0 volatile  { src Data } }  }
	{ size int 32 regular {axi_slave 0}  }
	{ dst int 8 regular {axi_s 1 volatile  { dst Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "size", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "dst", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ src_TDATA sc_in sc_lv 8 signal 0 } 
	{ src_TVALID sc_in sc_logic 1 invld 0 } 
	{ src_TREADY sc_out sc_logic 1 inacc 0 } 
	{ dst_TDATA sc_out sc_lv 8 signal 2 } 
	{ dst_TVALID sc_out sc_logic 1 outvld 2 } 
	{ dst_TREADY sc_in sc_logic 1 outacc 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"dut","role":"start","value":"0","valid_bit":"0"},{"name":"dut","role":"continue","value":"0","valid_bit":"4"},{"name":"dut","role":"auto_start","value":"0","valid_bit":"7"},{"name":"size","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"dut","role":"start","value":"0","valid_bit":"0"},{"name":"dut","role":"done","value":"0","valid_bit":"1"},{"name":"dut","role":"idle","value":"0","valid_bit":"2"},{"name":"dut","role":"ready","value":"0","valid_bit":"3"},{"name":"dut","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "src_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src", "role": "TDATA" }} , 
 	{ "name": "src_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "src", "role": "TVALID" }} , 
 	{ "name": "src_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "src", "role": "TREADY" }} , 
 	{ "name": "dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "TDATA" }} , 
 	{ "name": "dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst", "role": "TVALID" }} , 
 	{ "name": "dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "99", "136", "137", "138", "139"],
		"CDFG" : "dut",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104621", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_dut_Pipeline_OBJ_LOOP_fu_6828", "Port" : "src", "Inst_start_state" : "40", "Inst_end_state" : "41"}]},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_mergeBuffer_fu_6955", "Port" : "dst", "Inst_start_state" : "140", "Inst_end_state" : "141"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf0_8_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf0_9_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf0_10_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf0_11_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf0_12_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf0_13_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf0_14_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf1_8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf1_9_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf1_10_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf1_11_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf1_12_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf1_13_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf1_14_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf2_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf2_8_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf2_9_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf2_10_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf2_11_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf2_12_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf2_13_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf2_14_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf3_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf3_8_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf3_9_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf3_10_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf3_11_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf3_12_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf3_13_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf3_14_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf4_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf4_8_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf4_9_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf4_10_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf4_11_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf4_12_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf4_13_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf4_14_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf5_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf5_8_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf5_9_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf5_10_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf5_11_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf5_12_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf5_13_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_buf5_14_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf0_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf0_8_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf0_9_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf0_10_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf0_11_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf0_12_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf0_13_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf0_14_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf1_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf1_8_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf1_9_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf1_10_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf1_11_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf1_12_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf1_13_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf1_14_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf2_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf2_8_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf2_9_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf2_10_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf2_11_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf2_12_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf2_13_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf2_14_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf3_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf3_8_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf3_9_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf3_10_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf3_11_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf3_12_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf3_13_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf3_14_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf4_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf4_8_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf4_9_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf4_10_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf4_11_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf4_12_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf4_13_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf4_14_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf5_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf5_8_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf5_9_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf5_10_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf5_11_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf5_12_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf5_13_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_buf5_14_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_OBJ_LOOP_fu_6828", "Parent" : "0", "Child" : ["98"],
		"CDFG" : "dut_Pipeline_OBJ_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104469", "EstimateLatencyMax" : "104469",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf5_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf5_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf5_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf5_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf5_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf5_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf5_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf5_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf5_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf5_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf5_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf5_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf5_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf5_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf4_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf4_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf4_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf4_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf4_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf4_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf4_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf4_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf4_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf4_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf4_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf4_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf4_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf4_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf3_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf3_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf3_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf3_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf3_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf3_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf3_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf3_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf3_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf3_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf3_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf3_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf3_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf3_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf2_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf2_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf2_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf2_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf2_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf2_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf2_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf2_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf2_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf2_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf2_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf2_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf2_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf2_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf1_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf1_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf1_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf1_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf1_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf1_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf1_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf1_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf1_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf1_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf1_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf1_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf1_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf1_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf0_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf0_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf0_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf0_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf0_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf0_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf0_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "val_buf0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf0_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf0_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf0_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf0_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf0_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf0_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf0_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_buf0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "src", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size0_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "size1_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "size2_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "size3_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "size4_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "size5_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "val_size0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "val_size1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "val_size2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "val_size3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "val_size4_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "val_size5_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "trunc_ln171_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "OBJ_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_OBJ_LOOP_fu_6828.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955", "Parent" : "0", "Child" : ["100", "103", "106", "109", "112", "115", "118", "121", "124", "127", "130", "133"],
		"CDFG" : "mergeBuffer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "dst", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "dst", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "dst", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "dst", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "dst", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "dst", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "dst", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "dst", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "dst", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "dst", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "dst", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "dst", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "buf0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "size0", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_size0", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_4", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_6", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_7", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "size1", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_3", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_4", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_5", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_6", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_7", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_size1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_4", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_5", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_7", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "size2", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_0", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_2", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_3", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_4", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_5", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_6", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_7", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_size2", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_0", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_1", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_2", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_3", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_4", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_5", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_6", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_7", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "size3", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_0", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_2", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_3", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_4", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_5", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_6", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_7", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_size3", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_0", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_2", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_3", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_4", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_5", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_6", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_7", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "size4", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_0", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_1", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_2", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_3", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_4", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_5", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_6", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_7", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_size4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_0", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_2", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_3", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_4", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_5", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_6", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_7", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "size5", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_0", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_1", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_2", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_3", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_4", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_5", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_6", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_7", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_size5", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_1_fu_332", "Parent" : "99", "Child" : ["101", "102"],
		"CDFG" : "mergeBuffer_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln96", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_1_fu_332.mux_83_8_1_1_U123", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_1_fu_332.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_2_fu_356", "Parent" : "99", "Child" : ["104", "105"],
		"CDFG" : "mergeBuffer_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln100", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_2_fu_356.mux_83_8_1_1_U135", "Parent" : "103"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_2_fu_356.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_3_fu_379", "Parent" : "99", "Child" : ["107", "108"],
		"CDFG" : "mergeBuffer_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln104", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_3_fu_379.mux_83_8_1_1_U146", "Parent" : "106"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_3_fu_379.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_4_fu_402", "Parent" : "99", "Child" : ["110", "111"],
		"CDFG" : "mergeBuffer_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln108", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_4_fu_402.mux_83_8_1_1_U157", "Parent" : "109"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_4_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_5_fu_425", "Parent" : "99", "Child" : ["113", "114"],
		"CDFG" : "mergeBuffer_Pipeline_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_5_fu_425.mux_83_8_1_1_U168", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_5_fu_425.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_6_fu_448", "Parent" : "99", "Child" : ["116", "117"],
		"CDFG" : "mergeBuffer_Pipeline_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln116", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_6_fu_448.mux_83_8_1_1_U179", "Parent" : "115"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_6_fu_448.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_7_fu_471", "Parent" : "99", "Child" : ["119", "120"],
		"CDFG" : "mergeBuffer_Pipeline_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln120", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_7_fu_471.mux_83_8_1_1_U190", "Parent" : "118"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_7_fu_471.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_8_fu_494", "Parent" : "99", "Child" : ["122", "123"],
		"CDFG" : "mergeBuffer_Pipeline_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln124", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_8_fu_494.mux_83_8_1_1_U201", "Parent" : "121"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_8_fu_494.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_9_fu_517", "Parent" : "99", "Child" : ["125", "126"],
		"CDFG" : "mergeBuffer_Pipeline_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln128", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_9_fu_517.mux_83_8_1_1_U212", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_9_fu_517.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_10_fu_540", "Parent" : "99", "Child" : ["128", "129"],
		"CDFG" : "mergeBuffer_Pipeline_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln132", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_10_fu_540.mux_83_8_1_1_U223", "Parent" : "127"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_10_fu_540.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_11_fu_563", "Parent" : "99", "Child" : ["131", "132"],
		"CDFG" : "mergeBuffer_Pipeline_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln136", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_11_fu_563.mux_83_8_1_1_U234", "Parent" : "130"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_11_fu_563.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_12_fu_586", "Parent" : "99", "Child" : ["134", "135"],
		"CDFG" : "mergeBuffer_Pipeline_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln140", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_12_fu_586.mux_83_8_1_1_U245", "Parent" : "133"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_fu_6955.grp_mergeBuffer_Pipeline_12_fu_586.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_33ns_5ns_33_37_seq_1_U365", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_src_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut {
		src {Type I LastRead 11 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}}
	dut_Pipeline_OBJ_LOOP {
		empty {Type I LastRead 0 FirstWrite -1}
		val_buf5_14 {Type O LastRead -1 FirstWrite 4}
		val_buf5_13 {Type O LastRead -1 FirstWrite 4}
		val_buf5_12 {Type O LastRead -1 FirstWrite 4}
		val_buf5_11 {Type O LastRead -1 FirstWrite 4}
		val_buf5_10 {Type O LastRead -1 FirstWrite 4}
		val_buf5_9 {Type O LastRead -1 FirstWrite 4}
		val_buf5_8 {Type O LastRead -1 FirstWrite 4}
		val_buf5 {Type O LastRead -1 FirstWrite 4}
		dst_buf5_14 {Type O LastRead -1 FirstWrite 3}
		dst_buf5_13 {Type O LastRead -1 FirstWrite 3}
		dst_buf5_12 {Type O LastRead -1 FirstWrite 3}
		dst_buf5_11 {Type O LastRead -1 FirstWrite 3}
		dst_buf5_10 {Type O LastRead -1 FirstWrite 3}
		dst_buf5_9 {Type O LastRead -1 FirstWrite 3}
		dst_buf5_8 {Type O LastRead -1 FirstWrite 3}
		dst_buf5 {Type O LastRead -1 FirstWrite 3}
		val_buf4_14 {Type O LastRead -1 FirstWrite 4}
		val_buf4_13 {Type O LastRead -1 FirstWrite 4}
		val_buf4_12 {Type O LastRead -1 FirstWrite 4}
		val_buf4_11 {Type O LastRead -1 FirstWrite 4}
		val_buf4_10 {Type O LastRead -1 FirstWrite 4}
		val_buf4_9 {Type O LastRead -1 FirstWrite 4}
		val_buf4_8 {Type O LastRead -1 FirstWrite 4}
		val_buf4 {Type O LastRead -1 FirstWrite 4}
		dst_buf4_14 {Type O LastRead -1 FirstWrite 3}
		dst_buf4_13 {Type O LastRead -1 FirstWrite 3}
		dst_buf4_12 {Type O LastRead -1 FirstWrite 3}
		dst_buf4_11 {Type O LastRead -1 FirstWrite 3}
		dst_buf4_10 {Type O LastRead -1 FirstWrite 3}
		dst_buf4_9 {Type O LastRead -1 FirstWrite 3}
		dst_buf4_8 {Type O LastRead -1 FirstWrite 3}
		dst_buf4 {Type O LastRead -1 FirstWrite 3}
		val_buf3_14 {Type O LastRead -1 FirstWrite 4}
		val_buf3_13 {Type O LastRead -1 FirstWrite 4}
		val_buf3_12 {Type O LastRead -1 FirstWrite 4}
		val_buf3_11 {Type O LastRead -1 FirstWrite 4}
		val_buf3_10 {Type O LastRead -1 FirstWrite 4}
		val_buf3_9 {Type O LastRead -1 FirstWrite 4}
		val_buf3_8 {Type O LastRead -1 FirstWrite 4}
		val_buf3 {Type O LastRead -1 FirstWrite 4}
		dst_buf3_14 {Type O LastRead -1 FirstWrite 3}
		dst_buf3_13 {Type O LastRead -1 FirstWrite 3}
		dst_buf3_12 {Type O LastRead -1 FirstWrite 3}
		dst_buf3_11 {Type O LastRead -1 FirstWrite 3}
		dst_buf3_10 {Type O LastRead -1 FirstWrite 3}
		dst_buf3_9 {Type O LastRead -1 FirstWrite 3}
		dst_buf3_8 {Type O LastRead -1 FirstWrite 3}
		dst_buf3 {Type O LastRead -1 FirstWrite 3}
		val_buf2_14 {Type O LastRead -1 FirstWrite 4}
		val_buf2_13 {Type O LastRead -1 FirstWrite 4}
		val_buf2_12 {Type O LastRead -1 FirstWrite 4}
		val_buf2_11 {Type O LastRead -1 FirstWrite 4}
		val_buf2_10 {Type O LastRead -1 FirstWrite 4}
		val_buf2_9 {Type O LastRead -1 FirstWrite 4}
		val_buf2_8 {Type O LastRead -1 FirstWrite 4}
		val_buf2 {Type O LastRead -1 FirstWrite 4}
		dst_buf2_14 {Type O LastRead -1 FirstWrite 3}
		dst_buf2_13 {Type O LastRead -1 FirstWrite 3}
		dst_buf2_12 {Type O LastRead -1 FirstWrite 3}
		dst_buf2_11 {Type O LastRead -1 FirstWrite 3}
		dst_buf2_10 {Type O LastRead -1 FirstWrite 3}
		dst_buf2_9 {Type O LastRead -1 FirstWrite 3}
		dst_buf2_8 {Type O LastRead -1 FirstWrite 3}
		dst_buf2 {Type O LastRead -1 FirstWrite 3}
		val_buf1_14 {Type O LastRead -1 FirstWrite 4}
		val_buf1_13 {Type O LastRead -1 FirstWrite 4}
		val_buf1_12 {Type O LastRead -1 FirstWrite 4}
		val_buf1_11 {Type O LastRead -1 FirstWrite 4}
		val_buf1_10 {Type O LastRead -1 FirstWrite 4}
		val_buf1_9 {Type O LastRead -1 FirstWrite 4}
		val_buf1_8 {Type O LastRead -1 FirstWrite 4}
		val_buf1 {Type O LastRead -1 FirstWrite 4}
		dst_buf1_14 {Type O LastRead -1 FirstWrite 3}
		dst_buf1_13 {Type O LastRead -1 FirstWrite 3}
		dst_buf1_12 {Type O LastRead -1 FirstWrite 3}
		dst_buf1_11 {Type O LastRead -1 FirstWrite 3}
		dst_buf1_10 {Type O LastRead -1 FirstWrite 3}
		dst_buf1_9 {Type O LastRead -1 FirstWrite 3}
		dst_buf1_8 {Type O LastRead -1 FirstWrite 3}
		dst_buf1 {Type O LastRead -1 FirstWrite 3}
		val_buf0_14 {Type O LastRead -1 FirstWrite 4}
		val_buf0_13 {Type O LastRead -1 FirstWrite 4}
		val_buf0_12 {Type O LastRead -1 FirstWrite 4}
		val_buf0_11 {Type O LastRead -1 FirstWrite 4}
		val_buf0_10 {Type O LastRead -1 FirstWrite 4}
		val_buf0_9 {Type O LastRead -1 FirstWrite 4}
		val_buf0_8 {Type O LastRead -1 FirstWrite 4}
		val_buf0 {Type O LastRead -1 FirstWrite 4}
		dst_buf0_14 {Type O LastRead -1 FirstWrite 3}
		dst_buf0_13 {Type O LastRead -1 FirstWrite 3}
		dst_buf0_12 {Type O LastRead -1 FirstWrite 3}
		dst_buf0_11 {Type O LastRead -1 FirstWrite 3}
		dst_buf0_10 {Type O LastRead -1 FirstWrite 3}
		dst_buf0_9 {Type O LastRead -1 FirstWrite 3}
		dst_buf0_8 {Type O LastRead -1 FirstWrite 3}
		dst_buf0 {Type O LastRead -1 FirstWrite 3}
		src {Type I LastRead 11 FirstWrite -1}
		size0_15_out {Type O LastRead -1 FirstWrite 1}
		size1_15_out {Type O LastRead -1 FirstWrite 1}
		size2_15_out {Type O LastRead -1 FirstWrite 1}
		size3_15_out {Type O LastRead -1 FirstWrite 1}
		size4_15_out {Type O LastRead -1 FirstWrite 1}
		size5_16_out {Type O LastRead -1 FirstWrite 1}
		val_size0_3_out {Type O LastRead -1 FirstWrite 1}
		val_size1_3_out {Type O LastRead -1 FirstWrite 1}
		val_size2_3_out {Type O LastRead -1 FirstWrite 1}
		val_size3_3_out {Type O LastRead -1 FirstWrite 1}
		val_size4_3_out {Type O LastRead -1 FirstWrite 1}
		val_size5_4_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_1_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_2_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_3_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_4_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_5_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_6_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_7_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_8_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_9_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_out {Type O LastRead -1 FirstWrite 1}
		trunc_ln171_10_out {Type O LastRead -1 FirstWrite 1}}
	mergeBuffer {
		dst {Type O LastRead -1 FirstWrite 2}
		buf0_0 {Type I LastRead 1 FirstWrite -1}
		buf0_1 {Type I LastRead 1 FirstWrite -1}
		buf0_2 {Type I LastRead 1 FirstWrite -1}
		buf0_3 {Type I LastRead 1 FirstWrite -1}
		buf0_4 {Type I LastRead 1 FirstWrite -1}
		buf0_5 {Type I LastRead 1 FirstWrite -1}
		buf0_6 {Type I LastRead 1 FirstWrite -1}
		buf0_7 {Type I LastRead 1 FirstWrite -1}
		size0 {Type I LastRead 0 FirstWrite -1}
		val_buf0_0 {Type I LastRead 1 FirstWrite -1}
		val_buf0_1 {Type I LastRead 1 FirstWrite -1}
		val_buf0_2 {Type I LastRead 1 FirstWrite -1}
		val_buf0_3 {Type I LastRead 1 FirstWrite -1}
		val_buf0_4 {Type I LastRead 1 FirstWrite -1}
		val_buf0_5 {Type I LastRead 1 FirstWrite -1}
		val_buf0_6 {Type I LastRead 1 FirstWrite -1}
		val_buf0_7 {Type I LastRead 1 FirstWrite -1}
		val_size0 {Type I LastRead 0 FirstWrite -1}
		buf1_0 {Type I LastRead 1 FirstWrite -1}
		buf1_1 {Type I LastRead 1 FirstWrite -1}
		buf1_2 {Type I LastRead 1 FirstWrite -1}
		buf1_3 {Type I LastRead 1 FirstWrite -1}
		buf1_4 {Type I LastRead 1 FirstWrite -1}
		buf1_5 {Type I LastRead 1 FirstWrite -1}
		buf1_6 {Type I LastRead 1 FirstWrite -1}
		buf1_7 {Type I LastRead 1 FirstWrite -1}
		size1 {Type I LastRead 0 FirstWrite -1}
		val_buf1_0 {Type I LastRead 1 FirstWrite -1}
		val_buf1_1 {Type I LastRead 1 FirstWrite -1}
		val_buf1_2 {Type I LastRead 1 FirstWrite -1}
		val_buf1_3 {Type I LastRead 1 FirstWrite -1}
		val_buf1_4 {Type I LastRead 1 FirstWrite -1}
		val_buf1_5 {Type I LastRead 1 FirstWrite -1}
		val_buf1_6 {Type I LastRead 1 FirstWrite -1}
		val_buf1_7 {Type I LastRead 1 FirstWrite -1}
		val_size1 {Type I LastRead 0 FirstWrite -1}
		buf2_0 {Type I LastRead 1 FirstWrite -1}
		buf2_1 {Type I LastRead 1 FirstWrite -1}
		buf2_2 {Type I LastRead 1 FirstWrite -1}
		buf2_3 {Type I LastRead 1 FirstWrite -1}
		buf2_4 {Type I LastRead 1 FirstWrite -1}
		buf2_5 {Type I LastRead 1 FirstWrite -1}
		buf2_6 {Type I LastRead 1 FirstWrite -1}
		buf2_7 {Type I LastRead 1 FirstWrite -1}
		size2 {Type I LastRead 0 FirstWrite -1}
		val_buf2_0 {Type I LastRead 1 FirstWrite -1}
		val_buf2_1 {Type I LastRead 1 FirstWrite -1}
		val_buf2_2 {Type I LastRead 1 FirstWrite -1}
		val_buf2_3 {Type I LastRead 1 FirstWrite -1}
		val_buf2_4 {Type I LastRead 1 FirstWrite -1}
		val_buf2_5 {Type I LastRead 1 FirstWrite -1}
		val_buf2_6 {Type I LastRead 1 FirstWrite -1}
		val_buf2_7 {Type I LastRead 1 FirstWrite -1}
		val_size2 {Type I LastRead 0 FirstWrite -1}
		buf3_0 {Type I LastRead 1 FirstWrite -1}
		buf3_1 {Type I LastRead 1 FirstWrite -1}
		buf3_2 {Type I LastRead 1 FirstWrite -1}
		buf3_3 {Type I LastRead 1 FirstWrite -1}
		buf3_4 {Type I LastRead 1 FirstWrite -1}
		buf3_5 {Type I LastRead 1 FirstWrite -1}
		buf3_6 {Type I LastRead 1 FirstWrite -1}
		buf3_7 {Type I LastRead 1 FirstWrite -1}
		size3 {Type I LastRead 0 FirstWrite -1}
		val_buf3_0 {Type I LastRead 1 FirstWrite -1}
		val_buf3_1 {Type I LastRead 1 FirstWrite -1}
		val_buf3_2 {Type I LastRead 1 FirstWrite -1}
		val_buf3_3 {Type I LastRead 1 FirstWrite -1}
		val_buf3_4 {Type I LastRead 1 FirstWrite -1}
		val_buf3_5 {Type I LastRead 1 FirstWrite -1}
		val_buf3_6 {Type I LastRead 1 FirstWrite -1}
		val_buf3_7 {Type I LastRead 1 FirstWrite -1}
		val_size3 {Type I LastRead 0 FirstWrite -1}
		buf4_0 {Type I LastRead 1 FirstWrite -1}
		buf4_1 {Type I LastRead 1 FirstWrite -1}
		buf4_2 {Type I LastRead 1 FirstWrite -1}
		buf4_3 {Type I LastRead 1 FirstWrite -1}
		buf4_4 {Type I LastRead 1 FirstWrite -1}
		buf4_5 {Type I LastRead 1 FirstWrite -1}
		buf4_6 {Type I LastRead 1 FirstWrite -1}
		buf4_7 {Type I LastRead 1 FirstWrite -1}
		size4 {Type I LastRead 0 FirstWrite -1}
		val_buf4_0 {Type I LastRead 1 FirstWrite -1}
		val_buf4_1 {Type I LastRead 1 FirstWrite -1}
		val_buf4_2 {Type I LastRead 1 FirstWrite -1}
		val_buf4_3 {Type I LastRead 1 FirstWrite -1}
		val_buf4_4 {Type I LastRead 1 FirstWrite -1}
		val_buf4_5 {Type I LastRead 1 FirstWrite -1}
		val_buf4_6 {Type I LastRead 1 FirstWrite -1}
		val_buf4_7 {Type I LastRead 1 FirstWrite -1}
		val_size4 {Type I LastRead 0 FirstWrite -1}
		buf5_0 {Type I LastRead 1 FirstWrite -1}
		buf5_1 {Type I LastRead 1 FirstWrite -1}
		buf5_2 {Type I LastRead 1 FirstWrite -1}
		buf5_3 {Type I LastRead 1 FirstWrite -1}
		buf5_4 {Type I LastRead 1 FirstWrite -1}
		buf5_5 {Type I LastRead 1 FirstWrite -1}
		buf5_6 {Type I LastRead 1 FirstWrite -1}
		buf5_7 {Type I LastRead 1 FirstWrite -1}
		size5 {Type I LastRead 0 FirstWrite -1}
		val_buf5_0 {Type I LastRead 1 FirstWrite -1}
		val_buf5_1 {Type I LastRead 1 FirstWrite -1}
		val_buf5_2 {Type I LastRead 1 FirstWrite -1}
		val_buf5_3 {Type I LastRead 1 FirstWrite -1}
		val_buf5_4 {Type I LastRead 1 FirstWrite -1}
		val_buf5_5 {Type I LastRead 1 FirstWrite -1}
		val_buf5_6 {Type I LastRead 1 FirstWrite -1}
		val_buf5_7 {Type I LastRead 1 FirstWrite -1}
		val_size5 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_1 {
		buf0_0 {Type I LastRead 1 FirstWrite -1}
		buf0_1 {Type I LastRead 1 FirstWrite -1}
		buf0_2 {Type I LastRead 1 FirstWrite -1}
		buf0_3 {Type I LastRead 1 FirstWrite -1}
		buf0_4 {Type I LastRead 1 FirstWrite -1}
		buf0_5 {Type I LastRead 1 FirstWrite -1}
		buf0_6 {Type I LastRead 1 FirstWrite -1}
		buf0_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln96 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_2 {
		val_buf0_0 {Type I LastRead 1 FirstWrite -1}
		val_buf0_1 {Type I LastRead 1 FirstWrite -1}
		val_buf0_2 {Type I LastRead 1 FirstWrite -1}
		val_buf0_3 {Type I LastRead 1 FirstWrite -1}
		val_buf0_4 {Type I LastRead 1 FirstWrite -1}
		val_buf0_5 {Type I LastRead 1 FirstWrite -1}
		val_buf0_6 {Type I LastRead 1 FirstWrite -1}
		val_buf0_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln100 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_3 {
		buf1_0 {Type I LastRead 1 FirstWrite -1}
		buf1_1 {Type I LastRead 1 FirstWrite -1}
		buf1_2 {Type I LastRead 1 FirstWrite -1}
		buf1_3 {Type I LastRead 1 FirstWrite -1}
		buf1_4 {Type I LastRead 1 FirstWrite -1}
		buf1_5 {Type I LastRead 1 FirstWrite -1}
		buf1_6 {Type I LastRead 1 FirstWrite -1}
		buf1_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln104 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_4 {
		val_buf1_0 {Type I LastRead 1 FirstWrite -1}
		val_buf1_1 {Type I LastRead 1 FirstWrite -1}
		val_buf1_2 {Type I LastRead 1 FirstWrite -1}
		val_buf1_3 {Type I LastRead 1 FirstWrite -1}
		val_buf1_4 {Type I LastRead 1 FirstWrite -1}
		val_buf1_5 {Type I LastRead 1 FirstWrite -1}
		val_buf1_6 {Type I LastRead 1 FirstWrite -1}
		val_buf1_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln108 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_5 {
		buf2_0 {Type I LastRead 1 FirstWrite -1}
		buf2_1 {Type I LastRead 1 FirstWrite -1}
		buf2_2 {Type I LastRead 1 FirstWrite -1}
		buf2_3 {Type I LastRead 1 FirstWrite -1}
		buf2_4 {Type I LastRead 1 FirstWrite -1}
		buf2_5 {Type I LastRead 1 FirstWrite -1}
		buf2_6 {Type I LastRead 1 FirstWrite -1}
		buf2_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_6 {
		val_buf2_0 {Type I LastRead 1 FirstWrite -1}
		val_buf2_1 {Type I LastRead 1 FirstWrite -1}
		val_buf2_2 {Type I LastRead 1 FirstWrite -1}
		val_buf2_3 {Type I LastRead 1 FirstWrite -1}
		val_buf2_4 {Type I LastRead 1 FirstWrite -1}
		val_buf2_5 {Type I LastRead 1 FirstWrite -1}
		val_buf2_6 {Type I LastRead 1 FirstWrite -1}
		val_buf2_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln116 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_7 {
		buf3_0 {Type I LastRead 1 FirstWrite -1}
		buf3_1 {Type I LastRead 1 FirstWrite -1}
		buf3_2 {Type I LastRead 1 FirstWrite -1}
		buf3_3 {Type I LastRead 1 FirstWrite -1}
		buf3_4 {Type I LastRead 1 FirstWrite -1}
		buf3_5 {Type I LastRead 1 FirstWrite -1}
		buf3_6 {Type I LastRead 1 FirstWrite -1}
		buf3_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln120 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_8 {
		val_buf3_0 {Type I LastRead 1 FirstWrite -1}
		val_buf3_1 {Type I LastRead 1 FirstWrite -1}
		val_buf3_2 {Type I LastRead 1 FirstWrite -1}
		val_buf3_3 {Type I LastRead 1 FirstWrite -1}
		val_buf3_4 {Type I LastRead 1 FirstWrite -1}
		val_buf3_5 {Type I LastRead 1 FirstWrite -1}
		val_buf3_6 {Type I LastRead 1 FirstWrite -1}
		val_buf3_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln124 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_9 {
		buf4_0 {Type I LastRead 1 FirstWrite -1}
		buf4_1 {Type I LastRead 1 FirstWrite -1}
		buf4_2 {Type I LastRead 1 FirstWrite -1}
		buf4_3 {Type I LastRead 1 FirstWrite -1}
		buf4_4 {Type I LastRead 1 FirstWrite -1}
		buf4_5 {Type I LastRead 1 FirstWrite -1}
		buf4_6 {Type I LastRead 1 FirstWrite -1}
		buf4_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln128 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_10 {
		val_buf4_0 {Type I LastRead 1 FirstWrite -1}
		val_buf4_1 {Type I LastRead 1 FirstWrite -1}
		val_buf4_2 {Type I LastRead 1 FirstWrite -1}
		val_buf4_3 {Type I LastRead 1 FirstWrite -1}
		val_buf4_4 {Type I LastRead 1 FirstWrite -1}
		val_buf4_5 {Type I LastRead 1 FirstWrite -1}
		val_buf4_6 {Type I LastRead 1 FirstWrite -1}
		val_buf4_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln132 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_11 {
		buf5_0 {Type I LastRead 1 FirstWrite -1}
		buf5_1 {Type I LastRead 1 FirstWrite -1}
		buf5_2 {Type I LastRead 1 FirstWrite -1}
		buf5_3 {Type I LastRead 1 FirstWrite -1}
		buf5_4 {Type I LastRead 1 FirstWrite -1}
		buf5_5 {Type I LastRead 1 FirstWrite -1}
		buf5_6 {Type I LastRead 1 FirstWrite -1}
		buf5_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln136 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_12 {
		val_buf5_0 {Type I LastRead 1 FirstWrite -1}
		val_buf5_1 {Type I LastRead 1 FirstWrite -1}
		val_buf5_2 {Type I LastRead 1 FirstWrite -1}
		val_buf5_3 {Type I LastRead 1 FirstWrite -1}
		val_buf5_4 {Type I LastRead 1 FirstWrite -1}
		val_buf5_5 {Type I LastRead 1 FirstWrite -1}
		val_buf5_6 {Type I LastRead 1 FirstWrite -1}
		val_buf5_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln140 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "104621", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "104622", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src { axis {  { src_TDATA in_data 0 8 }  { src_TVALID in_vld 0 1 }  { src_TREADY in_acc 1 1 } } }
	dst { axis {  { dst_TDATA out_data 1 8 }  { dst_TVALID out_vld 1 1 }  { dst_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
