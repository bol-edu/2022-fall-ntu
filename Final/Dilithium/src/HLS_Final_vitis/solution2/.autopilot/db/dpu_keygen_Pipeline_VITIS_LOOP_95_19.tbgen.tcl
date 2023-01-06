set moduleName dpu_keygen_Pipeline_VITIS_LOOP_95_19
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
set C_modelName {dpu_keygen_Pipeline_VITIS_LOOP_95_19}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_pMem_load_6 int 8192 regular  }
	{ dpu_pMem int 8192 regular {array 158 { 0 3 } 0 1 }  }
	{ idxprom2_i49_cast int 5 regular  }
	{ tmp3 int 4 regular {array 256 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_pMem_load_6", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "dpu_pMem", "interface" : "memory", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "idxprom2_i49_cast", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "tmp3", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_pMem_load_6 sc_in sc_lv 8192 signal 0 } 
	{ dpu_pMem_address0 sc_out sc_lv 8 signal 1 } 
	{ dpu_pMem_ce0 sc_out sc_logic 1 signal 1 } 
	{ dpu_pMem_we0 sc_out sc_lv 1024 signal 1 } 
	{ dpu_pMem_d0 sc_out sc_lv 8192 signal 1 } 
	{ idxprom2_i49_cast sc_in sc_lv 5 signal 2 } 
	{ tmp3_address0 sc_out sc_lv 8 signal 3 } 
	{ tmp3_ce0 sc_out sc_logic 1 signal 3 } 
	{ tmp3_q0 sc_in sc_lv 4 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_pMem_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem_load_6", "role": "default" }} , 
 	{ "name": "dpu_pMem_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dpu_pMem", "role": "address0" }} , 
 	{ "name": "dpu_pMem_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dpu_pMem", "role": "ce0" }} , 
 	{ "name": "dpu_pMem_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "dpu_pMem", "role": "we0" }} , 
 	{ "name": "dpu_pMem_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "dpu_pMem", "role": "d0" }} , 
 	{ "name": "idxprom2_i49_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "idxprom2_i49_cast", "role": "default" }} , 
 	{ "name": "tmp3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp3", "role": "address0" }} , 
 	{ "name": "tmp3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp3", "role": "ce0" }} , 
 	{ "name": "tmp3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_95_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "dpu_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "idxprom2_i49_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_95_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dpu_keygen_Pipeline_VITIS_LOOP_95_19 {
		this_pMem_load_6 {Type I LastRead 0 FirstWrite -1}
		dpu_pMem {Type O LastRead -1 FirstWrite 1}
		idxprom2_i49_cast {Type I LastRead 0 FirstWrite -1}
		tmp3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	this_pMem_load_6 { ap_none {  { this_pMem_load_6 in_data 0 8192 } } }
	dpu_pMem { ap_memory {  { dpu_pMem_address0 mem_address 1 8 }  { dpu_pMem_ce0 mem_ce 1 1 }  { dpu_pMem_we0 mem_we 1 1024 }  { dpu_pMem_d0 mem_din 1 8192 } } }
	idxprom2_i49_cast { ap_none {  { idxprom2_i49_cast in_data 0 5 } } }
	tmp3 { ap_memory {  { tmp3_address0 mem_address 1 8 }  { tmp3_ce0 mem_ce 1 1 }  { tmp3_q0 in_data 0 4 } } }
}
