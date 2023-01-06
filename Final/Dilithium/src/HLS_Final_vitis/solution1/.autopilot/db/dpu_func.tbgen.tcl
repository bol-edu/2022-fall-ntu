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
	{ this_0 int 8192 regular {array 158 { 2 3 } 1 1 }  }
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
	{ "Name" : "this_0", "interface" : "memory", "bitwidth" : 8192, "direction" : "READWRITE"} , 
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
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_0_address0 sc_out sc_lv 8 signal 0 } 
	{ this_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_0_we0 sc_out sc_lv 1024 signal 0 } 
	{ this_0_d0 sc_out sc_lv 8192 signal 0 } 
	{ this_0_q0 sc_in sc_lv 8192 signal 0 } 
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
 	{ "name": "this_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_0", "role": "address0" }} , 
 	{ "name": "this_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_0", "role": "ce0" }} , 
 	{ "name": "this_0_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "this_0", "role": "we0" }} , 
 	{ "name": "this_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_0", "role": "d0" }} , 
 	{ "name": "this_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_0", "role": "q0" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7", "11", "17", "21", "283", "288", "293", "297", "301", "306", "310", "316", "320", "324", "329", "334", "338", "342", "347", "351", "356", "360", "365", "369", "373", "378", "635"],
		"CDFG" : "dpu_func",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "7802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "92"},
					{"ID" : "324", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961", "Port" : "this_0", "Inst_start_state" : "88", "Inst_end_state" : "89"},
					{"ID" : "347", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036", "Port" : "this_0", "Inst_start_state" : "132", "Inst_end_state" : "133"},
					{"ID" : "356", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066", "Port" : "this_0", "Inst_start_state" : "137", "Inst_end_state" : "138"},
					{"ID" : "373", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123", "Port" : "this_0", "Inst_start_state" : "151", "Inst_end_state" : "152"},
					{"ID" : "21", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "92"},
					{"ID" : "283", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "153"},
					{"ID" : "301", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885", "Port" : "this_0", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "342", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020", "Port" : "this_0", "Inst_start_state" : "128", "Inst_end_state" : "129"},
					{"ID" : "7", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "360", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080", "Port" : "this_0", "Inst_start_state" : "141", "Inst_end_state" : "142"},
					{"ID" : "320", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947", "Port" : "this_0", "Inst_start_state" : "86", "Inst_end_state" : "87"},
					{"ID" : "351", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050", "Port" : "this_0", "Inst_start_state" : "134", "Inst_end_state" : "135"},
					{"ID" : "306", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901", "Port" : "this_0", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "365", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095", "Port" : "this_0", "Inst_start_state" : "145", "Inst_end_state" : "146"},
					{"ID" : "2", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "369", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109", "Port" : "this_0", "Inst_start_state" : "149", "Inst_end_state" : "150"},
					{"ID" : "316", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933", "Port" : "this_0", "Inst_start_state" : "82", "Inst_end_state" : "83"},
					{"ID" : "329", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976", "Port" : "this_0", "Inst_start_state" : "90", "Inst_end_state" : "91"},
					{"ID" : "310", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917", "Port" : "this_0", "Inst_start_state" : "64", "Inst_end_state" : "65"},
					{"ID" : "293", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857", "Port" : "this_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "334", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992", "Port" : "this_0", "Inst_start_state" : "122", "Inst_end_state" : "123"},
					{"ID" : "288", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842", "Port" : "this_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "17", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "92"},
					{"ID" : "1", "SubInstance" : "grp_read_p2_fu_664", "Port" : "this_pMem", "Inst_start_state" : "147", "Inst_end_state" : "148"},
					{"ID" : "338", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006", "Port" : "this_0", "Inst_start_state" : "126", "Inst_end_state" : "127"},
					{"ID" : "297", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871", "Port" : "this_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
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
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state64", "LastState" : ["ap_ST_fsm_state91"], "QuitState" : ["ap_ST_fsm_state64"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state198"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUNC_NTT_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state198"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUNC_INTT_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "198", "FirstState" : "ap_ST_fsm_state137", "LastState" : ["ap_ST_fsm_state152"], "QuitState" : ["ap_ST_fsm_state137"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state198"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_p2_fu_664", "Parent" : "0",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_read_p1_fu_165", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "call_ln291_write_p4_fu_189", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"},
					{"ID" : "4", "SubInstance" : "call_ln290_write_p3_fu_181", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_POW2ROUND_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715.grp_read_p1_fu_165", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715.call_ln290_write_p3_fu_181", "Parent" : "2",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715.call_ln291_write_p4_fu_189", "Parent" : "2",
		"CDFG" : "write_p4",
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737", "Parent" : "0", "Child" : ["8", "9", "10"],
		"CDFG" : "dpu_func_Pipeline_FUNC_CADDQ_LOOP1",
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
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "call_ln281_write_p3_fu_161", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "8", "SubInstance" : "grp_read_p1_fu_145", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_CADDQ_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737.grp_read_p1_fu_145", "Parent" : "7",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737.call_ln281_write_p3_fu_161", "Parent" : "7",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "172", "EstimateLatencyMax" : "206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln50", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_read_p2_fu_162", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "12", "SubInstance" : "grp_read_p1_fu_155", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "14", "SubInstance" : "call_ln193_write_p3_fu_178", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "15", "SubInstance" : "call_ln194_write_p4_fu_186", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.grp_read_p1_fu_155", "Parent" : "11",
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.grp_read_p2_fu_162", "Parent" : "11",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.call_ln193_write_p3_fu_178", "Parent" : "11",
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.call_ln194_write_p4_fu_186", "Parent" : "11",
		"CDFG" : "write_p4",
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
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776", "Parent" : "0", "Child" : ["18", "19", "20"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP1",
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
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_read_p1_fu_147", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "19", "SubInstance" : "call_ln164_write_p3_fu_163", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776.grp_read_p1_fu_147", "Parent" : "17",
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776.call_ln164_write_p3_fu_163", "Parent" : "17",
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796", "Parent" : "0", "Child" : ["22", "23", "24", "281", "282"],
		"CDFG" : "dpu_func_Pipeline_FUNC_SUB_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_read_p2_fu_185", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "281", "SubInstance" : "call_ln154_write_p3_fu_201", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_read_p1_fu_178", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_SUB_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_read_p1_fu_178", "Parent" : "21",
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_read_p2_fu_185", "Parent" : "21",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192", "Parent" : "21", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280"],
		"CDFG" : "dpu_unit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
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
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U109", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U110", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U111", "Parent" : "24"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U112", "Parent" : "24"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U113", "Parent" : "24"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U114", "Parent" : "24"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U115", "Parent" : "24"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U116", "Parent" : "24"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U117", "Parent" : "24"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U118", "Parent" : "24"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U119", "Parent" : "24"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U120", "Parent" : "24"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U121", "Parent" : "24"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U122", "Parent" : "24"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U123", "Parent" : "24"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U124", "Parent" : "24"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U125", "Parent" : "24"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U126", "Parent" : "24"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U127", "Parent" : "24"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U128", "Parent" : "24"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U129", "Parent" : "24"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U130", "Parent" : "24"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U131", "Parent" : "24"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U132", "Parent" : "24"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U133", "Parent" : "24"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U134", "Parent" : "24"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U135", "Parent" : "24"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U136", "Parent" : "24"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U137", "Parent" : "24"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U138", "Parent" : "24"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U139", "Parent" : "24"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U140", "Parent" : "24"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U141", "Parent" : "24"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U142", "Parent" : "24"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U143", "Parent" : "24"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U144", "Parent" : "24"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U145", "Parent" : "24"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U146", "Parent" : "24"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U147", "Parent" : "24"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U148", "Parent" : "24"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U149", "Parent" : "24"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U150", "Parent" : "24"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U151", "Parent" : "24"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U152", "Parent" : "24"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U153", "Parent" : "24"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U154", "Parent" : "24"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U155", "Parent" : "24"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U156", "Parent" : "24"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U157", "Parent" : "24"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U158", "Parent" : "24"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U159", "Parent" : "24"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U160", "Parent" : "24"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U161", "Parent" : "24"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U162", "Parent" : "24"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U163", "Parent" : "24"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U164", "Parent" : "24"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U165", "Parent" : "24"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U166", "Parent" : "24"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U167", "Parent" : "24"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U168", "Parent" : "24"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U169", "Parent" : "24"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U170", "Parent" : "24"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U171", "Parent" : "24"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U172", "Parent" : "24"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U173", "Parent" : "24"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U174", "Parent" : "24"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U175", "Parent" : "24"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U176", "Parent" : "24"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U177", "Parent" : "24"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U178", "Parent" : "24"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U179", "Parent" : "24"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U180", "Parent" : "24"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U181", "Parent" : "24"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U182", "Parent" : "24"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U183", "Parent" : "24"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U184", "Parent" : "24"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U185", "Parent" : "24"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U186", "Parent" : "24"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U187", "Parent" : "24"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U188", "Parent" : "24"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U189", "Parent" : "24"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U190", "Parent" : "24"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U191", "Parent" : "24"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U192", "Parent" : "24"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U193", "Parent" : "24"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U194", "Parent" : "24"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U195", "Parent" : "24"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U196", "Parent" : "24"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U197", "Parent" : "24"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U198", "Parent" : "24"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U199", "Parent" : "24"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U200", "Parent" : "24"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U201", "Parent" : "24"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U202", "Parent" : "24"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U203", "Parent" : "24"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U204", "Parent" : "24"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U205", "Parent" : "24"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U206", "Parent" : "24"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U207", "Parent" : "24"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U208", "Parent" : "24"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U209", "Parent" : "24"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U210", "Parent" : "24"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U211", "Parent" : "24"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U212", "Parent" : "24"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U213", "Parent" : "24"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U214", "Parent" : "24"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U215", "Parent" : "24"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U216", "Parent" : "24"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U217", "Parent" : "24"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U218", "Parent" : "24"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U219", "Parent" : "24"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U220", "Parent" : "24"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U221", "Parent" : "24"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U222", "Parent" : "24"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U223", "Parent" : "24"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U224", "Parent" : "24"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U225", "Parent" : "24"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U226", "Parent" : "24"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U227", "Parent" : "24"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U228", "Parent" : "24"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U229", "Parent" : "24"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U230", "Parent" : "24"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U231", "Parent" : "24"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U232", "Parent" : "24"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U233", "Parent" : "24"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U234", "Parent" : "24"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U235", "Parent" : "24"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U236", "Parent" : "24"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U237", "Parent" : "24"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U238", "Parent" : "24"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U239", "Parent" : "24"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U240", "Parent" : "24"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U241", "Parent" : "24"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U242", "Parent" : "24"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U243", "Parent" : "24"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U244", "Parent" : "24"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U245", "Parent" : "24"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U246", "Parent" : "24"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U247", "Parent" : "24"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U248", "Parent" : "24"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U249", "Parent" : "24"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U250", "Parent" : "24"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U251", "Parent" : "24"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U252", "Parent" : "24"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U253", "Parent" : "24"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U254", "Parent" : "24"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U255", "Parent" : "24"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U256", "Parent" : "24"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U257", "Parent" : "24"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U258", "Parent" : "24"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U259", "Parent" : "24"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U260", "Parent" : "24"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U261", "Parent" : "24"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U262", "Parent" : "24"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U263", "Parent" : "24"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U264", "Parent" : "24"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U265", "Parent" : "24"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U266", "Parent" : "24"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U267", "Parent" : "24"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U268", "Parent" : "24"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U269", "Parent" : "24"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U270", "Parent" : "24"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U271", "Parent" : "24"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U272", "Parent" : "24"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U273", "Parent" : "24"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U274", "Parent" : "24"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U275", "Parent" : "24"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U276", "Parent" : "24"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U277", "Parent" : "24"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U278", "Parent" : "24"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U279", "Parent" : "24"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U280", "Parent" : "24"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U281", "Parent" : "24"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U282", "Parent" : "24"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U283", "Parent" : "24"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U284", "Parent" : "24"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U285", "Parent" : "24"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U286", "Parent" : "24"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U287", "Parent" : "24"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U288", "Parent" : "24"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U289", "Parent" : "24"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U290", "Parent" : "24"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U291", "Parent" : "24"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U292", "Parent" : "24"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U293", "Parent" : "24"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U294", "Parent" : "24"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U295", "Parent" : "24"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U296", "Parent" : "24"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U297", "Parent" : "24"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U298", "Parent" : "24"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U299", "Parent" : "24"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U300", "Parent" : "24"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U301", "Parent" : "24"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U302", "Parent" : "24"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U303", "Parent" : "24"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U304", "Parent" : "24"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U305", "Parent" : "24"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U306", "Parent" : "24"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U307", "Parent" : "24"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U308", "Parent" : "24"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U309", "Parent" : "24"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U310", "Parent" : "24"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U311", "Parent" : "24"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U312", "Parent" : "24"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U313", "Parent" : "24"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U314", "Parent" : "24"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U315", "Parent" : "24"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U316", "Parent" : "24"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U317", "Parent" : "24"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U318", "Parent" : "24"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U319", "Parent" : "24"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U320", "Parent" : "24"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U321", "Parent" : "24"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U322", "Parent" : "24"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U323", "Parent" : "24"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U324", "Parent" : "24"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U325", "Parent" : "24"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U326", "Parent" : "24"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U327", "Parent" : "24"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U328", "Parent" : "24"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U329", "Parent" : "24"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U330", "Parent" : "24"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U331", "Parent" : "24"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U332", "Parent" : "24"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U333", "Parent" : "24"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U334", "Parent" : "24"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U335", "Parent" : "24"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U336", "Parent" : "24"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U337", "Parent" : "24"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U338", "Parent" : "24"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U339", "Parent" : "24"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U340", "Parent" : "24"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U341", "Parent" : "24"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U342", "Parent" : "24"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U343", "Parent" : "24"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U344", "Parent" : "24"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U345", "Parent" : "24"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U346", "Parent" : "24"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U347", "Parent" : "24"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U348", "Parent" : "24"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U349", "Parent" : "24"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U350", "Parent" : "24"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U351", "Parent" : "24"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U352", "Parent" : "24"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U353", "Parent" : "24"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U354", "Parent" : "24"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U355", "Parent" : "24"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U356", "Parent" : "24"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U357", "Parent" : "24"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U358", "Parent" : "24"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U359", "Parent" : "24"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U360", "Parent" : "24"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U361", "Parent" : "24"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U362", "Parent" : "24"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U363", "Parent" : "24"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U364", "Parent" : "24"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.call_ln154_write_p3_fu_201", "Parent" : "21",
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
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819", "Parent" : "0", "Child" : ["284", "285", "286", "287"],
		"CDFG" : "dpu_func_Pipeline_FUNC_ADD_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_read_p1_fu_178", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "286", "SubInstance" : "call_ln144_write_p3_fu_201", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "285", "SubInstance" : "grp_read_p2_fu_185", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_ADD_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819.grp_read_p1_fu_178", "Parent" : "283",
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
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819.grp_read_p2_fu_185", "Parent" : "283",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819.call_ln144_write_p3_fu_201", "Parent" : "283",
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
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819.flow_control_loop_pipe_sequential_init_U", "Parent" : "283"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842", "Parent" : "0", "Child" : ["289", "290", "291", "292"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln54", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "call_ln302_write_p3_fu_167", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "289", "SubInstance" : "grp_read_p1_fu_151", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "291", "SubInstance" : "call_ln303_write_p4_fu_175", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret18", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842.grp_read_p1_fu_151", "Parent" : "288",
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
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842.call_ln302_write_p3_fu_167", "Parent" : "288",
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
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842.call_ln303_write_p4_fu_175", "Parent" : "288",
		"CDFG" : "write_p4",
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
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842.flow_control_loop_pipe_sequential_init_U", "Parent" : "288"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857", "Parent" : "0", "Child" : ["294", "295", "296"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP2",
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
			{"Name" : "this_3_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln54", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "call_ln312_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "294", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret29", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857.grp_read_p1_fu_137", "Parent" : "293",
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
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857.call_ln312_write_p3_fu_153", "Parent" : "293",
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
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857.flow_control_loop_pipe_sequential_init_U", "Parent" : "293"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871", "Parent" : "0", "Child" : ["298", "299", "300"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP3",
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
			{"Name" : "this_3_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln54", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "call_ln321_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "298", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret42", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871.grp_read_p1_fu_137", "Parent" : "297",
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
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871.call_ln321_write_p4_fu_153", "Parent" : "297",
		"CDFG" : "write_p4",
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
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885", "Parent" : "0", "Child" : ["302", "303", "304", "305"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret42", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln54", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "303", "SubInstance" : "grp_read_p2_fu_171", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "302", "SubInstance" : "grp_read_p1_fu_164", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "304", "SubInstance" : "call_ln330_write_p3_fu_187", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885.grp_read_p1_fu_164", "Parent" : "301",
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
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885.grp_read_p2_fu_171", "Parent" : "301",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885.call_ln330_write_p3_fu_187", "Parent" : "301",
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
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901", "Parent" : "0", "Child" : ["307", "308", "309"],
		"CDFG" : "dpu_func_Pipeline_FUNC_NTT_LOOP5",
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
			{"Name" : "this_3_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_2_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln54", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "grp_read_ntt_fu_112", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "308", "SubInstance" : "call_ln338_write_p3_fu_128", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_25_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901.grp_read_ntt_fu_112", "Parent" : "306",
		"CDFG" : "read_ntt",
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
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901.call_ln338_write_p3_fu_128", "Parent" : "306",
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
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917", "Parent" : "0", "Child" : ["311", "312", "313", "314", "315"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "172", "EstimateLatencyMax" : "206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_read_p2_fu_172", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "311", "SubInstance" : "grp_read_p1_fu_165", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "313", "SubInstance" : "call_ln233_write_p3_fu_188", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "314", "SubInstance" : "call_ln234_write_p4_fu_196", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln230_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.grp_read_p1_fu_165", "Parent" : "310",
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
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.grp_read_p2_fu_172", "Parent" : "310",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.call_ln233_write_p3_fu_188", "Parent" : "310",
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
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.call_ln234_write_p4_fu_196", "Parent" : "310",
		"CDFG" : "write_p4",
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
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933", "Parent" : "0", "Child" : ["317", "318", "319"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP2",
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
			{"Name" : "this_3_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "318", "SubInstance" : "call_ln243_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret25", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933.grp_read_p1_fu_137", "Parent" : "316",
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
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933.call_ln243_write_p3_fu_153", "Parent" : "316",
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
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933.flow_control_loop_pipe_sequential_init_U", "Parent" : "316"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947", "Parent" : "0", "Child" : ["321", "322", "323"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP3",
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
			{"Name" : "this_3_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "321", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "322", "SubInstance" : "call_ln252_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret39", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947.grp_read_p1_fu_137", "Parent" : "320",
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
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947.call_ln252_write_p4_fu_153", "Parent" : "320",
		"CDFG" : "write_p4",
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
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947.flow_control_loop_pipe_sequential_init_U", "Parent" : "320"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961", "Parent" : "0", "Child" : ["325", "326", "327", "328"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret39", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_read_p2_fu_161", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "325", "SubInstance" : "grp_read_p1_fu_154", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "327", "SubInstance" : "call_ln261_write_p3_fu_177", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "this_3_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961.grp_read_p1_fu_154", "Parent" : "324",
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
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961.grp_read_p2_fu_161", "Parent" : "324",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961.call_ln261_write_p3_fu_177", "Parent" : "324",
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
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961.flow_control_loop_pipe_sequential_init_U", "Parent" : "324"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976", "Parent" : "0", "Child" : ["330", "331", "332", "333"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MATMUL_LOOP5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "173", "EstimateLatencyMax" : "207",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_2_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_read_p1_fu_127", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "332", "SubInstance" : "call_ln271_write_p3_fu_151", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"},
					{"ID" : "331", "SubInstance" : "grp_read_p2_fu_134", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_16_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976.grp_read_p1_fu_127", "Parent" : "329",
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
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976.grp_read_p2_fu_134", "Parent" : "329",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976.call_ln271_write_p3_fu_151", "Parent" : "329",
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
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976.flow_control_loop_pipe_sequential_init_U", "Parent" : "329"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992", "Parent" : "0", "Child" : ["335", "336", "337"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP2",
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
			{"Name" : "this_3_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln50", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "call_ln203_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "335", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret10", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992.grp_read_p1_fu_137", "Parent" : "334",
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
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992.call_ln203_write_p3_fu_153", "Parent" : "334",
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
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992.flow_control_loop_pipe_sequential_init_U", "Parent" : "334"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006", "Parent" : "0", "Child" : ["339", "340", "341"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP3",
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
			{"Name" : "this_3_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln50", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "340", "SubInstance" : "call_ln212_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret22", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006.grp_read_p1_fu_137", "Parent" : "338",
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
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006.call_ln212_write_p4_fu_153", "Parent" : "338",
		"CDFG" : "write_p4",
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
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006.flow_control_loop_pipe_sequential_init_U", "Parent" : "338"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020", "Parent" : "0", "Child" : ["343", "344", "345", "346"],
		"CDFG" : "dpu_func_Pipeline_FUNC_MONTMUL_LOOP4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret22", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln50", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_read_p1_fu_164", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "344", "SubInstance" : "grp_read_p2_fu_171", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "345", "SubInstance" : "call_ln221_write_p3_fu_187", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020.grp_read_p1_fu_164", "Parent" : "342",
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
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020.grp_read_p2_fu_171", "Parent" : "342",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020.call_ln221_write_p3_fu_187", "Parent" : "342",
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
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020.flow_control_loop_pipe_sequential_init_U", "Parent" : "342"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036", "Parent" : "0", "Child" : ["348", "349", "350"],
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
			{"Name" : "this_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "349", "SubInstance" : "call_ln173_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036.grp_read_p1_fu_137", "Parent" : "347",
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
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036.call_ln173_write_p3_fu_153", "Parent" : "347",
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
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036.flow_control_loop_pipe_sequential_init_U", "Parent" : "347"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050", "Parent" : "0", "Child" : ["352", "353", "354", "355"],
		"CDFG" : "dpu_func_Pipeline_FUNC_RD_LOOP3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_read_p2_fu_169", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "352", "SubInstance" : "grp_read_p1_fu_162", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "354", "SubInstance" : "call_ln182_write_p3_fu_185", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050.grp_read_p1_fu_162", "Parent" : "351",
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
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050.grp_read_p2_fu_169", "Parent" : "351",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050.call_ln182_write_p3_fu_185", "Parent" : "351",
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
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050.flow_control_loop_pipe_sequential_init_U", "Parent" : "351"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066", "Parent" : "0", "Child" : ["357", "358", "359"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP1",
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
			{"Name" : "this_3_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "358", "SubInstance" : "call_ln350_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "357", "SubInstance" : "grp_read_intt_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066.grp_read_intt_fu_137", "Parent" : "356",
		"CDFG" : "read_intt",
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
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066.call_ln350_write_p3_fu_153", "Parent" : "356",
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
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066.flow_control_loop_pipe_sequential_init_U", "Parent" : "356"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080", "Parent" : "0", "Child" : ["361", "362", "363", "364"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "363", "SubInstance" : "call_ln359_write_p4_fu_175", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"},
					{"ID" : "362", "SubInstance" : "call_ln358_write_p3_fu_167", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "361", "SubInstance" : "grp_read_p1_fu_151", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret19", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_28_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080.grp_read_p1_fu_151", "Parent" : "360",
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
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080.call_ln358_write_p3_fu_167", "Parent" : "360",
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
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080.call_ln359_write_p4_fu_175", "Parent" : "360",
		"CDFG" : "write_p4",
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
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080.flow_control_loop_pipe_sequential_init_U", "Parent" : "360"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095", "Parent" : "0", "Child" : ["366", "367", "368"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP3",
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
			{"Name" : "this_3_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "call_ln368_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "366", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret34", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095.grp_read_p1_fu_137", "Parent" : "365",
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
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095.call_ln368_write_p3_fu_153", "Parent" : "365",
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
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095.flow_control_loop_pipe_sequential_init_U", "Parent" : "365"},
	{"ID" : "369", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109", "Parent" : "0", "Child" : ["370", "371", "372"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP4",
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
			{"Name" : "this_3_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "call_ln377_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "370", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_30_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109.grp_read_p1_fu_137", "Parent" : "369",
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
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109.call_ln377_write_p4_fu_153", "Parent" : "369",
		"CDFG" : "write_p4",
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
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109.flow_control_loop_pipe_sequential_init_U", "Parent" : "369"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123", "Parent" : "0", "Child" : ["374", "375", "376", "377"],
		"CDFG" : "dpu_func_Pipeline_FUNC_INTT_LOOP5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "167", "EstimateLatencyMax" : "200",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_3_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret48", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "374", "SubInstance" : "grp_read_p1_fu_118", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "375", "SubInstance" : "grp_read_p2_fu_125", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "376", "SubInstance" : "call_ln386_write_p3_fu_141", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_32_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123.grp_read_p1_fu_118", "Parent" : "373",
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
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123.grp_read_p2_fu_125", "Parent" : "373",
		"CDFG" : "read_p2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_pMem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123.call_ln386_write_p3_fu_141", "Parent" : "373",
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
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123.flow_control_loop_pipe_sequential_init_U", "Parent" : "373"},
	{"ID" : "378", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775", "Parent" : "0", "Child" : ["379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634"],
		"CDFG" : "dpu_unit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
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
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U109", "Parent" : "378"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U110", "Parent" : "378"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U111", "Parent" : "378"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U112", "Parent" : "378"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U113", "Parent" : "378"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U114", "Parent" : "378"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U115", "Parent" : "378"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U116", "Parent" : "378"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U117", "Parent" : "378"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U118", "Parent" : "378"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U119", "Parent" : "378"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U120", "Parent" : "378"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U121", "Parent" : "378"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U122", "Parent" : "378"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U123", "Parent" : "378"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U124", "Parent" : "378"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U125", "Parent" : "378"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U126", "Parent" : "378"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U127", "Parent" : "378"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U128", "Parent" : "378"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U129", "Parent" : "378"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U130", "Parent" : "378"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U131", "Parent" : "378"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U132", "Parent" : "378"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U133", "Parent" : "378"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U134", "Parent" : "378"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U135", "Parent" : "378"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U136", "Parent" : "378"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U137", "Parent" : "378"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U138", "Parent" : "378"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U139", "Parent" : "378"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U140", "Parent" : "378"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U141", "Parent" : "378"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U142", "Parent" : "378"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U143", "Parent" : "378"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U144", "Parent" : "378"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U145", "Parent" : "378"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U146", "Parent" : "378"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U147", "Parent" : "378"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U148", "Parent" : "378"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U149", "Parent" : "378"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U150", "Parent" : "378"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U151", "Parent" : "378"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U152", "Parent" : "378"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U153", "Parent" : "378"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U154", "Parent" : "378"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U155", "Parent" : "378"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U156", "Parent" : "378"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U157", "Parent" : "378"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U158", "Parent" : "378"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U159", "Parent" : "378"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U160", "Parent" : "378"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U161", "Parent" : "378"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U162", "Parent" : "378"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U163", "Parent" : "378"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U164", "Parent" : "378"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U165", "Parent" : "378"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U166", "Parent" : "378"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U167", "Parent" : "378"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U168", "Parent" : "378"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U169", "Parent" : "378"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U170", "Parent" : "378"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U171", "Parent" : "378"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U172", "Parent" : "378"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U173", "Parent" : "378"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U174", "Parent" : "378"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U175", "Parent" : "378"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U176", "Parent" : "378"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U177", "Parent" : "378"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U178", "Parent" : "378"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U179", "Parent" : "378"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U180", "Parent" : "378"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U181", "Parent" : "378"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U182", "Parent" : "378"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U183", "Parent" : "378"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U184", "Parent" : "378"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U185", "Parent" : "378"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U186", "Parent" : "378"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U187", "Parent" : "378"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U188", "Parent" : "378"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U189", "Parent" : "378"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U190", "Parent" : "378"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U191", "Parent" : "378"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U192", "Parent" : "378"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U193", "Parent" : "378"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U194", "Parent" : "378"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U195", "Parent" : "378"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U196", "Parent" : "378"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U197", "Parent" : "378"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U198", "Parent" : "378"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U199", "Parent" : "378"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U200", "Parent" : "378"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U201", "Parent" : "378"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U202", "Parent" : "378"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U203", "Parent" : "378"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U204", "Parent" : "378"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U205", "Parent" : "378"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U206", "Parent" : "378"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U207", "Parent" : "378"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U208", "Parent" : "378"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U209", "Parent" : "378"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U210", "Parent" : "378"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U211", "Parent" : "378"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U212", "Parent" : "378"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U213", "Parent" : "378"},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U214", "Parent" : "378"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U215", "Parent" : "378"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U216", "Parent" : "378"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U217", "Parent" : "378"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U218", "Parent" : "378"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U219", "Parent" : "378"},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U220", "Parent" : "378"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U221", "Parent" : "378"},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U222", "Parent" : "378"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U223", "Parent" : "378"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U224", "Parent" : "378"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U225", "Parent" : "378"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U226", "Parent" : "378"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U227", "Parent" : "378"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U228", "Parent" : "378"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U229", "Parent" : "378"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U230", "Parent" : "378"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U231", "Parent" : "378"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U232", "Parent" : "378"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U233", "Parent" : "378"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U234", "Parent" : "378"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U235", "Parent" : "378"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U236", "Parent" : "378"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U237", "Parent" : "378"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U238", "Parent" : "378"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U239", "Parent" : "378"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U240", "Parent" : "378"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U241", "Parent" : "378"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U242", "Parent" : "378"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U243", "Parent" : "378"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U244", "Parent" : "378"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U245", "Parent" : "378"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U246", "Parent" : "378"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U247", "Parent" : "378"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U248", "Parent" : "378"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U249", "Parent" : "378"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U250", "Parent" : "378"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U251", "Parent" : "378"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U252", "Parent" : "378"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U253", "Parent" : "378"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U254", "Parent" : "378"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U255", "Parent" : "378"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U256", "Parent" : "378"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U257", "Parent" : "378"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U258", "Parent" : "378"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U259", "Parent" : "378"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U260", "Parent" : "378"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U261", "Parent" : "378"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U262", "Parent" : "378"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U263", "Parent" : "378"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U264", "Parent" : "378"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U265", "Parent" : "378"},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U266", "Parent" : "378"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U267", "Parent" : "378"},
	{"ID" : "538", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U268", "Parent" : "378"},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U269", "Parent" : "378"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U270", "Parent" : "378"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U271", "Parent" : "378"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U272", "Parent" : "378"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U273", "Parent" : "378"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U274", "Parent" : "378"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U275", "Parent" : "378"},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U276", "Parent" : "378"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U277", "Parent" : "378"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U278", "Parent" : "378"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U279", "Parent" : "378"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U280", "Parent" : "378"},
	{"ID" : "551", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U281", "Parent" : "378"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U282", "Parent" : "378"},
	{"ID" : "553", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U283", "Parent" : "378"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U284", "Parent" : "378"},
	{"ID" : "555", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U285", "Parent" : "378"},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U286", "Parent" : "378"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U287", "Parent" : "378"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U288", "Parent" : "378"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U289", "Parent" : "378"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U290", "Parent" : "378"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U291", "Parent" : "378"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U292", "Parent" : "378"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U293", "Parent" : "378"},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U294", "Parent" : "378"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U295", "Parent" : "378"},
	{"ID" : "566", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U296", "Parent" : "378"},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U297", "Parent" : "378"},
	{"ID" : "568", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U298", "Parent" : "378"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U299", "Parent" : "378"},
	{"ID" : "570", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U300", "Parent" : "378"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U301", "Parent" : "378"},
	{"ID" : "572", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U302", "Parent" : "378"},
	{"ID" : "573", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U303", "Parent" : "378"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U304", "Parent" : "378"},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U305", "Parent" : "378"},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U306", "Parent" : "378"},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U307", "Parent" : "378"},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U308", "Parent" : "378"},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U309", "Parent" : "378"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U310", "Parent" : "378"},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U311", "Parent" : "378"},
	{"ID" : "582", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U312", "Parent" : "378"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U313", "Parent" : "378"},
	{"ID" : "584", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U314", "Parent" : "378"},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U315", "Parent" : "378"},
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U316", "Parent" : "378"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U317", "Parent" : "378"},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U318", "Parent" : "378"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U319", "Parent" : "378"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U320", "Parent" : "378"},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U321", "Parent" : "378"},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U322", "Parent" : "378"},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U323", "Parent" : "378"},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U324", "Parent" : "378"},
	{"ID" : "595", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U325", "Parent" : "378"},
	{"ID" : "596", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U326", "Parent" : "378"},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U327", "Parent" : "378"},
	{"ID" : "598", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U328", "Parent" : "378"},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U329", "Parent" : "378"},
	{"ID" : "600", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U330", "Parent" : "378"},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U331", "Parent" : "378"},
	{"ID" : "602", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U332", "Parent" : "378"},
	{"ID" : "603", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U333", "Parent" : "378"},
	{"ID" : "604", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U334", "Parent" : "378"},
	{"ID" : "605", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U335", "Parent" : "378"},
	{"ID" : "606", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U336", "Parent" : "378"},
	{"ID" : "607", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U337", "Parent" : "378"},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U338", "Parent" : "378"},
	{"ID" : "609", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U339", "Parent" : "378"},
	{"ID" : "610", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U340", "Parent" : "378"},
	{"ID" : "611", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U341", "Parent" : "378"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U342", "Parent" : "378"},
	{"ID" : "613", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U343", "Parent" : "378"},
	{"ID" : "614", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U344", "Parent" : "378"},
	{"ID" : "615", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U345", "Parent" : "378"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U346", "Parent" : "378"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U347", "Parent" : "378"},
	{"ID" : "618", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U348", "Parent" : "378"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U349", "Parent" : "378"},
	{"ID" : "620", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U350", "Parent" : "378"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U351", "Parent" : "378"},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U352", "Parent" : "378"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U353", "Parent" : "378"},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U354", "Parent" : "378"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U355", "Parent" : "378"},
	{"ID" : "626", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U356", "Parent" : "378"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U357", "Parent" : "378"},
	{"ID" : "628", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U358", "Parent" : "378"},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U359", "Parent" : "378"},
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U360", "Parent" : "378"},
	{"ID" : "631", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U361", "Parent" : "378"},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U362", "Parent" : "378"},
	{"ID" : "633", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U363", "Parent" : "378"},
	{"ID" : "634", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U364", "Parent" : "378"},
	{"ID" : "635", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782", "Parent" : "0", "Child" : ["636", "637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "877", "878", "879", "880", "881", "882", "883", "884", "885", "886", "887", "888", "889", "890", "891"],
		"CDFG" : "dpu_unit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
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
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "636", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U109", "Parent" : "635"},
	{"ID" : "637", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U110", "Parent" : "635"},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U111", "Parent" : "635"},
	{"ID" : "639", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U112", "Parent" : "635"},
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U113", "Parent" : "635"},
	{"ID" : "641", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U114", "Parent" : "635"},
	{"ID" : "642", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U115", "Parent" : "635"},
	{"ID" : "643", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U116", "Parent" : "635"},
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U117", "Parent" : "635"},
	{"ID" : "645", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U118", "Parent" : "635"},
	{"ID" : "646", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U119", "Parent" : "635"},
	{"ID" : "647", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U120", "Parent" : "635"},
	{"ID" : "648", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U121", "Parent" : "635"},
	{"ID" : "649", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U122", "Parent" : "635"},
	{"ID" : "650", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U123", "Parent" : "635"},
	{"ID" : "651", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U124", "Parent" : "635"},
	{"ID" : "652", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U125", "Parent" : "635"},
	{"ID" : "653", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U126", "Parent" : "635"},
	{"ID" : "654", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U127", "Parent" : "635"},
	{"ID" : "655", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U128", "Parent" : "635"},
	{"ID" : "656", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U129", "Parent" : "635"},
	{"ID" : "657", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U130", "Parent" : "635"},
	{"ID" : "658", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U131", "Parent" : "635"},
	{"ID" : "659", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U132", "Parent" : "635"},
	{"ID" : "660", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U133", "Parent" : "635"},
	{"ID" : "661", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U134", "Parent" : "635"},
	{"ID" : "662", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U135", "Parent" : "635"},
	{"ID" : "663", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U136", "Parent" : "635"},
	{"ID" : "664", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U137", "Parent" : "635"},
	{"ID" : "665", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U138", "Parent" : "635"},
	{"ID" : "666", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U139", "Parent" : "635"},
	{"ID" : "667", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U140", "Parent" : "635"},
	{"ID" : "668", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U141", "Parent" : "635"},
	{"ID" : "669", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U142", "Parent" : "635"},
	{"ID" : "670", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U143", "Parent" : "635"},
	{"ID" : "671", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U144", "Parent" : "635"},
	{"ID" : "672", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U145", "Parent" : "635"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U146", "Parent" : "635"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U147", "Parent" : "635"},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U148", "Parent" : "635"},
	{"ID" : "676", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U149", "Parent" : "635"},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U150", "Parent" : "635"},
	{"ID" : "678", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U151", "Parent" : "635"},
	{"ID" : "679", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U152", "Parent" : "635"},
	{"ID" : "680", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U153", "Parent" : "635"},
	{"ID" : "681", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U154", "Parent" : "635"},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U155", "Parent" : "635"},
	{"ID" : "683", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U156", "Parent" : "635"},
	{"ID" : "684", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U157", "Parent" : "635"},
	{"ID" : "685", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U158", "Parent" : "635"},
	{"ID" : "686", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U159", "Parent" : "635"},
	{"ID" : "687", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U160", "Parent" : "635"},
	{"ID" : "688", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U161", "Parent" : "635"},
	{"ID" : "689", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U162", "Parent" : "635"},
	{"ID" : "690", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U163", "Parent" : "635"},
	{"ID" : "691", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U164", "Parent" : "635"},
	{"ID" : "692", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U165", "Parent" : "635"},
	{"ID" : "693", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U166", "Parent" : "635"},
	{"ID" : "694", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U167", "Parent" : "635"},
	{"ID" : "695", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U168", "Parent" : "635"},
	{"ID" : "696", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U169", "Parent" : "635"},
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U170", "Parent" : "635"},
	{"ID" : "698", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U171", "Parent" : "635"},
	{"ID" : "699", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U172", "Parent" : "635"},
	{"ID" : "700", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U173", "Parent" : "635"},
	{"ID" : "701", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U174", "Parent" : "635"},
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U175", "Parent" : "635"},
	{"ID" : "703", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U176", "Parent" : "635"},
	{"ID" : "704", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U177", "Parent" : "635"},
	{"ID" : "705", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U178", "Parent" : "635"},
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U179", "Parent" : "635"},
	{"ID" : "707", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U180", "Parent" : "635"},
	{"ID" : "708", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U181", "Parent" : "635"},
	{"ID" : "709", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U182", "Parent" : "635"},
	{"ID" : "710", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U183", "Parent" : "635"},
	{"ID" : "711", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U184", "Parent" : "635"},
	{"ID" : "712", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U185", "Parent" : "635"},
	{"ID" : "713", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U186", "Parent" : "635"},
	{"ID" : "714", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U187", "Parent" : "635"},
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U188", "Parent" : "635"},
	{"ID" : "716", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U189", "Parent" : "635"},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U190", "Parent" : "635"},
	{"ID" : "718", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U191", "Parent" : "635"},
	{"ID" : "719", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U192", "Parent" : "635"},
	{"ID" : "720", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U193", "Parent" : "635"},
	{"ID" : "721", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U194", "Parent" : "635"},
	{"ID" : "722", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U195", "Parent" : "635"},
	{"ID" : "723", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U196", "Parent" : "635"},
	{"ID" : "724", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U197", "Parent" : "635"},
	{"ID" : "725", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U198", "Parent" : "635"},
	{"ID" : "726", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U199", "Parent" : "635"},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U200", "Parent" : "635"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U201", "Parent" : "635"},
	{"ID" : "729", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U202", "Parent" : "635"},
	{"ID" : "730", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U203", "Parent" : "635"},
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U204", "Parent" : "635"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U205", "Parent" : "635"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U206", "Parent" : "635"},
	{"ID" : "734", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U207", "Parent" : "635"},
	{"ID" : "735", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U208", "Parent" : "635"},
	{"ID" : "736", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U209", "Parent" : "635"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U210", "Parent" : "635"},
	{"ID" : "738", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U211", "Parent" : "635"},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U212", "Parent" : "635"},
	{"ID" : "740", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U213", "Parent" : "635"},
	{"ID" : "741", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U214", "Parent" : "635"},
	{"ID" : "742", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U215", "Parent" : "635"},
	{"ID" : "743", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U216", "Parent" : "635"},
	{"ID" : "744", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U217", "Parent" : "635"},
	{"ID" : "745", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U218", "Parent" : "635"},
	{"ID" : "746", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U219", "Parent" : "635"},
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U220", "Parent" : "635"},
	{"ID" : "748", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U221", "Parent" : "635"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U222", "Parent" : "635"},
	{"ID" : "750", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U223", "Parent" : "635"},
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U224", "Parent" : "635"},
	{"ID" : "752", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U225", "Parent" : "635"},
	{"ID" : "753", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U226", "Parent" : "635"},
	{"ID" : "754", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U227", "Parent" : "635"},
	{"ID" : "755", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U228", "Parent" : "635"},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U229", "Parent" : "635"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U230", "Parent" : "635"},
	{"ID" : "758", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U231", "Parent" : "635"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U232", "Parent" : "635"},
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U233", "Parent" : "635"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U234", "Parent" : "635"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U235", "Parent" : "635"},
	{"ID" : "763", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U236", "Parent" : "635"},
	{"ID" : "764", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U237", "Parent" : "635"},
	{"ID" : "765", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U238", "Parent" : "635"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U239", "Parent" : "635"},
	{"ID" : "767", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U240", "Parent" : "635"},
	{"ID" : "768", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U241", "Parent" : "635"},
	{"ID" : "769", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U242", "Parent" : "635"},
	{"ID" : "770", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U243", "Parent" : "635"},
	{"ID" : "771", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U244", "Parent" : "635"},
	{"ID" : "772", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U245", "Parent" : "635"},
	{"ID" : "773", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U246", "Parent" : "635"},
	{"ID" : "774", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U247", "Parent" : "635"},
	{"ID" : "775", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U248", "Parent" : "635"},
	{"ID" : "776", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U249", "Parent" : "635"},
	{"ID" : "777", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U250", "Parent" : "635"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U251", "Parent" : "635"},
	{"ID" : "779", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U252", "Parent" : "635"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U253", "Parent" : "635"},
	{"ID" : "781", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U254", "Parent" : "635"},
	{"ID" : "782", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U255", "Parent" : "635"},
	{"ID" : "783", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U256", "Parent" : "635"},
	{"ID" : "784", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U257", "Parent" : "635"},
	{"ID" : "785", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U258", "Parent" : "635"},
	{"ID" : "786", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U259", "Parent" : "635"},
	{"ID" : "787", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U260", "Parent" : "635"},
	{"ID" : "788", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U261", "Parent" : "635"},
	{"ID" : "789", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U262", "Parent" : "635"},
	{"ID" : "790", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U263", "Parent" : "635"},
	{"ID" : "791", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U264", "Parent" : "635"},
	{"ID" : "792", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U265", "Parent" : "635"},
	{"ID" : "793", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U266", "Parent" : "635"},
	{"ID" : "794", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U267", "Parent" : "635"},
	{"ID" : "795", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U268", "Parent" : "635"},
	{"ID" : "796", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U269", "Parent" : "635"},
	{"ID" : "797", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U270", "Parent" : "635"},
	{"ID" : "798", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U271", "Parent" : "635"},
	{"ID" : "799", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U272", "Parent" : "635"},
	{"ID" : "800", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U273", "Parent" : "635"},
	{"ID" : "801", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U274", "Parent" : "635"},
	{"ID" : "802", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U275", "Parent" : "635"},
	{"ID" : "803", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U276", "Parent" : "635"},
	{"ID" : "804", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U277", "Parent" : "635"},
	{"ID" : "805", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U278", "Parent" : "635"},
	{"ID" : "806", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U279", "Parent" : "635"},
	{"ID" : "807", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U280", "Parent" : "635"},
	{"ID" : "808", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U281", "Parent" : "635"},
	{"ID" : "809", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U282", "Parent" : "635"},
	{"ID" : "810", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U283", "Parent" : "635"},
	{"ID" : "811", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U284", "Parent" : "635"},
	{"ID" : "812", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U285", "Parent" : "635"},
	{"ID" : "813", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U286", "Parent" : "635"},
	{"ID" : "814", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U287", "Parent" : "635"},
	{"ID" : "815", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U288", "Parent" : "635"},
	{"ID" : "816", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U289", "Parent" : "635"},
	{"ID" : "817", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U290", "Parent" : "635"},
	{"ID" : "818", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U291", "Parent" : "635"},
	{"ID" : "819", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U292", "Parent" : "635"},
	{"ID" : "820", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U293", "Parent" : "635"},
	{"ID" : "821", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U294", "Parent" : "635"},
	{"ID" : "822", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U295", "Parent" : "635"},
	{"ID" : "823", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U296", "Parent" : "635"},
	{"ID" : "824", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U297", "Parent" : "635"},
	{"ID" : "825", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U298", "Parent" : "635"},
	{"ID" : "826", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U299", "Parent" : "635"},
	{"ID" : "827", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U300", "Parent" : "635"},
	{"ID" : "828", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U301", "Parent" : "635"},
	{"ID" : "829", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U302", "Parent" : "635"},
	{"ID" : "830", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U303", "Parent" : "635"},
	{"ID" : "831", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U304", "Parent" : "635"},
	{"ID" : "832", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U305", "Parent" : "635"},
	{"ID" : "833", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U306", "Parent" : "635"},
	{"ID" : "834", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U307", "Parent" : "635"},
	{"ID" : "835", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U308", "Parent" : "635"},
	{"ID" : "836", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U309", "Parent" : "635"},
	{"ID" : "837", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U310", "Parent" : "635"},
	{"ID" : "838", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U311", "Parent" : "635"},
	{"ID" : "839", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U312", "Parent" : "635"},
	{"ID" : "840", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U313", "Parent" : "635"},
	{"ID" : "841", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U314", "Parent" : "635"},
	{"ID" : "842", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U315", "Parent" : "635"},
	{"ID" : "843", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U316", "Parent" : "635"},
	{"ID" : "844", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U317", "Parent" : "635"},
	{"ID" : "845", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U318", "Parent" : "635"},
	{"ID" : "846", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U319", "Parent" : "635"},
	{"ID" : "847", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U320", "Parent" : "635"},
	{"ID" : "848", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U321", "Parent" : "635"},
	{"ID" : "849", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U322", "Parent" : "635"},
	{"ID" : "850", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U323", "Parent" : "635"},
	{"ID" : "851", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U324", "Parent" : "635"},
	{"ID" : "852", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U325", "Parent" : "635"},
	{"ID" : "853", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U326", "Parent" : "635"},
	{"ID" : "854", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U327", "Parent" : "635"},
	{"ID" : "855", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U328", "Parent" : "635"},
	{"ID" : "856", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U329", "Parent" : "635"},
	{"ID" : "857", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U330", "Parent" : "635"},
	{"ID" : "858", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U331", "Parent" : "635"},
	{"ID" : "859", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U332", "Parent" : "635"},
	{"ID" : "860", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U333", "Parent" : "635"},
	{"ID" : "861", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U334", "Parent" : "635"},
	{"ID" : "862", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U335", "Parent" : "635"},
	{"ID" : "863", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U336", "Parent" : "635"},
	{"ID" : "864", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U337", "Parent" : "635"},
	{"ID" : "865", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U338", "Parent" : "635"},
	{"ID" : "866", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U339", "Parent" : "635"},
	{"ID" : "867", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U340", "Parent" : "635"},
	{"ID" : "868", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U341", "Parent" : "635"},
	{"ID" : "869", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U342", "Parent" : "635"},
	{"ID" : "870", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U343", "Parent" : "635"},
	{"ID" : "871", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U344", "Parent" : "635"},
	{"ID" : "872", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U345", "Parent" : "635"},
	{"ID" : "873", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U346", "Parent" : "635"},
	{"ID" : "874", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U347", "Parent" : "635"},
	{"ID" : "875", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U348", "Parent" : "635"},
	{"ID" : "876", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U349", "Parent" : "635"},
	{"ID" : "877", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U350", "Parent" : "635"},
	{"ID" : "878", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U351", "Parent" : "635"},
	{"ID" : "879", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U352", "Parent" : "635"},
	{"ID" : "880", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U353", "Parent" : "635"},
	{"ID" : "881", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U354", "Parent" : "635"},
	{"ID" : "882", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U355", "Parent" : "635"},
	{"ID" : "883", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U356", "Parent" : "635"},
	{"ID" : "884", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U357", "Parent" : "635"},
	{"ID" : "885", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U358", "Parent" : "635"},
	{"ID" : "886", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U359", "Parent" : "635"},
	{"ID" : "887", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U360", "Parent" : "635"},
	{"ID" : "888", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U361", "Parent" : "635"},
	{"ID" : "889", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U362", "Parent" : "635"},
	{"ID" : "890", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U363", "Parent" : "635"},
	{"ID" : "891", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U364", "Parent" : "635"}]}


set ArgLastReadFirstWriteLatency {
	dpu_func {
		this_0 {Type IO LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2 {Type I LastRead 0 FirstWrite -1}
		addr3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}
		itr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_19_out {Type O LastRead -1 FirstWrite 0}
		this_4_19_out {Type O LastRead -1 FirstWrite 0}
		this_1_18_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_CADDQ_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		this_3_18_out {Type O LastRead -1 FirstWrite 0}
		this_4_18_out {Type O LastRead -1 FirstWrite 0}
		this_1_17_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln50 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_6_out {Type O LastRead -1 FirstWrite 0}
		this_4_6_out {Type O LastRead -1 FirstWrite 0}
		this_1_6_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_RD_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		this_3_2_out {Type O LastRead -1 FirstWrite 0}
		this_4_2_out {Type O LastRead -1 FirstWrite 0}
		this_1_2_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_SUB_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_1_out {Type O LastRead -1 FirstWrite 0}
		this_4_1_out {Type O LastRead -1 FirstWrite 0}
		this_1_1_out {Type O LastRead -1 FirstWrite 0}
		this_2_1_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_unit {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_ADD_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_0_out {Type O LastRead -1 FirstWrite 0}
		this_4_0_out {Type O LastRead -1 FirstWrite 0}
		this_1_0_out {Type O LastRead -1 FirstWrite 0}
		this_2_0_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP1 {
		this_3_20 {Type I LastRead 0 FirstWrite -1}
		this_4_20 {Type I LastRead 0 FirstWrite -1}
		this_1_19 {Type I LastRead 0 FirstWrite -1}
		trunc_ln54 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		call_ret18 {Type I LastRead 0 FirstWrite -1}
		this_3_21_out {Type O LastRead -1 FirstWrite 0}
		this_4_21_out {Type O LastRead -1 FirstWrite 0}
		this_1_20_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP2 {
		this_3_21_reload {Type I LastRead 0 FirstWrite -1}
		this_4_21_reload {Type I LastRead 0 FirstWrite -1}
		this_1_20_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln54 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret29 {Type I LastRead 0 FirstWrite -1}
		this_3_22_out {Type O LastRead -1 FirstWrite 0}
		this_4_22_out {Type O LastRead -1 FirstWrite 0}
		this_1_21_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP3 {
		this_3_22_reload {Type I LastRead 0 FirstWrite -1}
		this_4_22_reload {Type I LastRead 0 FirstWrite -1}
		this_1_21_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln54 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret42 {Type I LastRead 0 FirstWrite -1}
		this_3_23_out {Type O LastRead -1 FirstWrite 0}
		this_4_23_out {Type O LastRead -1 FirstWrite 0}
		this_1_22_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP4 {
		this_3_23_reload {Type I LastRead 0 FirstWrite -1}
		this_4_23_reload {Type I LastRead 0 FirstWrite -1}
		this_1_22_reload {Type I LastRead 0 FirstWrite -1}
		call_ret42 {Type I LastRead 0 FirstWrite -1}
		trunc_ln54 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_24_out {Type O LastRead -1 FirstWrite 0}
		this_4_24_out {Type O LastRead -1 FirstWrite 0}
		this_1_23_out {Type O LastRead -1 FirstWrite 0}
		this_2_12_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP5 {
		this_3_24_reload {Type I LastRead 0 FirstWrite -1}
		this_4_24_reload {Type I LastRead 0 FirstWrite -1}
		this_1_23_reload {Type I LastRead 0 FirstWrite -1}
		this_2_12_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln54 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_25_out {Type O LastRead -1 FirstWrite 0}
		this_4_25_out {Type IO LastRead 3 FirstWrite 0}
		this_1_24_out {Type O LastRead -1 FirstWrite 0}
		this_2_13_out {Type O LastRead -1 FirstWrite 0}}
	read_ntt {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP1 {
		this_3_10 {Type I LastRead 0 FirstWrite -1}
		this_4_10 {Type I LastRead 0 FirstWrite -1}
		this_1_10 {Type I LastRead 0 FirstWrite -1}
		trunc_ln51 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		zext_ln230_2 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_11_out {Type O LastRead -1 FirstWrite 0}
		this_4_11_out {Type O LastRead -1 FirstWrite 0}
		this_1_11_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP2 {
		this_3_11_reload {Type I LastRead 0 FirstWrite -1}
		this_4_11_reload {Type I LastRead 0 FirstWrite -1}
		this_1_11_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln51 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret25 {Type I LastRead 0 FirstWrite -1}
		this_3_12_out {Type O LastRead -1 FirstWrite 0}
		this_4_12_out {Type O LastRead -1 FirstWrite 0}
		this_1_12_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP3 {
		this_3_12_reload {Type I LastRead 0 FirstWrite -1}
		this_4_12_reload {Type I LastRead 0 FirstWrite -1}
		this_1_12_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln51 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret39 {Type I LastRead 0 FirstWrite -1}
		this_3_13_out {Type O LastRead -1 FirstWrite 0}
		this_4_13_out {Type O LastRead -1 FirstWrite 0}
		this_1_13_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP4 {
		this_3_13_reload {Type I LastRead 0 FirstWrite -1}
		this_4_13_reload {Type I LastRead 0 FirstWrite -1}
		this_1_13_reload {Type I LastRead 0 FirstWrite -1}
		call_ret39 {Type I LastRead 0 FirstWrite -1}
		trunc_ln51 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		this_3_14_out {Type O LastRead -1 FirstWrite 0}
		this_4_14_out {Type O LastRead -1 FirstWrite 0}
		this_1_14_out {Type O LastRead -1 FirstWrite 0}
		this_2_8_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP5 {
		this_3_14_reload {Type I LastRead 0 FirstWrite -1}
		this_4_14_reload {Type I LastRead 0 FirstWrite -1}
		this_1_14_reload {Type I LastRead 0 FirstWrite -1}
		this_2_8_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln51 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		this_3_16_out {Type O LastRead -1 FirstWrite 0}
		this_4_16_out {Type IO LastRead 5 FirstWrite 0}
		this_1_16_out {Type O LastRead -1 FirstWrite 0}
		this_2_10_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP2 {
		this_3_6_reload {Type I LastRead 0 FirstWrite -1}
		this_4_6_reload {Type I LastRead 0 FirstWrite -1}
		this_1_6_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln50 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret10 {Type I LastRead 0 FirstWrite -1}
		this_3_7_out {Type O LastRead -1 FirstWrite 0}
		this_4_7_out {Type O LastRead -1 FirstWrite 0}
		this_1_7_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP3 {
		this_3_7_reload {Type I LastRead 0 FirstWrite -1}
		this_4_7_reload {Type I LastRead 0 FirstWrite -1}
		this_1_7_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln50 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret22 {Type I LastRead 0 FirstWrite -1}
		this_3_8_out {Type O LastRead -1 FirstWrite 0}
		this_4_8_out {Type O LastRead -1 FirstWrite 0}
		this_1_8_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP4 {
		this_3_8_reload {Type I LastRead 0 FirstWrite -1}
		this_4_8_reload {Type I LastRead 0 FirstWrite -1}
		this_1_8_reload {Type I LastRead 0 FirstWrite -1}
		call_ret22 {Type I LastRead 0 FirstWrite -1}
		trunc_ln50 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_9_out {Type O LastRead -1 FirstWrite 0}
		this_4_9_out {Type O LastRead -1 FirstWrite 0}
		this_1_9_out {Type O LastRead -1 FirstWrite 0}
		this_2_5_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_RD_LOOP2 {
		this_3_2_reload {Type I LastRead 0 FirstWrite -1}
		this_4_2_reload {Type I LastRead 0 FirstWrite -1}
		this_1_2_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret1 {Type I LastRead 0 FirstWrite -1}
		this_3_3_out {Type O LastRead -1 FirstWrite 0}
		this_4_3_out {Type O LastRead -1 FirstWrite 0}
		this_1_3_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_RD_LOOP3 {
		this_3_3_reload {Type I LastRead 0 FirstWrite -1}
		this_4_3_reload {Type I LastRead 0 FirstWrite -1}
		this_1_3_reload {Type I LastRead 0 FirstWrite -1}
		call_ret1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_4_out {Type O LastRead -1 FirstWrite 0}
		this_4_4_out {Type O LastRead -1 FirstWrite 0}
		this_1_4_out {Type O LastRead -1 FirstWrite 0}
		this_2_2_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP1 {
		this_3_27 {Type I LastRead 0 FirstWrite -1}
		this_4_27 {Type I LastRead 0 FirstWrite -1}
		this_1_26 {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_28_out {Type O LastRead -1 FirstWrite 0}
		this_4_28_out {Type O LastRead -1 FirstWrite 0}
		this_1_27_out {Type O LastRead -1 FirstWrite 0}}
	read_intt {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP2 {
		this_3_28_reload {Type I LastRead 0 FirstWrite -1}
		this_4_28_reload {Type I LastRead 0 FirstWrite -1}
		this_1_27_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		call_ret19 {Type I LastRead 0 FirstWrite -1}
		this_3_29_out {Type O LastRead -1 FirstWrite 0}
		this_4_29_out {Type O LastRead -1 FirstWrite 0}
		this_1_28_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP3 {
		this_3_29_reload {Type I LastRead 0 FirstWrite -1}
		this_4_29_reload {Type I LastRead 0 FirstWrite -1}
		this_1_28_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret34 {Type I LastRead 0 FirstWrite -1}
		this_3_30_out {Type O LastRead -1 FirstWrite 0}
		this_4_30_out {Type O LastRead -1 FirstWrite 0}
		this_1_29_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP4 {
		this_3_30_reload {Type I LastRead 0 FirstWrite -1}
		this_4_30_reload {Type I LastRead 0 FirstWrite -1}
		this_1_29_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret48 {Type I LastRead 0 FirstWrite -1}
		this_3_31_out {Type O LastRead -1 FirstWrite 0}
		this_4_31_out {Type O LastRead -1 FirstWrite 0}
		this_1_30_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP5 {
		this_3_31_reload {Type I LastRead 0 FirstWrite -1}
		this_4_31_reload {Type I LastRead 0 FirstWrite -1}
		this_1_30_reload {Type I LastRead 0 FirstWrite -1}
		call_ret48 {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_32_out {Type O LastRead -1 FirstWrite 0}
		this_4_32_out {Type IO LastRead 5 FirstWrite 0}
		this_1_31_out {Type O LastRead -1 FirstWrite 0}
		this_2_17_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	read_p2 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_unit {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}}
	dpu_unit {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "203", "Max" : "7802"}
	, {"Name" : "Interval", "Min" : "203", "Max" : "7802"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_0 { ap_memory {  { this_0_address0 mem_address 1 8 }  { this_0_ce0 mem_ce 1 1 }  { this_0_we0 mem_we 1 1024 }  { this_0_d0 mem_din 1 8192 }  { this_0_q0 mem_dout 0 8192 } } }
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
