set moduleName dut_Pipeline_VITIS_LOOP_123_3
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
set C_modelName {dut_Pipeline_VITIS_LOOP_123_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ int_1 int 8 regular {array 8000 { 1 3 } 1 1 }  }
	{ dst_buff int 8 regular {axi_s 1 volatile  { dst_buff Data } }  }
	{ icmp_ln34_1 int 1 regular  }
	{ output_line_num int 17 regular  }
	{ int_2 int 8 regular {array 8000 { 1 3 } 1 1 }  }
	{ double_1 int 8 regular {array 8000 { 1 3 } 1 1 }  }
	{ double_2 int 8 regular {array 8000 { 1 3 } 1 1 }  }
	{ string_pos_1 int 8 regular {array 4008 { 1 3 } 1 1 }  }
	{ string_1 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ string_pos_2 int 8 regular {array 4008 { 1 3 } 1 1 }  }
	{ string_2 int 8 regular {array 6132 { 1 3 } 1 1 }  }
	{ string_2_1 int 8 regular {array 6132 { 1 3 } 1 1 }  }
	{ string_2_2 int 8 regular {array 6132 { 1 3 } 1 1 }  }
	{ string_2_3 int 8 regular {array 6132 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "int_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst_buff", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "icmp_ln34_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_line_num", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "int_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "double_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "double_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_pos_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_pos_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "string_2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dst_buff_TREADY sc_in sc_logic 1 outacc 1 } 
	{ int_1_address0 sc_out sc_lv 13 signal 0 } 
	{ int_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ int_1_q0 sc_in sc_lv 8 signal 0 } 
	{ dst_buff_TDATA sc_out sc_lv 8 signal 1 } 
	{ dst_buff_TVALID sc_out sc_logic 1 outvld 1 } 
	{ icmp_ln34_1 sc_in sc_lv 1 signal 2 } 
	{ output_line_num sc_in sc_lv 17 signal 3 } 
	{ int_2_address0 sc_out sc_lv 13 signal 4 } 
	{ int_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ int_2_q0 sc_in sc_lv 8 signal 4 } 
	{ double_1_address0 sc_out sc_lv 13 signal 5 } 
	{ double_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ double_1_q0 sc_in sc_lv 8 signal 5 } 
	{ double_2_address0 sc_out sc_lv 13 signal 6 } 
	{ double_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ double_2_q0 sc_in sc_lv 8 signal 6 } 
	{ string_pos_1_address0 sc_out sc_lv 12 signal 7 } 
	{ string_pos_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ string_pos_1_q0 sc_in sc_lv 8 signal 7 } 
	{ string_1_address0 sc_out sc_lv 10 signal 8 } 
	{ string_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ string_1_q0 sc_in sc_lv 8 signal 8 } 
	{ string_pos_2_address0 sc_out sc_lv 12 signal 9 } 
	{ string_pos_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ string_pos_2_q0 sc_in sc_lv 8 signal 9 } 
	{ string_2_address0 sc_out sc_lv 13 signal 10 } 
	{ string_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ string_2_q0 sc_in sc_lv 8 signal 10 } 
	{ string_2_1_address0 sc_out sc_lv 13 signal 11 } 
	{ string_2_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ string_2_1_q0 sc_in sc_lv 8 signal 11 } 
	{ string_2_2_address0 sc_out sc_lv 13 signal 12 } 
	{ string_2_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ string_2_2_q0 sc_in sc_lv 8 signal 12 } 
	{ string_2_3_address0 sc_out sc_lv 13 signal 13 } 
	{ string_2_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ string_2_3_q0 sc_in sc_lv 8 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dst_buff_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst_buff", "role": "TREADY" }} , 
 	{ "name": "int_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "int_1", "role": "address0" }} , 
 	{ "name": "int_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_1", "role": "ce0" }} , 
 	{ "name": "int_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "int_1", "role": "q0" }} , 
 	{ "name": "dst_buff_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_buff", "role": "TDATA" }} , 
 	{ "name": "dst_buff_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst_buff", "role": "TVALID" }} , 
 	{ "name": "icmp_ln34_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln34_1", "role": "default" }} , 
 	{ "name": "output_line_num", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "output_line_num", "role": "default" }} , 
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
 	{ "name": "string_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "string_1", "role": "address0" }} , 
 	{ "name": "string_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_1", "role": "ce0" }} , 
 	{ "name": "string_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_1", "role": "q0" }} , 
 	{ "name": "string_pos_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "string_pos_2", "role": "address0" }} , 
 	{ "name": "string_pos_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_pos_2", "role": "ce0" }} , 
 	{ "name": "string_pos_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_pos_2", "role": "q0" }} , 
 	{ "name": "string_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2", "role": "address0" }} , 
 	{ "name": "string_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2", "role": "ce0" }} , 
 	{ "name": "string_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2", "role": "q0" }} , 
 	{ "name": "string_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_1", "role": "address0" }} , 
 	{ "name": "string_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_1", "role": "ce0" }} , 
 	{ "name": "string_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_1", "role": "q0" }} , 
 	{ "name": "string_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_2", "role": "address0" }} , 
 	{ "name": "string_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_2", "role": "ce0" }} , 
 	{ "name": "string_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_2", "role": "q0" }} , 
 	{ "name": "string_2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "string_2_3", "role": "address0" }} , 
 	{ "name": "string_2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "string_2_3", "role": "ce0" }} , 
 	{ "name": "string_2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "string_2_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "dut_Pipeline_VITIS_LOOP_123_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "65546",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "int_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst_buff", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_buff_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_ln34_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_line_num", "Type" : "None", "Direction" : "I"},
			{"Name" : "int_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "double_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "double_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_pos_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_pos_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "string_2_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_123_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U27", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut_Pipeline_VITIS_LOOP_123_3 {
		int_1 {Type I LastRead 0 FirstWrite -1}
		dst_buff {Type O LastRead -1 FirstWrite 1}
		icmp_ln34_1 {Type I LastRead 0 FirstWrite -1}
		output_line_num {Type I LastRead 0 FirstWrite -1}
		int_2 {Type I LastRead 0 FirstWrite -1}
		double_1 {Type I LastRead 0 FirstWrite -1}
		double_2 {Type I LastRead 0 FirstWrite -1}
		string_pos_1 {Type I LastRead 1 FirstWrite -1}
		string_1 {Type I LastRead 1 FirstWrite -1}
		string_pos_2 {Type I LastRead 1 FirstWrite -1}
		string_2 {Type I LastRead 1 FirstWrite -1}
		string_2_1 {Type I LastRead 1 FirstWrite -1}
		string_2_2 {Type I LastRead 1 FirstWrite -1}
		string_2_3 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "65546"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "65546"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	int_1 { ap_memory {  { int_1_address0 mem_address 1 13 }  { int_1_ce0 mem_ce 1 1 }  { int_1_q0 in_data 0 8 } } }
	dst_buff { axis {  { dst_buff_TREADY out_acc 0 1 }  { dst_buff_TDATA out_data 1 8 }  { dst_buff_TVALID out_vld 1 1 } } }
	icmp_ln34_1 { ap_none {  { icmp_ln34_1 in_data 0 1 } } }
	output_line_num { ap_none {  { output_line_num in_data 0 17 } } }
	int_2 { ap_memory {  { int_2_address0 mem_address 1 13 }  { int_2_ce0 mem_ce 1 1 }  { int_2_q0 in_data 0 8 } } }
	double_1 { ap_memory {  { double_1_address0 mem_address 1 13 }  { double_1_ce0 mem_ce 1 1 }  { double_1_q0 in_data 0 8 } } }
	double_2 { ap_memory {  { double_2_address0 mem_address 1 13 }  { double_2_ce0 mem_ce 1 1 }  { double_2_q0 in_data 0 8 } } }
	string_pos_1 { ap_memory {  { string_pos_1_address0 mem_address 1 12 }  { string_pos_1_ce0 mem_ce 1 1 }  { string_pos_1_q0 in_data 0 8 } } }
	string_1 { ap_memory {  { string_1_address0 mem_address 1 10 }  { string_1_ce0 mem_ce 1 1 }  { string_1_q0 in_data 0 8 } } }
	string_pos_2 { ap_memory {  { string_pos_2_address0 mem_address 1 12 }  { string_pos_2_ce0 mem_ce 1 1 }  { string_pos_2_q0 in_data 0 8 } } }
	string_2 { ap_memory {  { string_2_address0 mem_address 1 13 }  { string_2_ce0 mem_ce 1 1 }  { string_2_q0 in_data 0 8 } } }
	string_2_1 { ap_memory {  { string_2_1_address0 mem_address 1 13 }  { string_2_1_ce0 mem_ce 1 1 }  { string_2_1_q0 in_data 0 8 } } }
	string_2_2 { ap_memory {  { string_2_2_address0 mem_address 1 13 }  { string_2_2_ce0 mem_ce 1 1 }  { string_2_2_q0 in_data 0 8 } } }
	string_2_3 { ap_memory {  { string_2_3_address0 mem_address 1 13 }  { string_2_3_ce0 mem_ce 1 1 }  { string_2_3_q0 in_data 0 8 } } }
}
