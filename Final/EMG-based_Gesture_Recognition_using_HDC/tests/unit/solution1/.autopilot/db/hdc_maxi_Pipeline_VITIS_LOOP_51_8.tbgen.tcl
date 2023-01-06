set moduleName hdc_maxi_Pipeline_VITIS_LOOP_51_8
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
set C_modelName {hdc_maxi_Pipeline_VITIS_LOOP_51_8}
set C_modelType { void 0 }
set C_modelArgList {
	{ add_ln55 int 9 regular  }
	{ new_IM_1_02_reload int 8192 regular  }
	{ new_IM_0_01_reload int 8192 regular  }
	{ select_ln46_1 int 3 regular  }
	{ test_data_d int 512 regular {array 20 { 1 3 } 1 1 }  }
	{ tmp_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "add_ln55", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "new_IM_1_02_reload", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "new_IM_0_01_reload", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln46_1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_d", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln55 sc_in sc_lv 9 signal 0 } 
	{ new_IM_1_02_reload sc_in sc_lv 8192 signal 1 } 
	{ new_IM_0_01_reload sc_in sc_lv 8192 signal 2 } 
	{ select_ln46_1 sc_in sc_lv 3 signal 3 } 
	{ test_data_d_address0 sc_out sc_lv 5 signal 4 } 
	{ test_data_d_ce0 sc_out sc_logic 1 signal 4 } 
	{ test_data_d_q0 sc_in sc_lv 512 signal 4 } 
	{ tmp_out sc_out sc_lv 32 signal 5 } 
	{ tmp_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln55", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "add_ln55", "role": "default" }} , 
 	{ "name": "new_IM_1_02_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "new_IM_1_02_reload", "role": "default" }} , 
 	{ "name": "new_IM_0_01_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "new_IM_0_01_reload", "role": "default" }} , 
 	{ "name": "select_ln46_1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln46_1", "role": "default" }} , 
 	{ "name": "test_data_d_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "test_data_d", "role": "address0" }} , 
 	{ "name": "test_data_d_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_d", "role": "ce0" }} , 
 	{ "name": "test_data_d_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "test_data_d", "role": "q0" }} , 
 	{ "name": "tmp_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_out", "role": "default" }} , 
 	{ "name": "tmp_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_51_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln55", "Type" : "None", "Direction" : "I"},
			{"Name" : "new_IM_1_02_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "new_IM_0_01_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln46_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "test_data_d", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_51_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hdc_maxi_Pipeline_VITIS_LOOP_51_8 {
		add_ln55 {Type I LastRead 0 FirstWrite -1}
		new_IM_1_02_reload {Type I LastRead 0 FirstWrite -1}
		new_IM_0_01_reload {Type I LastRead 0 FirstWrite -1}
		select_ln46_1 {Type I LastRead 0 FirstWrite -1}
		test_data_d {Type I LastRead 0 FirstWrite -1}
		tmp_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "37", "Max" : "37"}
	, {"Name" : "Interval", "Min" : "37", "Max" : "37"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln55 { ap_none {  { add_ln55 in_data 0 9 } } }
	new_IM_1_02_reload { ap_none {  { new_IM_1_02_reload in_data 0 8192 } } }
	new_IM_0_01_reload { ap_none {  { new_IM_0_01_reload in_data 0 8192 } } }
	select_ln46_1 { ap_none {  { select_ln46_1 in_data 0 3 } } }
	test_data_d { ap_memory {  { test_data_d_address0 mem_address 1 5 }  { test_data_d_ce0 mem_ce 1 1 }  { test_data_d_q0 mem_dout 0 512 } } }
	tmp_out { ap_vld {  { tmp_out out_data 1 32 }  { tmp_out_ap_vld out_vld 1 1 } } }
}
