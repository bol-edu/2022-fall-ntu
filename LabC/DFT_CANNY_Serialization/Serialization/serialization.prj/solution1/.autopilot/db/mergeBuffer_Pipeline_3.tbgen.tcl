set moduleName mergeBuffer_Pipeline_3
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
set C_modelName {mergeBuffer_Pipeline_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ buf1_0 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_1 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_2 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_3 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_4 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_5 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_6 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_7 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ dst int 8 regular {axi_s 1 volatile  { dst Data } }  }
	{ sext_ln104 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buf1_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sext_ln104", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dst_TREADY sc_in sc_logic 1 outacc 8 } 
	{ buf1_0_address0 sc_out sc_lv 10 signal 0 } 
	{ buf1_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ buf1_0_q0 sc_in sc_lv 8 signal 0 } 
	{ buf1_1_address0 sc_out sc_lv 10 signal 1 } 
	{ buf1_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf1_1_q0 sc_in sc_lv 8 signal 1 } 
	{ buf1_2_address0 sc_out sc_lv 10 signal 2 } 
	{ buf1_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf1_2_q0 sc_in sc_lv 8 signal 2 } 
	{ buf1_3_address0 sc_out sc_lv 10 signal 3 } 
	{ buf1_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf1_3_q0 sc_in sc_lv 8 signal 3 } 
	{ buf1_4_address0 sc_out sc_lv 10 signal 4 } 
	{ buf1_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf1_4_q0 sc_in sc_lv 8 signal 4 } 
	{ buf1_5_address0 sc_out sc_lv 10 signal 5 } 
	{ buf1_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf1_5_q0 sc_in sc_lv 8 signal 5 } 
	{ buf1_6_address0 sc_out sc_lv 10 signal 6 } 
	{ buf1_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf1_6_q0 sc_in sc_lv 8 signal 6 } 
	{ buf1_7_address0 sc_out sc_lv 10 signal 7 } 
	{ buf1_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf1_7_q0 sc_in sc_lv 8 signal 7 } 
	{ dst_TDATA sc_out sc_lv 8 signal 8 } 
	{ dst_TVALID sc_out sc_logic 1 outvld 8 } 
	{ sext_ln104 sc_in sc_lv 16 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst", "role": "TREADY" }} , 
 	{ "name": "buf1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_0", "role": "address0" }} , 
 	{ "name": "buf1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_0", "role": "ce0" }} , 
 	{ "name": "buf1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_0", "role": "q0" }} , 
 	{ "name": "buf1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_1", "role": "address0" }} , 
 	{ "name": "buf1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_1", "role": "ce0" }} , 
 	{ "name": "buf1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_1", "role": "q0" }} , 
 	{ "name": "buf1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_2", "role": "address0" }} , 
 	{ "name": "buf1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_2", "role": "ce0" }} , 
 	{ "name": "buf1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_2", "role": "q0" }} , 
 	{ "name": "buf1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_3", "role": "address0" }} , 
 	{ "name": "buf1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_3", "role": "ce0" }} , 
 	{ "name": "buf1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_3", "role": "q0" }} , 
 	{ "name": "buf1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_4", "role": "address0" }} , 
 	{ "name": "buf1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_4", "role": "ce0" }} , 
 	{ "name": "buf1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_4", "role": "q0" }} , 
 	{ "name": "buf1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_5", "role": "address0" }} , 
 	{ "name": "buf1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_5", "role": "ce0" }} , 
 	{ "name": "buf1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_5", "role": "q0" }} , 
 	{ "name": "buf1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_6", "role": "address0" }} , 
 	{ "name": "buf1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_6", "role": "ce0" }} , 
 	{ "name": "buf1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_6", "role": "q0" }} , 
 	{ "name": "buf1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_7", "role": "address0" }} , 
 	{ "name": "buf1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_7", "role": "ce0" }} , 
 	{ "name": "buf1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_7", "role": "q0" }} , 
 	{ "name": "dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "TDATA" }} , 
 	{ "name": "dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst", "role": "TVALID" }} , 
 	{ "name": "sext_ln104", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln104", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_8_1_1_U146", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		sext_ln104 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buf1_0 { ap_memory {  { buf1_0_address0 mem_address 1 10 }  { buf1_0_ce0 mem_ce 1 1 }  { buf1_0_q0 in_data 0 8 } } }
	buf1_1 { ap_memory {  { buf1_1_address0 mem_address 1 10 }  { buf1_1_ce0 mem_ce 1 1 }  { buf1_1_q0 in_data 0 8 } } }
	buf1_2 { ap_memory {  { buf1_2_address0 mem_address 1 10 }  { buf1_2_ce0 mem_ce 1 1 }  { buf1_2_q0 in_data 0 8 } } }
	buf1_3 { ap_memory {  { buf1_3_address0 mem_address 1 10 }  { buf1_3_ce0 mem_ce 1 1 }  { buf1_3_q0 in_data 0 8 } } }
	buf1_4 { ap_memory {  { buf1_4_address0 mem_address 1 10 }  { buf1_4_ce0 mem_ce 1 1 }  { buf1_4_q0 in_data 0 8 } } }
	buf1_5 { ap_memory {  { buf1_5_address0 mem_address 1 10 }  { buf1_5_ce0 mem_ce 1 1 }  { buf1_5_q0 in_data 0 8 } } }
	buf1_6 { ap_memory {  { buf1_6_address0 mem_address 1 10 }  { buf1_6_ce0 mem_ce 1 1 }  { buf1_6_q0 in_data 0 8 } } }
	buf1_7 { ap_memory {  { buf1_7_address0 mem_address 1 10 }  { buf1_7_ce0 mem_ce 1 1 }  { buf1_7_q0 in_data 0 8 } } }
	dst { axis {  { dst_TREADY out_acc 0 1 }  { dst_TDATA out_data 1 8 }  { dst_TVALID out_vld 1 1 } } }
	sext_ln104 { ap_none {  { sext_ln104 in_data 0 16 } } }
}
