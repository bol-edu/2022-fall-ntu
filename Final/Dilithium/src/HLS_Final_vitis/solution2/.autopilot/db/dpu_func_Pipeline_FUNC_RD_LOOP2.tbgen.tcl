set moduleName dpu_func_Pipeline_FUNC_RD_LOOP2
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
set C_modelName {dpu_func_Pipeline_FUNC_RD_LOOP2}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_3_1_reload int 8192 regular  }
	{ this_4_1_reload int 8192 regular  }
	{ this_1_1_reload int 8192 regular  }
	{ trunc_ln47 int 3 regular  }
	{ this_0 int 8192 regular {array 158 { 2 3 } 1 1 }  }
	{ call_ret7 int 8192 regular  }
	{ this_3_2_out int 8192 regular {pointer 1}  }
	{ this_4_2_out int 8192 regular {pointer 1}  }
	{ this_1_2_out int 8192 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_3_1_reload", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_4_1_reload", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_1_reload", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln47", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "this_0", "interface" : "memory", "bitwidth" : 8192, "direction" : "READWRITE"} , 
 	{ "Name" : "call_ret7", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_3_2_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_4_2_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_1_2_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_3_1_reload sc_in sc_lv 8192 signal 0 } 
	{ this_4_1_reload sc_in sc_lv 8192 signal 1 } 
	{ this_1_1_reload sc_in sc_lv 8192 signal 2 } 
	{ trunc_ln47 sc_in sc_lv 3 signal 3 } 
	{ this_0_address0 sc_out sc_lv 8 signal 4 } 
	{ this_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ this_0_we0 sc_out sc_lv 1024 signal 4 } 
	{ this_0_d0 sc_out sc_lv 8192 signal 4 } 
	{ this_0_q0 sc_in sc_lv 8192 signal 4 } 
	{ call_ret7 sc_in sc_lv 8192 signal 5 } 
	{ this_3_2_out sc_out sc_lv 8192 signal 6 } 
	{ this_3_2_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ this_4_2_out sc_out sc_lv 8192 signal 7 } 
	{ this_4_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ this_1_2_out sc_out sc_lv 8192 signal 8 } 
	{ this_1_2_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ grp_dpu_unit_fu_2638_p_din1 sc_out sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2638_p_din2 sc_out sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2638_p_din3 sc_out sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2638_p_din4 sc_out sc_lv 8 signal -1 } 
	{ grp_dpu_unit_fu_2638_p_dout0_0 sc_in sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2638_p_dout0_1 sc_in sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2638_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_3_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_3_1_reload", "role": "default" }} , 
 	{ "name": "this_4_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_4_1_reload", "role": "default" }} , 
 	{ "name": "this_1_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_1_1_reload", "role": "default" }} , 
 	{ "name": "trunc_ln47", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "trunc_ln47", "role": "default" }} , 
 	{ "name": "this_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_0", "role": "address0" }} , 
 	{ "name": "this_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_0", "role": "ce0" }} , 
 	{ "name": "this_0_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "this_0", "role": "we0" }} , 
 	{ "name": "this_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_0", "role": "d0" }} , 
 	{ "name": "this_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_0", "role": "q0" }} , 
 	{ "name": "call_ret7", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "call_ret7", "role": "default" }} , 
 	{ "name": "this_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_3_2_out", "role": "default" }} , 
 	{ "name": "this_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "this_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_4_2_out", "role": "default" }} , 
 	{ "name": "this_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "this_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_1_2_out", "role": "default" }} , 
 	{ "name": "this_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "grp_dpu_unit_fu_2638_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2638_p_din1", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2638_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2638_p_din2", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2638_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2638_p_din3", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2638_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2638_p_din4", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2638_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2638_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2638_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2638_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2638_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2638_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln173_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret7", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_p1_fu_137", "Parent" : "0",
		"CDFG" : "read_p1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln173_write_p3_fu_153", "Parent" : "0",
		"CDFG" : "write_p3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dpu_func_Pipeline_FUNC_RD_LOOP2 {
		this_3_1_reload {Type I LastRead 0 FirstWrite -1}
		this_4_1_reload {Type I LastRead 0 FirstWrite -1}
		this_1_1_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret7 {Type I LastRead 0 FirstWrite -1}
		this_3_2_out {Type O LastRead -1 FirstWrite 0}
		this_4_2_out {Type O LastRead -1 FirstWrite 0}
		this_1_2_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "157", "Max" : "188"}
	, {"Name" : "Interval", "Min" : "157", "Max" : "188"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	this_3_1_reload { ap_none {  { this_3_1_reload in_data 0 8192 } } }
	this_4_1_reload { ap_none {  { this_4_1_reload in_data 0 8192 } } }
	this_1_1_reload { ap_none {  { this_1_1_reload in_data 0 8192 } } }
	trunc_ln47 { ap_none {  { trunc_ln47 in_data 0 3 } } }
	this_0 { ap_memory {  { this_0_address0 mem_address 1 8 }  { this_0_ce0 mem_ce 1 1 }  { this_0_we0 mem_we 1 1024 }  { this_0_d0 mem_din 1 8192 }  { this_0_q0 mem_dout 0 8192 } } }
	call_ret7 { ap_none {  { call_ret7 in_data 0 8192 } } }
	this_3_2_out { ap_vld {  { this_3_2_out out_data 1 8192 }  { this_3_2_out_ap_vld out_vld 1 1 } } }
	this_4_2_out { ap_vld {  { this_4_2_out out_data 1 8192 }  { this_4_2_out_ap_vld out_vld 1 1 } } }
	this_1_2_out { ap_vld {  { this_1_2_out out_data 1 8192 }  { this_1_2_out_ap_vld out_vld 1 1 } } }
}
