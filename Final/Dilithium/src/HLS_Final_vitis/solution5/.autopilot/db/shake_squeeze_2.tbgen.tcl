set moduleName shake_squeeze_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {shake_squeeze.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_s int 64 regular {array 25 { 2 2 } 1 1 }  }
	{ seedbuf int 8 regular {array 96 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "seedbuf", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_s_address0 sc_out sc_lv 5 signal 0 } 
	{ this_s_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_s_we0 sc_out sc_logic 1 signal 0 } 
	{ this_s_d0 sc_out sc_lv 64 signal 0 } 
	{ this_s_q0 sc_in sc_lv 64 signal 0 } 
	{ this_s_address1 sc_out sc_lv 5 signal 0 } 
	{ this_s_ce1 sc_out sc_logic 1 signal 0 } 
	{ this_s_we1 sc_out sc_logic 1 signal 0 } 
	{ this_s_d1 sc_out sc_lv 64 signal 0 } 
	{ this_s_q1 sc_in sc_lv 64 signal 0 } 
	{ seedbuf_address0 sc_out sc_lv 7 signal 1 } 
	{ seedbuf_ce0 sc_out sc_logic 1 signal 1 } 
	{ seedbuf_we0 sc_out sc_logic 1 signal 1 } 
	{ seedbuf_d0 sc_out sc_lv 8 signal 1 } 
	{ seedbuf_address1 sc_out sc_lv 7 signal 1 } 
	{ seedbuf_ce1 sc_out sc_logic 1 signal 1 } 
	{ seedbuf_we1 sc_out sc_logic 1 signal 1 } 
	{ seedbuf_d1 sc_out sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "this_s", "role": "address0" }} , 
 	{ "name": "this_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "ce0" }} , 
 	{ "name": "this_s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "we0" }} , 
 	{ "name": "this_s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_s", "role": "d0" }} , 
 	{ "name": "this_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_s", "role": "q0" }} , 
 	{ "name": "this_s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "this_s", "role": "address1" }} , 
 	{ "name": "this_s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "ce1" }} , 
 	{ "name": "this_s_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_s", "role": "we1" }} , 
 	{ "name": "this_s_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_s", "role": "d1" }} , 
 	{ "name": "this_s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_s", "role": "q1" }} , 
 	{ "name": "seedbuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seedbuf", "role": "address0" }} , 
 	{ "name": "seedbuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "ce0" }} , 
 	{ "name": "seedbuf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "we0" }} , 
 	{ "name": "seedbuf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seedbuf", "role": "d0" }} , 
 	{ "name": "seedbuf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seedbuf", "role": "address1" }} , 
 	{ "name": "seedbuf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "ce1" }} , 
 	{ "name": "seedbuf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "we1" }} , 
 	{ "name": "seedbuf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seedbuf", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "shake_squeeze_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "101", "EstimateLatencyMax" : "101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_178", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "KeccakF1600_StatePermute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_178.KeccakF_RoundConstants_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	shake_squeeze_2 {
		this_s {Type IO LastRead 13 FirstWrite 14}
		seedbuf {Type O LastRead -1 FirstWrite 3}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "101", "Max" : "101"}
	, {"Name" : "Interval", "Min" : "101", "Max" : "101"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	this_s { ap_memory {  { this_s_address0 mem_address 1 5 }  { this_s_ce0 mem_ce 1 1 }  { this_s_we0 mem_we 1 1 }  { this_s_d0 mem_din 1 64 }  { this_s_q0 in_data 0 64 }  { this_s_address1 MemPortADDR2 1 5 }  { this_s_ce1 MemPortCE2 1 1 }  { this_s_we1 MemPortWE2 1 1 }  { this_s_d1 MemPortDIN2 1 64 }  { this_s_q1 MemPortDOUT2 0 64 } } }
	seedbuf { ap_memory {  { seedbuf_address0 mem_address 1 7 }  { seedbuf_ce0 mem_ce 1 1 }  { seedbuf_we0 mem_we 1 1 }  { seedbuf_d0 mem_din 1 8 }  { seedbuf_address1 MemPortADDR2 1 7 }  { seedbuf_ce1 MemPortCE2 1 1 }  { seedbuf_we1 MemPortWE2 1 1 }  { seedbuf_d1 MemPortDIN2 1 8 } } }
}
