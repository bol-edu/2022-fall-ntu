set moduleName sample_eta_Pipeline_VITIS_LOOP_533_2
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
set C_modelName {sample_eta_Pipeline_VITIS_LOOP_533_2}
set C_modelType { int 1 }
set C_modelArgList {
	{ a_0 int 8192 regular  }
	{ ctr int 8 regular  }
	{ buf_r int 8 regular {array 168 { 1 3 } 1 1 }  }
	{ a_1_out int 8192 regular {pointer 1}  }
	{ ctr_1_out int 32 regular {pointer 1}  }
	{ select_ln538_out int 8192 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "ctr", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ctr_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln538_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0 sc_in sc_lv 8192 signal 0 } 
	{ ctr sc_in sc_lv 8 signal 1 } 
	{ buf_r_address0 sc_out sc_lv 8 signal 2 } 
	{ buf_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_r_q0 sc_in sc_lv 8 signal 2 } 
	{ a_1_out sc_out sc_lv 8192 signal 3 } 
	{ a_1_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ctr_1_out sc_out sc_lv 32 signal 4 } 
	{ ctr_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ select_ln538_out sc_out sc_lv 8192 signal 5 } 
	{ select_ln538_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "a_0", "role": "default" }} , 
 	{ "name": "ctr", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctr", "role": "default" }} , 
 	{ "name": "buf_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "address0" }} , 
 	{ "name": "buf_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ce0" }} , 
 	{ "name": "buf_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "q0" }} , 
 	{ "name": "a_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "a_1_out", "role": "default" }} , 
 	{ "name": "a_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "a_1_out", "role": "ap_vld" }} , 
 	{ "name": "ctr_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctr_1_out", "role": "default" }} , 
 	{ "name": "ctr_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctr_1_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln538_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "select_ln538_out", "role": "default" }} , 
 	{ "name": "select_ln538_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln538_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sample_eta_Pipeline_VITIS_LOOP_533_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "341",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctr", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ctr_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln538_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_533_2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]}]}


set ArgLastReadFirstWriteLatency {
	sample_eta_Pipeline_VITIS_LOOP_533_2 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		ctr {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 1 FirstWrite -1}
		a_1_out {Type O LastRead -1 FirstWrite 2}
		ctr_1_out {Type O LastRead -1 FirstWrite 2}
		select_ln538_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "341"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "341"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_0 { ap_none {  { a_0 in_data 0 8192 } } }
	ctr { ap_none {  { ctr in_data 0 8 } } }
	buf_r { ap_memory {  { buf_r_address0 mem_address 1 8 }  { buf_r_ce0 mem_ce 1 1 }  { buf_r_q0 in_data 0 8 } } }
	a_1_out { ap_vld {  { a_1_out out_data 1 8192 }  { a_1_out_ap_vld out_vld 1 1 } } }
	ctr_1_out { ap_vld {  { ctr_1_out out_data 1 32 }  { ctr_1_out_ap_vld out_vld 1 1 } } }
	select_ln538_out { ap_vld {  { select_ln538_out out_data 1 8192 }  { select_ln538_out_ap_vld out_vld 1 1 } } }
}
