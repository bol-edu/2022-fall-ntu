set moduleName dpu_func
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
set C_modelName {dpu_func}
set C_modelType { int 32768 }
set C_modelArgList {
	{ this_pMem int 8192 regular {array 158 { 2 2 } 1 1 }  }
	{ p_read int 8192 regular  }
	{ p_read1 int 8192 regular  }
	{ p_read2 int 8192 regular  }
	{ p_read3 int 8192 regular  }
	{ addr1 uint 8 regular  }
	{ addr2 uint 8 regular  }
	{ addr3 uint 8 regular  }
	{ type_r uint 8 regular  }
	{ itr uint 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_pMem", "interface" : "memory", "bitwidth" : 8192, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "addr1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "addr2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "addr3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "type_r", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "itr", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32768} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_pMem_address0 sc_out sc_lv 8 signal 0 } 
	{ this_pMem_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_pMem_we0 sc_out sc_lv 1024 signal 0 } 
	{ this_pMem_d0 sc_out sc_lv 8192 signal 0 } 
	{ this_pMem_q0 sc_in sc_lv 8192 signal 0 } 
	{ this_pMem_address1 sc_out sc_lv 8 signal 0 } 
	{ this_pMem_ce1 sc_out sc_logic 1 signal 0 } 
	{ this_pMem_we1 sc_out sc_lv 1024 signal 0 } 
	{ this_pMem_d1 sc_out sc_lv 8192 signal 0 } 
	{ this_pMem_q1 sc_in sc_lv 8192 signal 0 } 
	{ p_read sc_in sc_lv 8192 signal 1 } 
	{ p_read1 sc_in sc_lv 8192 signal 2 } 
	{ p_read2 sc_in sc_lv 8192 signal 3 } 
	{ p_read3 sc_in sc_lv 8192 signal 4 } 
	{ addr1 sc_in sc_lv 8 signal 5 } 
	{ addr2 sc_in sc_lv 8 signal 6 } 
	{ addr3 sc_in sc_lv 8 signal 7 } 
	{ type_r sc_in sc_lv 8 signal 8 } 
	{ itr sc_in sc_lv 8 signal 9 } 
	{ ap_return_0 sc_out sc_lv 8192 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8192 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8192 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8192 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_pMem_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_pMem", "role": "address0" }} , 
 	{ "name": "this_pMem_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_pMem", "role": "ce0" }} , 
 	{ "name": "this_pMem_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "this_pMem", "role": "we0" }} , 
 	{ "name": "this_pMem_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "d0" }} , 
 	{ "name": "this_pMem_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "q0" }} , 
 	{ "name": "this_pMem_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_pMem", "role": "address1" }} , 
 	{ "name": "this_pMem_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_pMem", "role": "ce1" }} , 
 	{ "name": "this_pMem_we1", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "this_pMem", "role": "we1" }} , 
 	{ "name": "this_pMem_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "d1" }} , 
 	{ "name": "this_pMem_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "q1" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "addr1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "addr1", "role": "default" }} , 
 	{ "name": "addr2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "addr2", "role": "default" }} , 
 	{ "name": "addr3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "addr3", "role": "default" }} , 
 	{ "name": "type_r", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "type_r", "role": "default" }} , 
 	{ "name": "itr", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "itr", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "260", "262", "264", "266", "268", "270", "272", "274", "276", "278", "280", "282", "284", "286", "288", "290", "292", "294", "296", "298", "300", "302", "304", "306", "308"],
		"CDFG" : "dpu_func",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "738",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "274", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025", "Port" : "this_pMem", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "290", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150", "Port" : "this_pMem", "Inst_start_state" : "55", "Inst_end_state" : "56"},
					{"ID" : "296", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194", "Port" : "this_pMem", "Inst_start_state" : "69", "Inst_end_state" : "70"},
					{"ID" : "292", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164", "Port" : "this_pMem", "Inst_start_state" : "57", "Inst_end_state" : "58"},
					{"ID" : "280", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073", "Port" : "this_pMem", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "278", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "300", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224", "Port" : "this_pMem", "Inst_start_state" : "88", "Inst_end_state" : "89"},
					{"ID" : "302", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239", "Port" : "this_pMem", "Inst_start_state" : "92", "Inst_end_state" : "93"},
					{"ID" : "304", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253", "Port" : "this_pMem", "Inst_start_state" : "96", "Inst_end_state" : "97"},
					{"ID" : "266", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "72"},
					{"ID" : "284", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101", "Port" : "this_pMem", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "262", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "48"},
					{"ID" : "260", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "264", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "60"},
					{"ID" : "270", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997", "Port" : "this_pMem", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "276", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041", "Port" : "this_pMem", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "282", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087", "Port" : "this_pMem", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "298", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210", "Port" : "this_pMem", "Inst_start_state" : "84", "Inst_end_state" : "85"},
					{"ID" : "306", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267", "Port" : "this_pMem", "Inst_start_state" : "98", "Inst_end_state" : "99"},
					{"ID" : "272", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011", "Port" : "this_pMem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "294", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180", "Port" : "this_pMem", "Inst_start_state" : "67", "Inst_end_state" : "68"},
					{"ID" : "288", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136", "Port" : "this_pMem", "Inst_start_state" : "51", "Inst_end_state" : "52"},
					{"ID" : "286", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116", "Port" : "this_pMem", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "101", "FirstState" : "ap_ST_fsm_state33", "LastState" : ["ap_ST_fsm_state47"], "QuitState" : ["ap_ST_fsm_state33"], "PreState" : ["ap_ST_fsm_state32"], "PostState" : ["ap_ST_fsm_state101"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUNC_NTT_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "101", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state101"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUNC_INTT_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "101", "FirstState" : "ap_ST_fsm_state84", "LastState" : ["ap_ST_fsm_state100"], "QuitState" : ["ap_ST_fsm_state84"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state101"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878", "Parent" : "0", "Child" : ["2", "259"],
		"CDFG" : "dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_42", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:281:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_42", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_60", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "4", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:281:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_42", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:281:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state5_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_60", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "4", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:281:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state5_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_60", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "4", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_42", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:281:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state5_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_60", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "4", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:281:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter1_stage1"]}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_POW2ROUND_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258"],
		"CDFG" : "dpu_unit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U109", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U110", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U111", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U112", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U113", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U114", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U115", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U116", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U117", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U118", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U119", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U120", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U121", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U122", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U123", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U124", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U125", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U126", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U127", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U128", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U129", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U130", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U131", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U132", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U133", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U134", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U135", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U136", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U137", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U138", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U139", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U140", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U141", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U142", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U143", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U144", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U145", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U146", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U147", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U148", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U149", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U150", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U151", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U152", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U153", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U154", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U155", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U156", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U157", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U158", "Parent" : "2"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U159", "Parent" : "2"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U160", "Parent" : "2"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U161", "Parent" : "2"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U162", "Parent" : "2"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U163", "Parent" : "2"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U164", "Parent" : "2"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U165", "Parent" : "2"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U166", "Parent" : "2"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U167", "Parent" : "2"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U168", "Parent" : "2"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U169", "Parent" : "2"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U170", "Parent" : "2"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U171", "Parent" : "2"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U172", "Parent" : "2"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U173", "Parent" : "2"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U174", "Parent" : "2"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U175", "Parent" : "2"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U176", "Parent" : "2"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U177", "Parent" : "2"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U178", "Parent" : "2"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U179", "Parent" : "2"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U180", "Parent" : "2"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U181", "Parent" : "2"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U182", "Parent" : "2"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U183", "Parent" : "2"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U184", "Parent" : "2"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U185", "Parent" : "2"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U186", "Parent" : "2"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U187", "Parent" : "2"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U188", "Parent" : "2"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U189", "Parent" : "2"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U190", "Parent" : "2"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U191", "Parent" : "2"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U192", "Parent" : "2"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U193", "Parent" : "2"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U194", "Parent" : "2"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U195", "Parent" : "2"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U196", "Parent" : "2"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U197", "Parent" : "2"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U198", "Parent" : "2"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U199", "Parent" : "2"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U200", "Parent" : "2"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U201", "Parent" : "2"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U202", "Parent" : "2"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U203", "Parent" : "2"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U204", "Parent" : "2"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U205", "Parent" : "2"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U206", "Parent" : "2"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U207", "Parent" : "2"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U208", "Parent" : "2"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U209", "Parent" : "2"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U210", "Parent" : "2"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U211", "Parent" : "2"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U212", "Parent" : "2"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U213", "Parent" : "2"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U214", "Parent" : "2"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U215", "Parent" : "2"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U216", "Parent" : "2"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U217", "Parent" : "2"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U218", "Parent" : "2"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U219", "Parent" : "2"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U220", "Parent" : "2"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U221", "Parent" : "2"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U222", "Parent" : "2"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U223", "Parent" : "2"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U224", "Parent" : "2"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U225", "Parent" : "2"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U226", "Parent" : "2"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U227", "Parent" : "2"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U228", "Parent" : "2"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U229", "Parent" : "2"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U230", "Parent" : "2"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U231", "Parent" : "2"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U232", "Parent" : "2"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U233", "Parent" : "2"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U234", "Parent" : "2"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U235", "Parent" : "2"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U236", "Parent" : "2"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U237", "Parent" : "2"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U238", "Parent" : "2"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U239", "Parent" : "2"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U240", "Parent" : "2"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U241", "Parent" : "2"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U242", "Parent" : "2"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U243", "Parent" : "2"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U244", "Parent" : "2"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U245", "Parent" : "2"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U246", "Parent" : "2"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U247", "Parent" : "2"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U248", "Parent" : "2"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U249", "Parent" : "2"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U250", "Parent" : "2"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U251", "Parent" : "2"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U252", "Parent" : "2"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U253", "Parent" : "2"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U254", "Parent" : "2"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U255", "Parent" : "2"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U256", "Parent" : "2"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U257", "Parent" : "2"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U258", "Parent" : "2"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U259", "Parent" : "2"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U260", "Parent" : "2"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U261", "Parent" : "2"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U262", "Parent" : "2"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U263", "Parent" : "2"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U264", "Parent" : "2"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U265", "Parent" : "2"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U266", "Parent" : "2"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U267", "Parent" : "2"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U268", "Parent" : "2"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U269", "Parent" : "2"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U270", "Parent" : "2"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U271", "Parent" : "2"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U272", "Parent" : "2"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U273", "Parent" : "2"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U274", "Parent" : "2"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U275", "Parent" : "2"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U276", "Parent" : "2"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U277", "Parent" : "2"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U278", "Parent" : "2"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U279", "Parent" : "2"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U280", "Parent" : "2"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U281", "Parent" : "2"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U282", "Parent" : "2"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U283", "Parent" : "2"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U284", "Parent" : "2"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U285", "Parent" : "2"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U286", "Parent" : "2"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U287", "Parent" : "2"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U288", "Parent" : "2"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U289", "Parent" : "2"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U290", "Parent" : "2"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U291", "Parent" : "2"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U292", "Parent" : "2"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U293", "Parent" : "2"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U294", "Parent" : "2"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U295", "Parent" : "2"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U296", "Parent" : "2"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U297", "Parent" : "2"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U298", "Parent" : "2"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U299", "Parent" : "2"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U300", "Parent" : "2"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U301", "Parent" : "2"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U302", "Parent" : "2"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U303", "Parent" : "2"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U304", "Parent" : "2"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U305", "Parent" : "2"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U306", "Parent" : "2"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U307", "Parent" : "2"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U308", "Parent" : "2"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U309", "Parent" : "2"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U310", "Parent" : "2"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U311", "Parent" : "2"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U312", "Parent" : "2"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U313", "Parent" : "2"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U314", "Parent" : "2"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U315", "Parent" : "2"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U316", "Parent" : "2"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U317", "Parent" : "2"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U318", "Parent" : "2"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U319", "Parent" : "2"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U320", "Parent" : "2"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U321", "Parent" : "2"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U322", "Parent" : "2"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U323", "Parent" : "2"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U324", "Parent" : "2"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U325", "Parent" : "2"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U326", "Parent" : "2"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U327", "Parent" : "2"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U328", "Parent" : "2"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U329", "Parent" : "2"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U330", "Parent" : "2"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U331", "Parent" : "2"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U332", "Parent" : "2"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U333", "Parent" : "2"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U334", "Parent" : "2"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U335", "Parent" : "2"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U336", "Parent" : "2"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U337", "Parent" : "2"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U338", "Parent" : "2"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U339", "Parent" : "2"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U340", "Parent" : "2"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U341", "Parent" : "2"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U342", "Parent" : "2"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U343", "Parent" : "2"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U344", "Parent" : "2"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U345", "Parent" : "2"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U346", "Parent" : "2"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U347", "Parent" : "2"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U348", "Parent" : "2"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U349", "Parent" : "2"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U350", "Parent" : "2"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U351", "Parent" : "2"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U352", "Parent" : "2"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U353", "Parent" : "2"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U354", "Parent" : "2"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U355", "Parent" : "2"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U356", "Parent" : "2"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U357", "Parent" : "2"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U358", "Parent" : "2"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U359", "Parent" : "2"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U360", "Parent" : "2"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U361", "Parent" : "2"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U362", "Parent" : "2"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U363", "Parent" : "2"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U364", "Parent" : "2"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900", "Parent" : "0", "Child" : ["261"],
		"CDFG" : "dpu_func_Pipeline_FUNC_CADDQ_LOOP1",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_34", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_38", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_45", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:271:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_45", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_34", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_38", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:271:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_CADDQ_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920", "Parent" : "0", "Child" : ["263"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP1",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_33", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_42", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_33", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_42", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_43", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_43", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_33", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_42", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_43", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_33", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_42", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_43", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:182:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "idxprom_i462", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939", "Parent" : "0", "Child" : ["265"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP1",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:156:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:156:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.flow_control_loop_pipe_sequential_init_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959", "Parent" : "0", "Child" : ["267"],
		"CDFG" : "dpu_func_Pipeline_FUNC_ADD_LOOP1",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_41", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:145:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_51", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:145:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_41", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:145:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_51", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:145:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_ADD_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.flow_control_loop_pipe_sequential_init_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982", "Parent" : "0", "Child" : ["269"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP1",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:294:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:294:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:294:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:294:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:294:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "this_p1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.flow_control_loop_pipe_sequential_init_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997", "Parent" : "0", "Child" : ["271"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP2",
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
		"Port" : [
			{"Name" : "this_p1_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997.flow_control_loop_pipe_sequential_init_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011", "Parent" : "0", "Child" : ["273"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP3",
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
		"Port" : [
			{"Name" : "this_p1_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025", "Parent" : "0", "Child" : ["275"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP4",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_33", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_43", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:321:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_44", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:321:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_33", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_43", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:321:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_44", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:321:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "this_p1_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p2_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_23_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.flow_control_loop_pipe_sequential_init_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041", "Parent" : "0", "Child" : ["277"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP5",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_40", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_308", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_308", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:330:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_308", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_308", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_40", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:330:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "this_p1_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p2_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p2_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_24_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.flow_control_loop_pipe_sequential_init_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057", "Parent" : "0", "Child" : ["279"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP1",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_39", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_58", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_39", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_62", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_62", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_43", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_48", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_58", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_43", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_48", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_62", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_62", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_58", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_58", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_43", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_48", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_62", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_62", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_62", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_62", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_43", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_48", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_62", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_62", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_58", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:222:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "this_p1_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln223_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.flow_control_loop_pipe_sequential_init_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073", "Parent" : "0", "Child" : ["281"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP2",
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
		"Port" : [
			{"Name" : "this_p1_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073.flow_control_loop_pipe_sequential_init_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087", "Parent" : "0", "Child" : ["283"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP3",
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
		"Port" : [
			{"Name" : "this_p1_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087.flow_control_loop_pipe_sequential_init_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101", "Parent" : "0", "Child" : ["285"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP4",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_35", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_43", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_52", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_52", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:250:9)", "Type" : "WAR"}],
		"Port" : [
			{"Name" : "this_p1_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_p1_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p2_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101.flow_control_loop_pipe_sequential_init_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116", "Parent" : "0", "Child" : ["287"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_p1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p2_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "idxprom_i550", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p2_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_15_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_p4_15_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP5", "PipelineType" : "NotSupport"}]},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116.flow_control_loop_pipe_sequential_init_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136", "Parent" : "0", "Child" : ["289"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP2",
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
		"Port" : [
			{"Name" : "this_p1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136.flow_control_loop_pipe_sequential_init_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150", "Parent" : "0", "Child" : ["291"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP3",
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
		"Port" : [
			{"Name" : "this_p1_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150.flow_control_loop_pipe_sequential_init_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164", "Parent" : "0", "Child" : ["293"],
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
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.flow_control_loop_pipe_sequential_init_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180", "Parent" : "0", "Child" : ["295"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP2",
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
		"Port" : [
			{"Name" : "this_p1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180.flow_control_loop_pipe_sequential_init_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194", "Parent" : "0", "Child" : ["297"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP3",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_45", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_54", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:171:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_41", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_46", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_54", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:171:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_54", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_54", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_45", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:171:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_54", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_54", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_41", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_46", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:171:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "this_p1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.flow_control_loop_pipe_sequential_init_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210", "Parent" : "0", "Child" : ["299"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP1",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_33", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_302", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_302", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:343:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_302", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_302", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_33", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:343:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "this_p1_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.flow_control_loop_pipe_sequential_init_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224", "Parent" : "0", "Child" : ["301"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP2",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:351:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_31", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:351:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:351:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_31", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:351:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:351:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "this_p1_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_28_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.flow_control_loop_pipe_sequential_init_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239", "Parent" : "0", "Child" : ["303"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP3",
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
		"Port" : [
			{"Name" : "this_p1_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253", "Parent" : "0", "Child" : ["305"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP4",
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
		"Port" : [
			{"Name" : "this_p1_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "this_pMem_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_30_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253.flow_control_loop_pipe_sequential_init_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267", "Parent" : "0", "Child" : ["307"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP5",
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_33", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_43", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:378:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_44", "FromFinalSV" : "1", "FromAddress" : "this_pMem_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "3", "ToAddress" : "this_pMem_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:378:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_33", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_43", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:378:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "3", "FromAddress" : "this_pMem_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_44", "ToFinalSV" : "1", "ToAddress" : "this_pMem_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(HLS_Final_vitis_src/dpu.cpp:378:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "this_p1_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p3_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p4_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p1_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p2_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p3_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_p4_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995", "Parent" : "0", "Child" : ["309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564"],
		"CDFG" : "dpu_unit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U109", "Parent" : "308"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U110", "Parent" : "308"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U111", "Parent" : "308"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U112", "Parent" : "308"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U113", "Parent" : "308"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U114", "Parent" : "308"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U115", "Parent" : "308"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U116", "Parent" : "308"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U117", "Parent" : "308"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U118", "Parent" : "308"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U119", "Parent" : "308"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U120", "Parent" : "308"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U121", "Parent" : "308"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U122", "Parent" : "308"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U123", "Parent" : "308"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U124", "Parent" : "308"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U125", "Parent" : "308"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U126", "Parent" : "308"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U127", "Parent" : "308"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U128", "Parent" : "308"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U129", "Parent" : "308"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U130", "Parent" : "308"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U131", "Parent" : "308"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U132", "Parent" : "308"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U133", "Parent" : "308"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U134", "Parent" : "308"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U135", "Parent" : "308"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U136", "Parent" : "308"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U137", "Parent" : "308"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U138", "Parent" : "308"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U139", "Parent" : "308"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U140", "Parent" : "308"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U141", "Parent" : "308"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U142", "Parent" : "308"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U143", "Parent" : "308"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U144", "Parent" : "308"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U145", "Parent" : "308"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U146", "Parent" : "308"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U147", "Parent" : "308"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U148", "Parent" : "308"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U149", "Parent" : "308"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U150", "Parent" : "308"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U151", "Parent" : "308"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U152", "Parent" : "308"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U153", "Parent" : "308"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U154", "Parent" : "308"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U155", "Parent" : "308"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U156", "Parent" : "308"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U157", "Parent" : "308"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U158", "Parent" : "308"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U159", "Parent" : "308"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U160", "Parent" : "308"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U161", "Parent" : "308"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U162", "Parent" : "308"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U163", "Parent" : "308"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U164", "Parent" : "308"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U165", "Parent" : "308"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U166", "Parent" : "308"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U167", "Parent" : "308"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U168", "Parent" : "308"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U169", "Parent" : "308"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U170", "Parent" : "308"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U171", "Parent" : "308"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U172", "Parent" : "308"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U173", "Parent" : "308"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U174", "Parent" : "308"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U175", "Parent" : "308"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U176", "Parent" : "308"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U177", "Parent" : "308"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U178", "Parent" : "308"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U179", "Parent" : "308"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U180", "Parent" : "308"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U181", "Parent" : "308"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U182", "Parent" : "308"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U183", "Parent" : "308"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U184", "Parent" : "308"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U185", "Parent" : "308"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U186", "Parent" : "308"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U187", "Parent" : "308"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U188", "Parent" : "308"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U189", "Parent" : "308"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U190", "Parent" : "308"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U191", "Parent" : "308"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U192", "Parent" : "308"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U193", "Parent" : "308"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U194", "Parent" : "308"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U195", "Parent" : "308"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U196", "Parent" : "308"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U197", "Parent" : "308"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U198", "Parent" : "308"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U199", "Parent" : "308"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U200", "Parent" : "308"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U201", "Parent" : "308"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U202", "Parent" : "308"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U203", "Parent" : "308"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U204", "Parent" : "308"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U205", "Parent" : "308"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U206", "Parent" : "308"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U207", "Parent" : "308"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U208", "Parent" : "308"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U209", "Parent" : "308"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U210", "Parent" : "308"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U211", "Parent" : "308"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U212", "Parent" : "308"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U213", "Parent" : "308"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U214", "Parent" : "308"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U215", "Parent" : "308"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U216", "Parent" : "308"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U217", "Parent" : "308"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U218", "Parent" : "308"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U219", "Parent" : "308"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U220", "Parent" : "308"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U221", "Parent" : "308"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U222", "Parent" : "308"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U223", "Parent" : "308"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U224", "Parent" : "308"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U225", "Parent" : "308"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U226", "Parent" : "308"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U227", "Parent" : "308"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U228", "Parent" : "308"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U229", "Parent" : "308"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U230", "Parent" : "308"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U231", "Parent" : "308"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U232", "Parent" : "308"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U233", "Parent" : "308"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U234", "Parent" : "308"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U235", "Parent" : "308"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U236", "Parent" : "308"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U237", "Parent" : "308"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U238", "Parent" : "308"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U239", "Parent" : "308"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U240", "Parent" : "308"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U241", "Parent" : "308"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U242", "Parent" : "308"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U243", "Parent" : "308"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U244", "Parent" : "308"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U245", "Parent" : "308"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U246", "Parent" : "308"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U247", "Parent" : "308"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U248", "Parent" : "308"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U249", "Parent" : "308"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U250", "Parent" : "308"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U251", "Parent" : "308"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U252", "Parent" : "308"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U253", "Parent" : "308"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U254", "Parent" : "308"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U255", "Parent" : "308"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U256", "Parent" : "308"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U257", "Parent" : "308"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U258", "Parent" : "308"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U259", "Parent" : "308"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U260", "Parent" : "308"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U261", "Parent" : "308"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U262", "Parent" : "308"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U263", "Parent" : "308"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U264", "Parent" : "308"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U265", "Parent" : "308"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U266", "Parent" : "308"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U267", "Parent" : "308"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U268", "Parent" : "308"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U269", "Parent" : "308"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U270", "Parent" : "308"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U271", "Parent" : "308"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U272", "Parent" : "308"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U273", "Parent" : "308"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U274", "Parent" : "308"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U275", "Parent" : "308"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U276", "Parent" : "308"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U277", "Parent" : "308"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U278", "Parent" : "308"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U279", "Parent" : "308"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U280", "Parent" : "308"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U281", "Parent" : "308"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U282", "Parent" : "308"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U283", "Parent" : "308"},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U284", "Parent" : "308"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U285", "Parent" : "308"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U286", "Parent" : "308"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U287", "Parent" : "308"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U288", "Parent" : "308"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U289", "Parent" : "308"},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U290", "Parent" : "308"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U291", "Parent" : "308"},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U292", "Parent" : "308"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U293", "Parent" : "308"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U294", "Parent" : "308"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U295", "Parent" : "308"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U296", "Parent" : "308"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U297", "Parent" : "308"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U298", "Parent" : "308"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U299", "Parent" : "308"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U300", "Parent" : "308"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U301", "Parent" : "308"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U302", "Parent" : "308"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U303", "Parent" : "308"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U304", "Parent" : "308"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U305", "Parent" : "308"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U306", "Parent" : "308"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U307", "Parent" : "308"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U308", "Parent" : "308"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U309", "Parent" : "308"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U310", "Parent" : "308"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U311", "Parent" : "308"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U312", "Parent" : "308"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U313", "Parent" : "308"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U314", "Parent" : "308"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U315", "Parent" : "308"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U316", "Parent" : "308"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U317", "Parent" : "308"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U318", "Parent" : "308"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U319", "Parent" : "308"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U320", "Parent" : "308"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U321", "Parent" : "308"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U322", "Parent" : "308"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U323", "Parent" : "308"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U324", "Parent" : "308"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U325", "Parent" : "308"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U326", "Parent" : "308"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U327", "Parent" : "308"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U328", "Parent" : "308"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U329", "Parent" : "308"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U330", "Parent" : "308"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U331", "Parent" : "308"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U332", "Parent" : "308"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U333", "Parent" : "308"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U334", "Parent" : "308"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U335", "Parent" : "308"},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U336", "Parent" : "308"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U337", "Parent" : "308"},
	{"ID" : "538", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U338", "Parent" : "308"},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U339", "Parent" : "308"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U340", "Parent" : "308"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U341", "Parent" : "308"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U342", "Parent" : "308"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U343", "Parent" : "308"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U344", "Parent" : "308"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U345", "Parent" : "308"},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U346", "Parent" : "308"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U347", "Parent" : "308"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U348", "Parent" : "308"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U349", "Parent" : "308"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U350", "Parent" : "308"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U351", "Parent" : "308"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U352", "Parent" : "308"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U353", "Parent" : "308"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U354", "Parent" : "308"},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U355", "Parent" : "308"},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U356", "Parent" : "308"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U357", "Parent" : "308"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U358", "Parent" : "308"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U359", "Parent" : "308"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U360", "Parent" : "308"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U361", "Parent" : "308"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U362", "Parent" : "308"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U363", "Parent" : "308"},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U364", "Parent" : "308"}]}


set ArgLastReadFirstWriteLatency {
	dpu_func {
		this_pMem {Type IO LastRead 11 FirstWrite 3}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2 {Type I LastRead 0 FirstWrite -1}
		addr3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}
		itr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_p1_17_out {Type O LastRead -1 FirstWrite 2}
		this_p3_18_out {Type O LastRead -1 FirstWrite 2}
		this_p4_18_out {Type O LastRead -1 FirstWrite 2}}
	dpu_unit {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_CADDQ_LOOP1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		this_p1_16_out {Type O LastRead -1 FirstWrite 1}
		this_p3_17_out {Type O LastRead -1 FirstWrite 1}
		this_p4_17_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		idxprom_i462 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_p1_5_out {Type O LastRead -1 FirstWrite 1}
		this_p3_5_out {Type O LastRead -1 FirstWrite 1}
		this_p4_5_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_RD_LOOP1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		this_p1_1_out {Type O LastRead -1 FirstWrite 1}
		this_p3_1_out {Type O LastRead -1 FirstWrite 1}
		this_p4_1_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_ADD_LOOP1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_p1_0_out {Type O LastRead -1 FirstWrite 1}
		this_p2_0_out {Type O LastRead -1 FirstWrite 1}
		this_p3_0_out {Type O LastRead -1 FirstWrite 1}
		this_p4_0_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP1 {
		this_p1_18 {Type I LastRead 0 FirstWrite -1}
		this_p3_19 {Type I LastRead 0 FirstWrite -1}
		this_p4_19 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_pMem_load_9 {Type I LastRead 0 FirstWrite -1}
		this_p1_19_out {Type O LastRead -1 FirstWrite 1}
		this_p3_20_out {Type O LastRead -1 FirstWrite 1}
		this_p4_20_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP2 {
		this_p1_19_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_20_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_20_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_17 {Type I LastRead 0 FirstWrite -1}
		this_p1_20_out {Type O LastRead -1 FirstWrite 1}
		this_p3_21_out {Type O LastRead -1 FirstWrite 1}
		this_p4_21_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP3 {
		this_p1_20_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_21_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_21_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_25 {Type I LastRead 0 FirstWrite -1}
		this_p1_21_out {Type O LastRead -1 FirstWrite 1}
		this_p3_22_out {Type O LastRead -1 FirstWrite 1}
		this_p4_22_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP4 {
		this_p1_21_reload {Type I LastRead 0 FirstWrite -1}
		this_pMem_load_25 {Type I LastRead 0 FirstWrite -1}
		this_p3_22_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_22_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_p1_22_out {Type O LastRead -1 FirstWrite 1}
		this_p2_11_out {Type O LastRead -1 FirstWrite 1}
		this_p3_23_out {Type O LastRead -1 FirstWrite 1}
		this_p4_23_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP5 {
		this_p1_22_reload {Type I LastRead 0 FirstWrite -1}
		this_p2_11_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_23_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_23_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_p1_23_out {Type O LastRead -1 FirstWrite 1}
		this_p2_12_out {Type O LastRead -1 FirstWrite 1}
		this_p3_24_out {Type O LastRead -1 FirstWrite 1}
		this_p4_24_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP1 {
		this_p1_9 {Type I LastRead 0 FirstWrite -1}
		this_p3_9 {Type I LastRead 0 FirstWrite -1}
		this_p4_9 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		zext_ln223_2 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_p1_10_out {Type O LastRead -1 FirstWrite 1}
		this_p3_10_out {Type O LastRead -1 FirstWrite 1}
		this_p4_10_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP2 {
		this_p1_10_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_10_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_10_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_14 {Type I LastRead 0 FirstWrite -1}
		this_p1_11_out {Type O LastRead -1 FirstWrite 1}
		this_p3_11_out {Type O LastRead -1 FirstWrite 1}
		this_p4_11_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP3 {
		this_p1_11_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_11_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_11_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_23 {Type I LastRead 0 FirstWrite -1}
		this_p1_12_out {Type O LastRead -1 FirstWrite 1}
		this_p3_12_out {Type O LastRead -1 FirstWrite 1}
		this_p4_12_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP4 {
		this_p1_12_reload {Type I LastRead 0 FirstWrite -1}
		this_pMem_load_23 {Type I LastRead 0 FirstWrite -1}
		this_p3_12_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_12_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		this_p1_13_out {Type O LastRead -1 FirstWrite 1}
		this_p2_7_out {Type O LastRead -1 FirstWrite 1}
		this_p3_13_out {Type O LastRead -1 FirstWrite 1}
		this_p4_13_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP5 {
		this_p1_14 {Type I LastRead 0 FirstWrite -1}
		this_p2_8 {Type I LastRead 0 FirstWrite -1}
		this_p3_14 {Type I LastRead 0 FirstWrite -1}
		this_p4_14 {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		idxprom_i550 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_p1_15_out {Type O LastRead -1 FirstWrite 0}
		this_p2_9_out {Type O LastRead -1 FirstWrite 0}
		this_p3_15_out {Type IO LastRead 3 FirstWrite 0}
		this_p4_15_out {Type IO LastRead 1 FirstWrite 0}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP2 {
		this_p1_5_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_5_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_5_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_4 {Type I LastRead 0 FirstWrite -1}
		this_p1_6_out {Type O LastRead -1 FirstWrite 1}
		this_p3_6_out {Type O LastRead -1 FirstWrite 1}
		this_p4_6_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP3 {
		this_p1_6_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_6_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_6_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_12 {Type I LastRead 0 FirstWrite -1}
		this_p1_7_out {Type O LastRead -1 FirstWrite 1}
		this_p3_7_out {Type O LastRead -1 FirstWrite 1}
		this_p4_7_out {Type O LastRead -1 FirstWrite 1}}
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
		this_p4_8_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_RD_LOOP2 {
		this_p1_1_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_1_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_1_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_2 {Type I LastRead 0 FirstWrite -1}
		this_p1_2_out {Type O LastRead -1 FirstWrite 1}
		this_p3_2_out {Type O LastRead -1 FirstWrite 1}
		this_p4_2_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_RD_LOOP3 {
		this_p1_2_reload {Type I LastRead 0 FirstWrite -1}
		this_pMem_load_2 {Type I LastRead 0 FirstWrite -1}
		this_p3_2_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_2_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_p1_3_out {Type O LastRead -1 FirstWrite 1}
		this_p2_1_out {Type O LastRead -1 FirstWrite 1}
		this_p3_3_out {Type O LastRead -1 FirstWrite 1}
		this_p4_3_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP1 {
		this_p1_25 {Type I LastRead 0 FirstWrite -1}
		this_p3_26 {Type I LastRead 0 FirstWrite -1}
		this_p4_26 {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_p1_26_out {Type O LastRead -1 FirstWrite 1}
		this_p3_27_out {Type O LastRead -1 FirstWrite 1}
		this_p4_27_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP2 {
		this_p1_26_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_27_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_27_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_pMem_load_10 {Type I LastRead 0 FirstWrite -1}
		this_p1_27_out {Type O LastRead -1 FirstWrite 1}
		this_p3_28_out {Type O LastRead -1 FirstWrite 1}
		this_p4_28_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP3 {
		this_p1_27_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_28_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_28_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_20 {Type I LastRead 0 FirstWrite -1}
		this_p1_28_out {Type O LastRead -1 FirstWrite 1}
		this_p3_29_out {Type O LastRead -1 FirstWrite 1}
		this_p4_29_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP4 {
		this_p1_28_reload {Type I LastRead 0 FirstWrite -1}
		this_p3_29_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_29_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 0 FirstWrite 3}
		this_pMem_load_29 {Type I LastRead 0 FirstWrite -1}
		this_p1_29_out {Type O LastRead -1 FirstWrite 1}
		this_p3_30_out {Type O LastRead -1 FirstWrite 1}
		this_p4_30_out {Type O LastRead -1 FirstWrite 1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP5 {
		this_p1_29_reload {Type I LastRead 0 FirstWrite -1}
		this_pMem_load_29 {Type I LastRead 0 FirstWrite -1}
		this_p3_30_reload {Type I LastRead 0 FirstWrite -1}
		this_p4_30_reload {Type I LastRead 0 FirstWrite -1}
		itr_cast {Type I LastRead 0 FirstWrite -1}
		this_pMem {Type IO LastRead 1 FirstWrite 3}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_p1_30_out {Type O LastRead -1 FirstWrite 1}
		this_p2_16_out {Type O LastRead -1 FirstWrite 1}
		this_p3_31_out {Type O LastRead -1 FirstWrite 1}
		this_p4_31_out {Type O LastRead -1 FirstWrite 1}}
	dpu_unit {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "738"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "738"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_pMem { ap_memory {  { this_pMem_address0 mem_address 1 8 }  { this_pMem_ce0 mem_ce 1 1 }  { this_pMem_we0 mem_we 1 1024 }  { this_pMem_d0 mem_din 1 8192 }  { this_pMem_q0 in_data 0 8192 }  { this_pMem_address1 MemPortADDR2 1 8 }  { this_pMem_ce1 MemPortCE2 1 1 }  { this_pMem_we1 MemPortWE2 1 1024 }  { this_pMem_d1 MemPortDIN2 1 8192 }  { this_pMem_q1 MemPortDOUT2 0 8192 } } }
	p_read { ap_none {  { p_read in_data 0 8192 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8192 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8192 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8192 } } }
	addr1 { ap_none {  { addr1 in_data 0 8 } } }
	addr2 { ap_none {  { addr2 in_data 0 8 } } }
	addr3 { ap_none {  { addr3 in_data 0 8 } } }
	type_r { ap_none {  { type_r in_data 0 8 } } }
	itr { ap_none {  { itr in_data 0 8 } } }
}
