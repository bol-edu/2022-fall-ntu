set moduleName funcA
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
set C_modelName {funcA}
set C_modelType { void 0 }
set C_modelArgList {
	{ vecIn int 8 regular {array 100 { 1 1 } 1 1 }  }
	{ out1 int 8 regular {array 100 { 0 0 } 0 1 }  }
	{ out2 int 6 regular {array 100 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vecIn", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out2", "interface" : "memory", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vecIn_address0 sc_out sc_lv 7 signal 0 } 
	{ vecIn_ce0 sc_out sc_logic 1 signal 0 } 
	{ vecIn_q0 sc_in sc_lv 8 signal 0 } 
	{ vecIn_address1 sc_out sc_lv 7 signal 0 } 
	{ vecIn_ce1 sc_out sc_logic 1 signal 0 } 
	{ vecIn_q1 sc_in sc_lv 8 signal 0 } 
	{ out1_address0 sc_out sc_lv 7 signal 1 } 
	{ out1_ce0 sc_out sc_logic 1 signal 1 } 
	{ out1_we0 sc_out sc_logic 1 signal 1 } 
	{ out1_d0 sc_out sc_lv 8 signal 1 } 
	{ out1_address1 sc_out sc_lv 7 signal 1 } 
	{ out1_ce1 sc_out sc_logic 1 signal 1 } 
	{ out1_we1 sc_out sc_logic 1 signal 1 } 
	{ out1_d1 sc_out sc_lv 8 signal 1 } 
	{ out2_address0 sc_out sc_lv 7 signal 2 } 
	{ out2_ce0 sc_out sc_logic 1 signal 2 } 
	{ out2_we0 sc_out sc_logic 1 signal 2 } 
	{ out2_d0 sc_out sc_lv 6 signal 2 } 
	{ out2_address1 sc_out sc_lv 7 signal 2 } 
	{ out2_ce1 sc_out sc_logic 1 signal 2 } 
	{ out2_we1 sc_out sc_logic 1 signal 2 } 
	{ out2_d1 sc_out sc_lv 6 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vecIn_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vecIn", "role": "address0" }} , 
 	{ "name": "vecIn_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecIn", "role": "ce0" }} , 
 	{ "name": "vecIn_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecIn", "role": "q0" }} , 
 	{ "name": "vecIn_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vecIn", "role": "address1" }} , 
 	{ "name": "vecIn_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecIn", "role": "ce1" }} , 
 	{ "name": "vecIn_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecIn", "role": "q1" }} , 
 	{ "name": "out1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out1", "role": "address0" }} , 
 	{ "name": "out1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "ce0" }} , 
 	{ "name": "out1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "we0" }} , 
 	{ "name": "out1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out1", "role": "d0" }} , 
 	{ "name": "out1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out1", "role": "address1" }} , 
 	{ "name": "out1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "ce1" }} , 
 	{ "name": "out1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "we1" }} , 
 	{ "name": "out1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out1", "role": "d1" }} , 
 	{ "name": "out2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out2", "role": "address0" }} , 
 	{ "name": "out2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out2", "role": "ce0" }} , 
 	{ "name": "out2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out2", "role": "we0" }} , 
 	{ "name": "out2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out2", "role": "d0" }} , 
 	{ "name": "out2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out2", "role": "address1" }} , 
 	{ "name": "out2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out2", "role": "ce1" }} , 
 	{ "name": "out2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out2", "role": "we1" }} , 
 	{ "name": "out2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out2", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "funcA",
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
			{"Name" : "vecIn", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "out2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"}],
		"Loop" : [
			{"Name" : "Loop0", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]}]}


set ArgLastReadFirstWriteLatency {
	funcA {
		vecIn {Type I LastRead 2 FirstWrite -1}
		out1 {Type O LastRead -1 FirstWrite 2}
		out2 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50", "Max" : "51"}
	, {"Name" : "Interval", "Min" : "50", "Max" : "50"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vecIn { ap_memory {  { vecIn_address0 mem_address 1 7 }  { vecIn_ce0 mem_ce 1 1 }  { vecIn_q0 in_data 0 8 }  { vecIn_address1 MemPortADDR2 1 7 }  { vecIn_ce1 MemPortCE2 1 1 }  { vecIn_q1 in_data 0 8 } } }
	out1 { ap_memory {  { out1_address0 mem_address 1 7 }  { out1_ce0 mem_ce 1 1 }  { out1_we0 mem_we 1 1 }  { out1_d0 mem_din 1 8 }  { out1_address1 MemPortADDR2 1 7 }  { out1_ce1 MemPortCE2 1 1 }  { out1_we1 MemPortWE2 1 1 }  { out1_d1 MemPortDIN2 1 8 } } }
	out2 { ap_memory {  { out2_address0 mem_address 1 7 }  { out2_ce0 mem_ce 1 1 }  { out2_we0 mem_we 1 1 }  { out2_d0 mem_din 1 6 }  { out2_address1 MemPortADDR2 1 7 }  { out2_ce1 MemPortCE2 1 1 }  { out2_we1 MemPortWE2 1 1 }  { out2_d1 MemPortDIN2 1 6 } } }
}
