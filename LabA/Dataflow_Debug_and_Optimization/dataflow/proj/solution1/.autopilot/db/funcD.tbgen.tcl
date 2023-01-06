set moduleName funcD
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {funcD}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 8 regular {array 100 { 1 1 } 1 1 }  }
	{ in2 int 7 regular {array 100 { 1 1 } 1 1 }  }
	{ vecOut int 8 regular {array 100 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in2", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "vecOut", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_address0 sc_out sc_lv 7 signal 0 } 
	{ in1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in1_q0 sc_in sc_lv 8 signal 0 } 
	{ in1_address1 sc_out sc_lv 7 signal 0 } 
	{ in1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in1_q1 sc_in sc_lv 8 signal 0 } 
	{ in2_address0 sc_out sc_lv 7 signal 1 } 
	{ in2_ce0 sc_out sc_logic 1 signal 1 } 
	{ in2_q0 sc_in sc_lv 7 signal 1 } 
	{ in2_address1 sc_out sc_lv 7 signal 1 } 
	{ in2_ce1 sc_out sc_logic 1 signal 1 } 
	{ in2_q1 sc_in sc_lv 7 signal 1 } 
	{ vecOut_address0 sc_out sc_lv 7 signal 2 } 
	{ vecOut_ce0 sc_out sc_logic 1 signal 2 } 
	{ vecOut_we0 sc_out sc_logic 1 signal 2 } 
	{ vecOut_d0 sc_out sc_lv 8 signal 2 } 
	{ vecOut_address1 sc_out sc_lv 7 signal 2 } 
	{ vecOut_ce1 sc_out sc_logic 1 signal 2 } 
	{ vecOut_we1 sc_out sc_logic 1 signal 2 } 
	{ vecOut_d1 sc_out sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in1", "role": "address0" }} , 
 	{ "name": "in1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce0" }} , 
 	{ "name": "in1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in1", "role": "q0" }} , 
 	{ "name": "in1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in1", "role": "address1" }} , 
 	{ "name": "in1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1", "role": "ce1" }} , 
 	{ "name": "in1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in1", "role": "q1" }} , 
 	{ "name": "in2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2", "role": "address0" }} , 
 	{ "name": "in2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2", "role": "ce0" }} , 
 	{ "name": "in2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2", "role": "q0" }} , 
 	{ "name": "in2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2", "role": "address1" }} , 
 	{ "name": "in2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2", "role": "ce1" }} , 
 	{ "name": "in2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in2", "role": "q1" }} , 
 	{ "name": "vecOut_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vecOut", "role": "address0" }} , 
 	{ "name": "vecOut_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecOut", "role": "ce0" }} , 
 	{ "name": "vecOut_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecOut", "role": "we0" }} , 
 	{ "name": "vecOut_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecOut", "role": "d0" }} , 
 	{ "name": "vecOut_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vecOut", "role": "address1" }} , 
 	{ "name": "vecOut_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecOut", "role": "ce1" }} , 
 	{ "name": "vecOut_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecOut", "role": "we1" }} , 
 	{ "name": "vecOut_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecOut", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "funcD",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "vecOut", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop0", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]}]}


set ArgLastReadFirstWriteLatency {
	funcD {
		in1 {Type I LastRead 2 FirstWrite -1}
		in2 {Type I LastRead 2 FirstWrite -1}
		vecOut {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50", "Max" : "51"}
	, {"Name" : "Interval", "Min" : "50", "Max" : "50"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1 { ap_memory {  { in1_address0 mem_address 1 7 }  { in1_ce0 mem_ce 1 1 }  { in1_q0 in_data 0 8 }  { in1_address1 MemPortADDR2 1 7 }  { in1_ce1 MemPortCE2 1 1 }  { in1_q1 in_data 0 8 } } }
	in2 { ap_memory {  { in2_address0 mem_address 1 7 }  { in2_ce0 mem_ce 1 1 }  { in2_q0 in_data 0 7 }  { in2_address1 MemPortADDR2 1 7 }  { in2_ce1 MemPortCE2 1 1 }  { in2_q1 in_data 0 7 } } }
	vecOut { ap_memory {  { vecOut_address0 mem_address 1 7 }  { vecOut_ce0 mem_ce 1 1 }  { vecOut_we0 mem_we 1 1 }  { vecOut_d0 mem_din 1 8 }  { vecOut_address1 MemPortADDR2 1 7 }  { vecOut_ce1 MemPortCE2 1 1 }  { vecOut_we1 MemPortWE2 1 1 }  { vecOut_d1 MemPortDIN2 1 8 } } }
}
