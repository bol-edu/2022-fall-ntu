set moduleName dpu_func_Pipeline_FUNC_MONTMUL_LOOP4
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
set C_modelName {dpu_func_Pipeline_FUNC_MONTMUL_LOOP4}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_p1_7_reload int 8192 regular  }
	{ this_pMem_load_12 int 8192 regular  }
	{ this_p3_7_reload int 8192 regular  }
	{ this_p4_7_reload int 8192 regular  }
	{ itr_cast int 3 regular  }
	{ this_pMem int 8192 regular {array 158 { 2 1 } 1 1 }  }
	{ addr3_cast_cast int 6 regular  }
	{ this_p1_8_out int 8192 regular {pointer 1}  }
	{ this_p2_4_out int 8192 regular {pointer 1}  }
	{ this_p3_8_out int 8192 regular {pointer 1}  }
	{ this_p4_8_out int 8192 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_p1_7_reload", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_pMem_load_12", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_p3_7_reload", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_p4_7_reload", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "itr_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "this_pMem", "interface" : "memory", "bitwidth" : 8192, "direction" : "READWRITE"} , 
 	{ "Name" : "addr3_cast_cast", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "this_p1_8_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_p2_4_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_p3_8_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_p4_8_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_p1_7_reload sc_in sc_lv 8192 signal 0 } 
	{ this_pMem_load_12 sc_in sc_lv 8192 signal 1 } 
	{ this_p3_7_reload sc_in sc_lv 8192 signal 2 } 
	{ this_p4_7_reload sc_in sc_lv 8192 signal 3 } 
	{ itr_cast sc_in sc_lv 3 signal 4 } 
	{ this_pMem_address0 sc_out sc_lv 8 signal 5 } 
	{ this_pMem_ce0 sc_out sc_logic 1 signal 5 } 
	{ this_pMem_we0 sc_out sc_lv 1024 signal 5 } 
	{ this_pMem_d0 sc_out sc_lv 8192 signal 5 } 
	{ this_pMem_q0 sc_in sc_lv 8192 signal 5 } 
	{ this_pMem_address1 sc_out sc_lv 8 signal 5 } 
	{ this_pMem_ce1 sc_out sc_logic 1 signal 5 } 
	{ this_pMem_q1 sc_in sc_lv 8192 signal 5 } 
	{ addr3_cast_cast sc_in sc_lv 6 signal 6 } 
	{ this_p1_8_out sc_out sc_lv 8192 signal 7 } 
	{ this_p1_8_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ this_p2_4_out sc_out sc_lv 8192 signal 8 } 
	{ this_p2_4_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ this_p3_8_out sc_out sc_lv 8192 signal 9 } 
	{ this_p3_8_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ this_p4_8_out sc_out sc_lv 8192 signal 10 } 
	{ this_p4_8_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ grp_dpu_unit_fu_2995_p_din1 sc_out sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2995_p_din2 sc_out sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2995_p_din3 sc_out sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2995_p_din4 sc_out sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2995_p_din5 sc_out sc_lv 8 signal -1 } 
	{ grp_dpu_unit_fu_2995_p_dout0_0 sc_in sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2995_p_dout0_1 sc_in sc_lv 8192 signal -1 } 
	{ grp_dpu_unit_fu_2995_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_p1_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p1_7_reload", "role": "default" }} , 
 	{ "name": "this_pMem_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem_load_12", "role": "default" }} , 
 	{ "name": "this_p3_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p3_7_reload", "role": "default" }} , 
 	{ "name": "this_p4_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p4_7_reload", "role": "default" }} , 
 	{ "name": "itr_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "itr_cast", "role": "default" }} , 
 	{ "name": "this_pMem_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_pMem", "role": "address0" }} , 
 	{ "name": "this_pMem_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_pMem", "role": "ce0" }} , 
 	{ "name": "this_pMem_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "this_pMem", "role": "we0" }} , 
 	{ "name": "this_pMem_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "d0" }} , 
 	{ "name": "this_pMem_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "q0" }} , 
 	{ "name": "this_pMem_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_pMem", "role": "address1" }} , 
 	{ "name": "this_pMem_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_pMem", "role": "ce1" }} , 
 	{ "name": "this_pMem_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "q1" }} , 
 	{ "name": "addr3_cast_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "addr3_cast_cast", "role": "default" }} , 
 	{ "name": "this_p1_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p1_8_out", "role": "default" }} , 
 	{ "name": "this_p1_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_p1_8_out", "role": "ap_vld" }} , 
 	{ "name": "this_p2_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p2_4_out", "role": "default" }} , 
 	{ "name": "this_p2_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_p2_4_out", "role": "ap_vld" }} , 
 	{ "name": "this_p3_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p3_8_out", "role": "default" }} , 
 	{ "name": "this_p3_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_p3_8_out", "role": "ap_vld" }} , 
 	{ "name": "this_p4_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p4_8_out", "role": "default" }} , 
 	{ "name": "this_p4_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_p4_8_out", "role": "ap_vld" }} , 
 	{ "name": "grp_dpu_unit_fu_2995_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2995_p_din1", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2995_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2995_p_din2", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2995_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2995_p_din3", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2995_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2995_p_din4", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2995_p_din5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2995_p_din5", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2995_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2995_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2995_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2995_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_dpu_unit_fu_2995_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_dpu_unit_fu_2995_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:210:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_41", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:210:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:210:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_41", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:210:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "this_p1_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP4 {
		this_p1_7_reload {Type I LastRead 0 FirstWrite -1}
		this_pMem_load_12 {Type I LastRead 0 FirstWrite -1}
		this_p3_7_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_7_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_p1_8_out {Type O LastRead -1 FirstWrite 1}
		this_p2_4_out {Type O LastRead -1 FirstWrite 1}
		this_p3_8_out {Type O LastRead -1 FirstWrite 1}
		this_p4_8_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "15"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	this_p1_7_reload { ap_none {  { this_p1_7_reload in_data 0 8192 } } }
	this_pMem_load_12 { ap_none {  { this_pMem_load_12 in_data 0 8192 } } }
	this_p3_7_reload { ap_none {  { this_p3_7_reload in_data 0 8192 } } }
	this_p4_7_reload { ap_none {  { this_p4_7_reload in_data 0 8192 } } }
	itr_cast { ap_none {  { itr_cast in_data 0 3 } } }
	this_pMem { ap_memory {  { this_pMem_address0 mem_address 1 8 }  { this_pMem_ce0 mem_ce 1 1 }  { this_pMem_we0 mem_we 1 1024 }  { this_pMem_d0 mem_din 1 8192 }  { this_pMem_q0 in_data 0 8192 }  { this_pMem_address1 MemPortADDR2 1 8 }  { this_pMem_ce1 MemPortCE2 1 1 }  { this_pMem_q1 in_data 0 8192 } } }
	addr3_cast_cast { ap_none {  { addr3_cast_cast in_data 0 6 } } }
	this_p1_8_out { ap_vld {  { this_p1_8_out out_data 1 8192 }  { this_p1_8_out_ap_vld out_vld 1 1 } } }
	this_p2_4_out { ap_vld {  { this_p2_4_out out_data 1 8192 }  { this_p2_4_out_ap_vld out_vld 1 1 } } }
	this_p3_8_out { ap_vld {  { this_p3_8_out out_data 1 8192 }  { this_p3_8_out_ap_vld out_vld 1 1 } } }
	this_p4_8_out { ap_vld {  { this_p4_8_out out_data 1 8192 }  { this_p4_8_out_ap_vld out_vld 1 1 } } }
}
