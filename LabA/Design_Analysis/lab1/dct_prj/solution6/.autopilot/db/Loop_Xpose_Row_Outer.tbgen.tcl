set moduleName Loop_Xpose_Row_Outer
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Loop_Xpose_Row_Outer}
set C_modelType { void 0 }
set C_modelArgList {
	{ row_outbuf_i int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ col_inbuf_0 int 16 regular {array 8 { 0 3 } 0 1 }  }
	{ col_inbuf_1 int 16 regular {array 8 { 0 3 } 0 1 }  }
	{ col_inbuf_2 int 16 regular {array 8 { 0 3 } 0 1 }  }
	{ col_inbuf_3 int 16 regular {array 8 { 0 3 } 0 1 }  }
	{ col_inbuf_4 int 16 regular {array 8 { 0 3 } 0 1 }  }
	{ col_inbuf_5 int 16 regular {array 8 { 0 3 } 0 1 }  }
	{ col_inbuf_6 int 16 regular {array 8 { 0 3 } 0 1 }  }
	{ col_inbuf_7 int 16 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row_outbuf_i", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "col_inbuf_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_inbuf_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_inbuf_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_inbuf_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_inbuf_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_inbuf_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_inbuf_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_inbuf_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ row_outbuf_i_address0 sc_out sc_lv 6 signal 0 } 
	{ row_outbuf_i_ce0 sc_out sc_logic 1 signal 0 } 
	{ row_outbuf_i_q0 sc_in sc_lv 16 signal 0 } 
	{ col_inbuf_0_address0 sc_out sc_lv 3 signal 1 } 
	{ col_inbuf_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ col_inbuf_0_we0 sc_out sc_logic 1 signal 1 } 
	{ col_inbuf_0_d0 sc_out sc_lv 16 signal 1 } 
	{ col_inbuf_1_address0 sc_out sc_lv 3 signal 2 } 
	{ col_inbuf_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ col_inbuf_1_we0 sc_out sc_logic 1 signal 2 } 
	{ col_inbuf_1_d0 sc_out sc_lv 16 signal 2 } 
	{ col_inbuf_2_address0 sc_out sc_lv 3 signal 3 } 
	{ col_inbuf_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ col_inbuf_2_we0 sc_out sc_logic 1 signal 3 } 
	{ col_inbuf_2_d0 sc_out sc_lv 16 signal 3 } 
	{ col_inbuf_3_address0 sc_out sc_lv 3 signal 4 } 
	{ col_inbuf_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ col_inbuf_3_we0 sc_out sc_logic 1 signal 4 } 
	{ col_inbuf_3_d0 sc_out sc_lv 16 signal 4 } 
	{ col_inbuf_4_address0 sc_out sc_lv 3 signal 5 } 
	{ col_inbuf_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_inbuf_4_we0 sc_out sc_logic 1 signal 5 } 
	{ col_inbuf_4_d0 sc_out sc_lv 16 signal 5 } 
	{ col_inbuf_5_address0 sc_out sc_lv 3 signal 6 } 
	{ col_inbuf_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ col_inbuf_5_we0 sc_out sc_logic 1 signal 6 } 
	{ col_inbuf_5_d0 sc_out sc_lv 16 signal 6 } 
	{ col_inbuf_6_address0 sc_out sc_lv 3 signal 7 } 
	{ col_inbuf_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ col_inbuf_6_we0 sc_out sc_logic 1 signal 7 } 
	{ col_inbuf_6_d0 sc_out sc_lv 16 signal 7 } 
	{ col_inbuf_7_address0 sc_out sc_lv 3 signal 8 } 
	{ col_inbuf_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ col_inbuf_7_we0 sc_out sc_logic 1 signal 8 } 
	{ col_inbuf_7_d0 sc_out sc_lv 16 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "row_outbuf_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row_outbuf_i", "role": "address0" }} , 
 	{ "name": "row_outbuf_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_outbuf_i", "role": "ce0" }} , 
 	{ "name": "row_outbuf_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "row_outbuf_i", "role": "q0" }} , 
 	{ "name": "col_inbuf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_0", "role": "address0" }} , 
 	{ "name": "col_inbuf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_0", "role": "ce0" }} , 
 	{ "name": "col_inbuf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_0", "role": "we0" }} , 
 	{ "name": "col_inbuf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_0", "role": "d0" }} , 
 	{ "name": "col_inbuf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_1", "role": "address0" }} , 
 	{ "name": "col_inbuf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_1", "role": "ce0" }} , 
 	{ "name": "col_inbuf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_1", "role": "we0" }} , 
 	{ "name": "col_inbuf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_1", "role": "d0" }} , 
 	{ "name": "col_inbuf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_2", "role": "address0" }} , 
 	{ "name": "col_inbuf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_2", "role": "ce0" }} , 
 	{ "name": "col_inbuf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_2", "role": "we0" }} , 
 	{ "name": "col_inbuf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_2", "role": "d0" }} , 
 	{ "name": "col_inbuf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_3", "role": "address0" }} , 
 	{ "name": "col_inbuf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_3", "role": "ce0" }} , 
 	{ "name": "col_inbuf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_3", "role": "we0" }} , 
 	{ "name": "col_inbuf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_3", "role": "d0" }} , 
 	{ "name": "col_inbuf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_4", "role": "address0" }} , 
 	{ "name": "col_inbuf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_4", "role": "ce0" }} , 
 	{ "name": "col_inbuf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_4", "role": "we0" }} , 
 	{ "name": "col_inbuf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_4", "role": "d0" }} , 
 	{ "name": "col_inbuf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_5", "role": "address0" }} , 
 	{ "name": "col_inbuf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_5", "role": "ce0" }} , 
 	{ "name": "col_inbuf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_5", "role": "we0" }} , 
 	{ "name": "col_inbuf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_5", "role": "d0" }} , 
 	{ "name": "col_inbuf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_6", "role": "address0" }} , 
 	{ "name": "col_inbuf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_6", "role": "ce0" }} , 
 	{ "name": "col_inbuf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_6", "role": "we0" }} , 
 	{ "name": "col_inbuf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_6", "role": "d0" }} , 
 	{ "name": "col_inbuf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col_inbuf_7", "role": "address0" }} , 
 	{ "name": "col_inbuf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_7", "role": "ce0" }} , 
 	{ "name": "col_inbuf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_inbuf_7", "role": "we0" }} , 
 	{ "name": "col_inbuf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "col_inbuf_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_Xpose_Row_Outer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "row_outbuf_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "col_inbuf_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "col_inbuf_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "col_inbuf_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "col_inbuf_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "col_inbuf_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "col_inbuf_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "col_inbuf_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "col_inbuf_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_Xpose_Row_Outer {
		row_outbuf_i {Type I LastRead 1 FirstWrite -1}
		col_inbuf_0 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_1 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_2 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_3 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_4 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_5 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_6 {Type O LastRead -1 FirstWrite 2}
		col_inbuf_7 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	row_outbuf_i { ap_memory {  { row_outbuf_i_address0 mem_address 1 6 }  { row_outbuf_i_ce0 mem_ce 1 1 }  { row_outbuf_i_q0 mem_dout 0 16 } } }
	col_inbuf_0 { ap_memory {  { col_inbuf_0_address0 mem_address 1 3 }  { col_inbuf_0_ce0 mem_ce 1 1 }  { col_inbuf_0_we0 mem_we 1 1 }  { col_inbuf_0_d0 mem_din 1 16 } } }
	col_inbuf_1 { ap_memory {  { col_inbuf_1_address0 mem_address 1 3 }  { col_inbuf_1_ce0 mem_ce 1 1 }  { col_inbuf_1_we0 mem_we 1 1 }  { col_inbuf_1_d0 mem_din 1 16 } } }
	col_inbuf_2 { ap_memory {  { col_inbuf_2_address0 mem_address 1 3 }  { col_inbuf_2_ce0 mem_ce 1 1 }  { col_inbuf_2_we0 mem_we 1 1 }  { col_inbuf_2_d0 mem_din 1 16 } } }
	col_inbuf_3 { ap_memory {  { col_inbuf_3_address0 mem_address 1 3 }  { col_inbuf_3_ce0 mem_ce 1 1 }  { col_inbuf_3_we0 mem_we 1 1 }  { col_inbuf_3_d0 mem_din 1 16 } } }
	col_inbuf_4 { ap_memory {  { col_inbuf_4_address0 mem_address 1 3 }  { col_inbuf_4_ce0 mem_ce 1 1 }  { col_inbuf_4_we0 mem_we 1 1 }  { col_inbuf_4_d0 mem_din 1 16 } } }
	col_inbuf_5 { ap_memory {  { col_inbuf_5_address0 mem_address 1 3 }  { col_inbuf_5_ce0 mem_ce 1 1 }  { col_inbuf_5_we0 mem_we 1 1 }  { col_inbuf_5_d0 mem_din 1 16 } } }
	col_inbuf_6 { ap_memory {  { col_inbuf_6_address0 mem_address 1 3 }  { col_inbuf_6_ce0 mem_ce 1 1 }  { col_inbuf_6_we0 mem_we 1 1 }  { col_inbuf_6_d0 mem_din 1 16 } } }
	col_inbuf_7 { ap_memory {  { col_inbuf_7_address0 mem_address 1 3 }  { col_inbuf_7_ce0 mem_ce 1 1 }  { col_inbuf_7_we0 mem_we 1 1 }  { col_inbuf_7_d0 mem_din 1 16 } } }
}
