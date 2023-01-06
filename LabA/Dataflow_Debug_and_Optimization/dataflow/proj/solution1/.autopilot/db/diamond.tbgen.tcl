set moduleName diamond
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {diamond}
set C_modelType { void 0 }
set C_modelArgList {
	{ vecIn int 8 regular {array 100 { 1 1 } 1 1 }  }
	{ vecOut int 8 regular {array 100 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vecIn", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "vecOut", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ vecIn_address0 sc_out sc_lv 7 signal 0 } 
	{ vecIn_ce0 sc_out sc_logic 1 signal 0 } 
	{ vecIn_d0 sc_out sc_lv 8 signal 0 } 
	{ vecIn_q0 sc_in sc_lv 8 signal 0 } 
	{ vecIn_we0 sc_out sc_logic 1 signal 0 } 
	{ vecIn_address1 sc_out sc_lv 7 signal 0 } 
	{ vecIn_ce1 sc_out sc_logic 1 signal 0 } 
	{ vecIn_d1 sc_out sc_lv 8 signal 0 } 
	{ vecIn_q1 sc_in sc_lv 8 signal 0 } 
	{ vecIn_we1 sc_out sc_logic 1 signal 0 } 
	{ vecOut_address0 sc_out sc_lv 7 signal 1 } 
	{ vecOut_ce0 sc_out sc_logic 1 signal 1 } 
	{ vecOut_d0 sc_out sc_lv 8 signal 1 } 
	{ vecOut_q0 sc_in sc_lv 8 signal 1 } 
	{ vecOut_we0 sc_out sc_logic 1 signal 1 } 
	{ vecOut_address1 sc_out sc_lv 7 signal 1 } 
	{ vecOut_ce1 sc_out sc_logic 1 signal 1 } 
	{ vecOut_d1 sc_out sc_lv 8 signal 1 } 
	{ vecOut_q1 sc_in sc_lv 8 signal 1 } 
	{ vecOut_we1 sc_out sc_logic 1 signal 1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "vecIn_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vecIn", "role": "address0" }} , 
 	{ "name": "vecIn_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecIn", "role": "ce0" }} , 
 	{ "name": "vecIn_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecIn", "role": "d0" }} , 
 	{ "name": "vecIn_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecIn", "role": "q0" }} , 
 	{ "name": "vecIn_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecIn", "role": "we0" }} , 
 	{ "name": "vecIn_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vecIn", "role": "address1" }} , 
 	{ "name": "vecIn_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecIn", "role": "ce1" }} , 
 	{ "name": "vecIn_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecIn", "role": "d1" }} , 
 	{ "name": "vecIn_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecIn", "role": "q1" }} , 
 	{ "name": "vecIn_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecIn", "role": "we1" }} , 
 	{ "name": "vecOut_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vecOut", "role": "address0" }} , 
 	{ "name": "vecOut_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecOut", "role": "ce0" }} , 
 	{ "name": "vecOut_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecOut", "role": "d0" }} , 
 	{ "name": "vecOut_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecOut", "role": "q0" }} , 
 	{ "name": "vecOut_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecOut", "role": "we0" }} , 
 	{ "name": "vecOut_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vecOut", "role": "address1" }} , 
 	{ "name": "vecOut_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecOut", "role": "ce1" }} , 
 	{ "name": "vecOut_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecOut", "role": "d1" }} , 
 	{ "name": "vecOut_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vecOut", "role": "q1" }} , 
 	{ "name": "vecOut_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vecOut", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "diamond",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "152", "EstimateLatencyMax" : "155",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "funcA_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "funcD_U0"}],
		"Port" : [
			{"Name" : "vecIn", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "funcA_U0", "Port" : "vecIn"}]},
			{"Name" : "vecOut", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "funcD_U0", "Port" : "vecOut"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c4_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.funcA_U0", "Parent" : "0",
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
			{"Name" : "out1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "1"},
			{"Name" : "out2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "2"}],
		"Loop" : [
			{"Name" : "Loop0", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.funcB_U0", "Parent" : "0",
		"CDFG" : "funcB",
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
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "1"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["8"], "DependentChan" : "3"}],
		"Loop" : [
			{"Name" : "Loop0", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.funcC_U0", "Parent" : "0",
		"CDFG" : "funcC",
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
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "2"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["8"], "DependentChan" : "4"}],
		"Loop" : [
			{"Name" : "Loop0", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.funcD_U0", "Parent" : "0",
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
			{"Name" : "in1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "3"},
			{"Name" : "in2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "4"},
			{"Name" : "vecOut", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop0", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]}]}


set ArgLastReadFirstWriteLatency {
	diamond {
		vecIn {Type I LastRead 2 FirstWrite -1}
		vecOut {Type O LastRead -1 FirstWrite 2}}
	funcA {
		vecIn {Type I LastRead 2 FirstWrite -1}
		out1 {Type O LastRead -1 FirstWrite 2}
		out2 {Type O LastRead -1 FirstWrite 2}}
	funcB {
		in_r {Type I LastRead 2 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 2}}
	funcC {
		in_r {Type I LastRead 2 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 2}}
	funcD {
		in1 {Type I LastRead 2 FirstWrite -1}
		in2 {Type I LastRead 2 FirstWrite -1}
		vecOut {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "152", "Max" : "155"}
	, {"Name" : "Interval", "Min" : "50", "Max" : "50"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vecIn { ap_memory {  { vecIn_address0 mem_address 1 7 }  { vecIn_ce0 mem_ce 1 1 }  { vecIn_d0 mem_din 1 8 }  { vecIn_q0 mem_dout 0 8 }  { vecIn_we0 mem_we 1 1 }  { vecIn_address1 MemPortADDR2 1 7 }  { vecIn_ce1 MemPortCE2 1 1 }  { vecIn_d1 mem_din 1 8 }  { vecIn_q1 MemPortDOUT2 0 8 }  { vecIn_we1 mem_we 1 1 } } }
	vecOut { ap_memory {  { vecOut_address0 mem_address 1 7 }  { vecOut_ce0 mem_ce 1 1 }  { vecOut_d0 mem_din 1 8 }  { vecOut_q0 mem_dout 0 8 }  { vecOut_we0 mem_we 1 1 }  { vecOut_address1 MemPortADDR2 1 7 }  { vecOut_ce1 MemPortCE2 1 1 }  { vecOut_d1 MemPortDIN2 1 8 }  { vecOut_q1 mem_dout 0 8 }  { vecOut_we1 MemPortWE2 1 1 } } }
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
