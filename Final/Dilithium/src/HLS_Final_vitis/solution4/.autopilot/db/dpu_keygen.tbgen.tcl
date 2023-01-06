set moduleName dpu_keygen
set isTopModule 1
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
set C_modelName {dpu_keygen}
set C_modelType { int 32 }
set C_modelArgList {
	{ pk int 8 regular {array 1952 { 2 2 } 1 1 }  }
	{ sk int 8 regular {array 4016 { 2 2 } 1 1 }  }
	{ seedbuf int 8 regular {array 96 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "seedbuf", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_address0 sc_out sc_lv 11 signal 0 } 
	{ pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_d0 sc_out sc_lv 8 signal 0 } 
	{ pk_q0 sc_in sc_lv 8 signal 0 } 
	{ pk_address1 sc_out sc_lv 11 signal 0 } 
	{ pk_ce1 sc_out sc_logic 1 signal 0 } 
	{ pk_we1 sc_out sc_logic 1 signal 0 } 
	{ pk_d1 sc_out sc_lv 8 signal 0 } 
	{ pk_q1 sc_in sc_lv 8 signal 0 } 
	{ sk_address0 sc_out sc_lv 12 signal 1 } 
	{ sk_ce0 sc_out sc_logic 1 signal 1 } 
	{ sk_we0 sc_out sc_logic 1 signal 1 } 
	{ sk_d0 sc_out sc_lv 8 signal 1 } 
	{ sk_q0 sc_in sc_lv 8 signal 1 } 
	{ sk_address1 sc_out sc_lv 12 signal 1 } 
	{ sk_ce1 sc_out sc_logic 1 signal 1 } 
	{ sk_we1 sc_out sc_logic 1 signal 1 } 
	{ sk_d1 sc_out sc_lv 8 signal 1 } 
	{ sk_q1 sc_in sc_lv 8 signal 1 } 
	{ seedbuf_address0 sc_out sc_lv 7 signal 2 } 
	{ seedbuf_ce0 sc_out sc_logic 1 signal 2 } 
	{ seedbuf_we0 sc_out sc_logic 1 signal 2 } 
	{ seedbuf_d0 sc_out sc_lv 8 signal 2 } 
	{ seedbuf_q0 sc_in sc_lv 8 signal 2 } 
	{ seedbuf_address1 sc_out sc_lv 7 signal 2 } 
	{ seedbuf_ce1 sc_out sc_logic 1 signal 2 } 
	{ seedbuf_we1 sc_out sc_logic 1 signal 2 } 
	{ seedbuf_d1 sc_out sc_lv 8 signal 2 } 
	{ seedbuf_q1 sc_in sc_lv 8 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "we0" }} , 
 	{ "name": "pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "d0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "we1" }} , 
 	{ "name": "pk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "d1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we0" }} , 
 	{ "name": "sk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "we1" }} , 
 	{ "name": "sk_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "d1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }} , 
 	{ "name": "seedbuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seedbuf", "role": "address0" }} , 
 	{ "name": "seedbuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "ce0" }} , 
 	{ "name": "seedbuf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "we0" }} , 
 	{ "name": "seedbuf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seedbuf", "role": "d0" }} , 
 	{ "name": "seedbuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seedbuf", "role": "q0" }} , 
 	{ "name": "seedbuf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "seedbuf", "role": "address1" }} , 
 	{ "name": "seedbuf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "ce1" }} , 
 	{ "name": "seedbuf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seedbuf", "role": "we1" }} , 
 	{ "name": "seedbuf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seedbuf", "role": "d1" }} , 
 	{ "name": "seedbuf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seedbuf", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "574", "576", "578", "580", "582", "596", "598", "600", "602", "604", "607", "609", "629", "631", "633", "634", "636", "677", "679", "681", "683", "685", "687", "689", "691", "696", "703", "706", "708"],
		"CDFG" : "dpu_keygen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "691", "SubInstance" : "grp_dpu_pack_fu_743", "Port" : "pk", "Inst_start_state" : "61", "Inst_end_state" : "62"},
					{"ID" : "696", "SubInstance" : "grp_shake_absorb_3_fu_752", "Port" : "pk", "Inst_start_state" : "63", "Inst_end_state" : "64"},
					{"ID" : "681", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Port" : "pk", "Inst_start_state" : "42", "Inst_end_state" : "46"}]},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "706", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769", "Port" : "sk", "Inst_start_state" : "69", "Inst_end_state" : "70"},
					{"ID" : "689", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Port" : "sk", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "687", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Port" : "sk", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "708", "SubInstance" : "grp_dpu_pack_4_fu_776", "Port" : "sk", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "604", "SubInstance" : "grp_shake_squeeze_2_fu_626", "Port" : "seedbuf", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "582", "SubInstance" : "grp_shake_absorb_1_fu_585", "Port" : "seedbuf", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "636", "SubInstance" : "grp_sample_eta_fu_679", "Port" : "seedbuf", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "689", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Port" : "seedbuf", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "687", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Port" : "seedbuf", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "681", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Port" : "seedbuf", "Inst_start_state" : "42", "Inst_end_state" : "46"}]},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "596", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599", "Port" : "zetas", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "580", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578", "Port" : "zetas", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "604", "SubInstance" : "grp_shake_squeeze_2_fu_626", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "629", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_650", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "582", "SubInstance" : "grp_shake_absorb_1_fu_585", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "636", "SubInstance" : "grp_sample_eta_fu_679", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "609", "SubInstance" : "grp_shake_absorb_fu_640", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "696", "SubInstance" : "grp_shake_absorb_3_fu_752", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "63", "Inst_end_state" : "64"},
					{"ID" : "703", "SubInstance" : "grp_shake_squeeze_fu_761", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "691", "SubInstance" : "grp_dpu_pack_fu_743", "Port" : "ptr", "Inst_start_state" : "61", "Inst_end_state" : "62"},
					{"ID" : "708", "SubInstance" : "grp_dpu_pack_4_fu_776", "Port" : "ptr", "Inst_start_state" : "75", "Inst_end_state" : "76"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_500_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "76", "FirstState" : "ap_ST_fsm_state24", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state24"], "PreState" : ["ap_ST_fsm_state23"], "PostState" : ["ap_ST_fsm_state32"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_31_1_VITIS_LOOP_32_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "76", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state34"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state35"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_37_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "76", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state41"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state42"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_42_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "76", "FirstState" : "ap_ST_fsm_state42", "LastState" : ["ap_ST_fsm_state45"], "QuitState" : ["ap_ST_fsm_state42"], "PreState" : ["ap_ST_fsm_state35"], "PostState" : ["ap_ST_fsm_state46"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dpu_pMem_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.spu_s_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tr_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460", "Parent" : "0", "Child" : ["10", "269", "271", "273", "275", "277", "279", "281", "283", "285", "287", "289", "291", "293", "295", "297", "299", "301", "303", "305", "307", "309", "311", "313", "315", "317"],
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
					{"ID" : "10", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "279", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997", "Port" : "this_pMem", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "269", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "281", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011", "Port" : "this_pMem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "271", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "48"},
					{"ID" : "273", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "60"},
					{"ID" : "275", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "72"},
					{"ID" : "277", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "307", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210", "Port" : "this_pMem", "Inst_start_state" : "84", "Inst_end_state" : "85"},
					{"ID" : "289", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073", "Port" : "this_pMem", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "313", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253", "Port" : "this_pMem", "Inst_start_state" : "96", "Inst_end_state" : "97"},
					{"ID" : "283", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025", "Port" : "this_pMem", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "287", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "293", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101", "Port" : "this_pMem", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "309", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224", "Port" : "this_pMem", "Inst_start_state" : "88", "Inst_end_state" : "89"},
					{"ID" : "301", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164", "Port" : "this_pMem", "Inst_start_state" : "57", "Inst_end_state" : "58"},
					{"ID" : "303", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180", "Port" : "this_pMem", "Inst_start_state" : "67", "Inst_end_state" : "68"},
					{"ID" : "299", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150", "Port" : "this_pMem", "Inst_start_state" : "55", "Inst_end_state" : "56"},
					{"ID" : "311", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239", "Port" : "this_pMem", "Inst_start_state" : "92", "Inst_end_state" : "93"},
					{"ID" : "295", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116", "Port" : "this_pMem", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "297", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136", "Port" : "this_pMem", "Inst_start_state" : "51", "Inst_end_state" : "52"},
					{"ID" : "305", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194", "Port" : "this_pMem", "Inst_start_state" : "69", "Inst_end_state" : "70"},
					{"ID" : "285", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041", "Port" : "this_pMem", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "291", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087", "Port" : "this_pMem", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "315", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267", "Port" : "this_pMem", "Inst_start_state" : "98", "Inst_end_state" : "99"}]},
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878", "Parent" : "9", "Child" : ["11", "268"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194", "Parent" : "10", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U105", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U106", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U107", "Parent" : "11"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U108", "Parent" : "11"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U109", "Parent" : "11"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U110", "Parent" : "11"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U111", "Parent" : "11"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U112", "Parent" : "11"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U113", "Parent" : "11"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U114", "Parent" : "11"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U115", "Parent" : "11"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U116", "Parent" : "11"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U117", "Parent" : "11"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U118", "Parent" : "11"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U119", "Parent" : "11"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U120", "Parent" : "11"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U121", "Parent" : "11"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U122", "Parent" : "11"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U123", "Parent" : "11"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U124", "Parent" : "11"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U125", "Parent" : "11"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U126", "Parent" : "11"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U127", "Parent" : "11"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U128", "Parent" : "11"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U129", "Parent" : "11"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U130", "Parent" : "11"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U131", "Parent" : "11"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U132", "Parent" : "11"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U133", "Parent" : "11"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U134", "Parent" : "11"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U135", "Parent" : "11"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U136", "Parent" : "11"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U137", "Parent" : "11"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U138", "Parent" : "11"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U139", "Parent" : "11"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U140", "Parent" : "11"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U141", "Parent" : "11"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U142", "Parent" : "11"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U143", "Parent" : "11"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U144", "Parent" : "11"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U145", "Parent" : "11"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U146", "Parent" : "11"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U147", "Parent" : "11"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U148", "Parent" : "11"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U149", "Parent" : "11"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U150", "Parent" : "11"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U151", "Parent" : "11"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U152", "Parent" : "11"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U153", "Parent" : "11"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U154", "Parent" : "11"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U155", "Parent" : "11"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U156", "Parent" : "11"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U157", "Parent" : "11"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U158", "Parent" : "11"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U159", "Parent" : "11"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U160", "Parent" : "11"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U161", "Parent" : "11"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U162", "Parent" : "11"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U163", "Parent" : "11"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U164", "Parent" : "11"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U165", "Parent" : "11"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U166", "Parent" : "11"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U167", "Parent" : "11"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U168", "Parent" : "11"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U169", "Parent" : "11"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U170", "Parent" : "11"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U171", "Parent" : "11"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U172", "Parent" : "11"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U173", "Parent" : "11"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U174", "Parent" : "11"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U175", "Parent" : "11"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U176", "Parent" : "11"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U177", "Parent" : "11"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U178", "Parent" : "11"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U179", "Parent" : "11"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U180", "Parent" : "11"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U181", "Parent" : "11"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U182", "Parent" : "11"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U183", "Parent" : "11"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U184", "Parent" : "11"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U185", "Parent" : "11"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U186", "Parent" : "11"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U187", "Parent" : "11"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U188", "Parent" : "11"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U189", "Parent" : "11"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U190", "Parent" : "11"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U191", "Parent" : "11"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U192", "Parent" : "11"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U193", "Parent" : "11"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U194", "Parent" : "11"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U195", "Parent" : "11"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U196", "Parent" : "11"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U197", "Parent" : "11"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U198", "Parent" : "11"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U199", "Parent" : "11"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U200", "Parent" : "11"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U201", "Parent" : "11"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U202", "Parent" : "11"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U203", "Parent" : "11"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U204", "Parent" : "11"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U205", "Parent" : "11"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U206", "Parent" : "11"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U207", "Parent" : "11"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U208", "Parent" : "11"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U209", "Parent" : "11"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U210", "Parent" : "11"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U211", "Parent" : "11"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U212", "Parent" : "11"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U213", "Parent" : "11"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U214", "Parent" : "11"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U215", "Parent" : "11"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U216", "Parent" : "11"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U217", "Parent" : "11"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U218", "Parent" : "11"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U219", "Parent" : "11"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U220", "Parent" : "11"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U221", "Parent" : "11"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U222", "Parent" : "11"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U223", "Parent" : "11"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U224", "Parent" : "11"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U225", "Parent" : "11"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U226", "Parent" : "11"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U227", "Parent" : "11"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U228", "Parent" : "11"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U229", "Parent" : "11"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U230", "Parent" : "11"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U231", "Parent" : "11"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U232", "Parent" : "11"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U233", "Parent" : "11"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U234", "Parent" : "11"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U235", "Parent" : "11"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U236", "Parent" : "11"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U237", "Parent" : "11"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U238", "Parent" : "11"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U239", "Parent" : "11"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U240", "Parent" : "11"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U241", "Parent" : "11"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U242", "Parent" : "11"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U243", "Parent" : "11"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U244", "Parent" : "11"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U245", "Parent" : "11"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U246", "Parent" : "11"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U247", "Parent" : "11"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U248", "Parent" : "11"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U249", "Parent" : "11"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U250", "Parent" : "11"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U251", "Parent" : "11"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U252", "Parent" : "11"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U253", "Parent" : "11"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U254", "Parent" : "11"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U255", "Parent" : "11"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U256", "Parent" : "11"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U257", "Parent" : "11"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U258", "Parent" : "11"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U259", "Parent" : "11"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U260", "Parent" : "11"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U261", "Parent" : "11"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U262", "Parent" : "11"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U263", "Parent" : "11"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U264", "Parent" : "11"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U265", "Parent" : "11"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U266", "Parent" : "11"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U267", "Parent" : "11"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U268", "Parent" : "11"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U269", "Parent" : "11"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U270", "Parent" : "11"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U271", "Parent" : "11"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U272", "Parent" : "11"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U273", "Parent" : "11"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U274", "Parent" : "11"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U275", "Parent" : "11"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U276", "Parent" : "11"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U277", "Parent" : "11"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U278", "Parent" : "11"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U279", "Parent" : "11"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U280", "Parent" : "11"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U281", "Parent" : "11"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U282", "Parent" : "11"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U283", "Parent" : "11"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U284", "Parent" : "11"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U285", "Parent" : "11"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U286", "Parent" : "11"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U287", "Parent" : "11"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U288", "Parent" : "11"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U289", "Parent" : "11"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U290", "Parent" : "11"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U291", "Parent" : "11"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U292", "Parent" : "11"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U293", "Parent" : "11"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U294", "Parent" : "11"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U295", "Parent" : "11"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U296", "Parent" : "11"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U297", "Parent" : "11"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U298", "Parent" : "11"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U299", "Parent" : "11"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U300", "Parent" : "11"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U301", "Parent" : "11"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U302", "Parent" : "11"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U303", "Parent" : "11"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U304", "Parent" : "11"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U305", "Parent" : "11"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U306", "Parent" : "11"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U307", "Parent" : "11"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U308", "Parent" : "11"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U309", "Parent" : "11"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U310", "Parent" : "11"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U311", "Parent" : "11"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U312", "Parent" : "11"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U313", "Parent" : "11"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U314", "Parent" : "11"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U315", "Parent" : "11"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U316", "Parent" : "11"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U317", "Parent" : "11"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U318", "Parent" : "11"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U319", "Parent" : "11"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U320", "Parent" : "11"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U321", "Parent" : "11"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U322", "Parent" : "11"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U323", "Parent" : "11"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U324", "Parent" : "11"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U325", "Parent" : "11"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U326", "Parent" : "11"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U327", "Parent" : "11"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U328", "Parent" : "11"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U329", "Parent" : "11"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U330", "Parent" : "11"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U331", "Parent" : "11"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U332", "Parent" : "11"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U333", "Parent" : "11"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U334", "Parent" : "11"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U335", "Parent" : "11"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U336", "Parent" : "11"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U337", "Parent" : "11"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U338", "Parent" : "11"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U339", "Parent" : "11"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U340", "Parent" : "11"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U341", "Parent" : "11"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U342", "Parent" : "11"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U343", "Parent" : "11"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U344", "Parent" : "11"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U345", "Parent" : "11"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U346", "Parent" : "11"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U347", "Parent" : "11"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U348", "Parent" : "11"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U349", "Parent" : "11"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U350", "Parent" : "11"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U351", "Parent" : "11"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U352", "Parent" : "11"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U353", "Parent" : "11"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U354", "Parent" : "11"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U355", "Parent" : "11"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U356", "Parent" : "11"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U357", "Parent" : "11"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U358", "Parent" : "11"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U359", "Parent" : "11"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U360", "Parent" : "11"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900", "Parent" : "9", "Child" : ["270"],
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
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920", "Parent" : "9", "Child" : ["272"],
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
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939", "Parent" : "9", "Child" : ["274"],
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
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.flow_control_loop_pipe_sequential_init_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959", "Parent" : "9", "Child" : ["276"],
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
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982", "Parent" : "9", "Child" : ["278"],
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
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997", "Parent" : "9", "Child" : ["280"],
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
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011", "Parent" : "9", "Child" : ["282"],
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
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011.flow_control_loop_pipe_sequential_init_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025", "Parent" : "9", "Child" : ["284"],
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
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.flow_control_loop_pipe_sequential_init_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041", "Parent" : "9", "Child" : ["286"],
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
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057", "Parent" : "9", "Child" : ["288"],
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
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073", "Parent" : "9", "Child" : ["290"],
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
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073.flow_control_loop_pipe_sequential_init_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087", "Parent" : "9", "Child" : ["292"],
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
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087.flow_control_loop_pipe_sequential_init_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101", "Parent" : "9", "Child" : ["294"],
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
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101.flow_control_loop_pipe_sequential_init_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116", "Parent" : "9", "Child" : ["296"],
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
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116.flow_control_loop_pipe_sequential_init_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136", "Parent" : "9", "Child" : ["298"],
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
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150", "Parent" : "9", "Child" : ["300"],
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
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150.flow_control_loop_pipe_sequential_init_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164", "Parent" : "9", "Child" : ["302"],
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
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180", "Parent" : "9", "Child" : ["304"],
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
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180.flow_control_loop_pipe_sequential_init_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194", "Parent" : "9", "Child" : ["306"],
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
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210", "Parent" : "9", "Child" : ["308"],
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
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.flow_control_loop_pipe_sequential_init_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224", "Parent" : "9", "Child" : ["310"],
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
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.flow_control_loop_pipe_sequential_init_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239", "Parent" : "9", "Child" : ["312"],
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
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239.flow_control_loop_pipe_sequential_init_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253", "Parent" : "9", "Child" : ["314"],
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
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253.flow_control_loop_pipe_sequential_init_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267", "Parent" : "9", "Child" : ["316"],
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
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.flow_control_loop_pipe_sequential_init_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995", "Parent" : "9", "Child" : ["318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573"],
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
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U105", "Parent" : "317"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U106", "Parent" : "317"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U107", "Parent" : "317"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U108", "Parent" : "317"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U109", "Parent" : "317"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U110", "Parent" : "317"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U111", "Parent" : "317"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U112", "Parent" : "317"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U113", "Parent" : "317"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U114", "Parent" : "317"},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U115", "Parent" : "317"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U116", "Parent" : "317"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U117", "Parent" : "317"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U118", "Parent" : "317"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U119", "Parent" : "317"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U120", "Parent" : "317"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U121", "Parent" : "317"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U122", "Parent" : "317"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U123", "Parent" : "317"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U124", "Parent" : "317"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U125", "Parent" : "317"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U126", "Parent" : "317"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U127", "Parent" : "317"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U128", "Parent" : "317"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U129", "Parent" : "317"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U130", "Parent" : "317"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U131", "Parent" : "317"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U132", "Parent" : "317"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U133", "Parent" : "317"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U134", "Parent" : "317"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U135", "Parent" : "317"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U136", "Parent" : "317"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U137", "Parent" : "317"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U138", "Parent" : "317"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U139", "Parent" : "317"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U140", "Parent" : "317"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U141", "Parent" : "317"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U142", "Parent" : "317"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U143", "Parent" : "317"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U144", "Parent" : "317"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U145", "Parent" : "317"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U146", "Parent" : "317"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U147", "Parent" : "317"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U148", "Parent" : "317"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U149", "Parent" : "317"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U150", "Parent" : "317"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U151", "Parent" : "317"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U152", "Parent" : "317"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U153", "Parent" : "317"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U154", "Parent" : "317"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U155", "Parent" : "317"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U156", "Parent" : "317"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U157", "Parent" : "317"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U158", "Parent" : "317"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U159", "Parent" : "317"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U160", "Parent" : "317"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U161", "Parent" : "317"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U162", "Parent" : "317"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U163", "Parent" : "317"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U164", "Parent" : "317"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U165", "Parent" : "317"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U166", "Parent" : "317"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U167", "Parent" : "317"},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U168", "Parent" : "317"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U169", "Parent" : "317"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U170", "Parent" : "317"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U171", "Parent" : "317"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U172", "Parent" : "317"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U173", "Parent" : "317"},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U174", "Parent" : "317"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U175", "Parent" : "317"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U176", "Parent" : "317"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U177", "Parent" : "317"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U178", "Parent" : "317"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U179", "Parent" : "317"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U180", "Parent" : "317"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U181", "Parent" : "317"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U182", "Parent" : "317"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U183", "Parent" : "317"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U184", "Parent" : "317"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U185", "Parent" : "317"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U186", "Parent" : "317"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U187", "Parent" : "317"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U188", "Parent" : "317"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U189", "Parent" : "317"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U190", "Parent" : "317"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U191", "Parent" : "317"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U192", "Parent" : "317"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U193", "Parent" : "317"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U194", "Parent" : "317"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U195", "Parent" : "317"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U196", "Parent" : "317"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U197", "Parent" : "317"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U198", "Parent" : "317"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U199", "Parent" : "317"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U200", "Parent" : "317"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U201", "Parent" : "317"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U202", "Parent" : "317"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U203", "Parent" : "317"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U204", "Parent" : "317"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U205", "Parent" : "317"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U206", "Parent" : "317"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U207", "Parent" : "317"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U208", "Parent" : "317"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U209", "Parent" : "317"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U210", "Parent" : "317"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U211", "Parent" : "317"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U212", "Parent" : "317"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U213", "Parent" : "317"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U214", "Parent" : "317"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U215", "Parent" : "317"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U216", "Parent" : "317"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U217", "Parent" : "317"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U218", "Parent" : "317"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U219", "Parent" : "317"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U220", "Parent" : "317"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U221", "Parent" : "317"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U222", "Parent" : "317"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U223", "Parent" : "317"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U224", "Parent" : "317"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U225", "Parent" : "317"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U226", "Parent" : "317"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U227", "Parent" : "317"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U228", "Parent" : "317"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U229", "Parent" : "317"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U230", "Parent" : "317"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U231", "Parent" : "317"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U232", "Parent" : "317"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U233", "Parent" : "317"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U234", "Parent" : "317"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U235", "Parent" : "317"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U236", "Parent" : "317"},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U237", "Parent" : "317"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U238", "Parent" : "317"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U239", "Parent" : "317"},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U240", "Parent" : "317"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U241", "Parent" : "317"},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U242", "Parent" : "317"},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U243", "Parent" : "317"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U244", "Parent" : "317"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U245", "Parent" : "317"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U246", "Parent" : "317"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U247", "Parent" : "317"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U248", "Parent" : "317"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U249", "Parent" : "317"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U250", "Parent" : "317"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U251", "Parent" : "317"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U252", "Parent" : "317"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U253", "Parent" : "317"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U254", "Parent" : "317"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U255", "Parent" : "317"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U256", "Parent" : "317"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U257", "Parent" : "317"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U258", "Parent" : "317"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U259", "Parent" : "317"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U260", "Parent" : "317"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U261", "Parent" : "317"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U262", "Parent" : "317"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U263", "Parent" : "317"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U264", "Parent" : "317"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U265", "Parent" : "317"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U266", "Parent" : "317"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U267", "Parent" : "317"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U268", "Parent" : "317"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U269", "Parent" : "317"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U270", "Parent" : "317"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U271", "Parent" : "317"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U272", "Parent" : "317"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U273", "Parent" : "317"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U274", "Parent" : "317"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U275", "Parent" : "317"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U276", "Parent" : "317"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U277", "Parent" : "317"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U278", "Parent" : "317"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U279", "Parent" : "317"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U280", "Parent" : "317"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U281", "Parent" : "317"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U282", "Parent" : "317"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U283", "Parent" : "317"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U284", "Parent" : "317"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U285", "Parent" : "317"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U286", "Parent" : "317"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U287", "Parent" : "317"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U288", "Parent" : "317"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U289", "Parent" : "317"},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U290", "Parent" : "317"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U291", "Parent" : "317"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U292", "Parent" : "317"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U293", "Parent" : "317"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U294", "Parent" : "317"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U295", "Parent" : "317"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U296", "Parent" : "317"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U297", "Parent" : "317"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U298", "Parent" : "317"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U299", "Parent" : "317"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U300", "Parent" : "317"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U301", "Parent" : "317"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U302", "Parent" : "317"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U303", "Parent" : "317"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U304", "Parent" : "317"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U305", "Parent" : "317"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U306", "Parent" : "317"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U307", "Parent" : "317"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U308", "Parent" : "317"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U309", "Parent" : "317"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U310", "Parent" : "317"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U311", "Parent" : "317"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U312", "Parent" : "317"},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U313", "Parent" : "317"},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U314", "Parent" : "317"},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U315", "Parent" : "317"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U316", "Parent" : "317"},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U317", "Parent" : "317"},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U318", "Parent" : "317"},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U319", "Parent" : "317"},
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U320", "Parent" : "317"},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U321", "Parent" : "317"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U322", "Parent" : "317"},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U323", "Parent" : "317"},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U324", "Parent" : "317"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U325", "Parent" : "317"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U326", "Parent" : "317"},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U327", "Parent" : "317"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U328", "Parent" : "317"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U329", "Parent" : "317"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U330", "Parent" : "317"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U331", "Parent" : "317"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U332", "Parent" : "317"},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U333", "Parent" : "317"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U334", "Parent" : "317"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U335", "Parent" : "317"},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U336", "Parent" : "317"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U337", "Parent" : "317"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U338", "Parent" : "317"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U339", "Parent" : "317"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U340", "Parent" : "317"},
	{"ID" : "554", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U341", "Parent" : "317"},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U342", "Parent" : "317"},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U343", "Parent" : "317"},
	{"ID" : "557", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U344", "Parent" : "317"},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U345", "Parent" : "317"},
	{"ID" : "559", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U346", "Parent" : "317"},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U347", "Parent" : "317"},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U348", "Parent" : "317"},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U349", "Parent" : "317"},
	{"ID" : "563", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U350", "Parent" : "317"},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U351", "Parent" : "317"},
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U352", "Parent" : "317"},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U353", "Parent" : "317"},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U354", "Parent" : "317"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U355", "Parent" : "317"},
	{"ID" : "569", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U356", "Parent" : "317"},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U357", "Parent" : "317"},
	{"ID" : "571", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U358", "Parent" : "317"},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U359", "Parent" : "317"},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U360", "Parent" : "317"},
	{"ID" : "574", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_40_1_fu_562", "Parent" : "0", "Child" : ["575"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_40_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "575", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_40_1_fu_562.flow_control_loop_pipe_sequential_init_U", "Parent" : "574"},
	{"ID" : "576", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_41_2_fu_567", "Parent" : "0", "Child" : ["577"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_41_2",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "577", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_41_2_fu_567.flow_control_loop_pipe_sequential_init_U", "Parent" : "576"},
	{"ID" : "578", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_1_fu_572", "Parent" : "0", "Child" : ["579"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_321_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "spu_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_321_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "579", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_1_fu_572.flow_control_loop_pipe_sequential_init_U", "Parent" : "578"},
	{"ID" : "580", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578", "Parent" : "0", "Child" : ["581"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dpu_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_3_VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578.flow_control_loop_pipe_sequential_init_U", "Parent" : "580"},
	{"ID" : "582", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585", "Parent" : "0", "Child" : ["583", "584", "586", "588", "590", "592", "594"],
		"CDFG" : "shake_absorb_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "584", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "586", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "588", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "this_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "586", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "592", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Port" : "seedbuf", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "588", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.t_U", "Parent" : "582"},
	{"ID" : "584", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Parent" : "582", "Child" : ["585"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_369_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "86",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln368", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln340_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_369_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "584"},
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Parent" : "582", "Child" : ["587"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_376_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "div", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_376_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "587", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "586"},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_KeccakF1600_StatePermute_fu_164", "Parent" : "582", "Child" : ["589"],
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
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_KeccakF1600_StatePermute_fu_164.KeccakF_RoundConstants_U", "Parent" : "588"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172", "Parent" : "582", "Child" : ["591"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_383_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_383_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "590"},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Parent" : "582", "Child" : ["593"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_385_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln340", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_385_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "593", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "592"},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187", "Parent" : "582", "Child" : ["595"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_12_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "594"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599", "Parent" : "0", "Child" : ["597"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dpu_pMem", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_5_VITIS_LOOP_49_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599.flow_control_loop_pipe_sequential_init_U", "Parent" : "596"},
	{"ID" : "598", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_54_7_fu_606", "Parent" : "0", "Child" : ["599"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_54_7",
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
			{"Name" : "this_pMem_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_54_7_fu_606.flow_control_loop_pipe_sequential_init_U", "Parent" : "598"},
	{"ID" : "600", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_8_fu_612", "Parent" : "0", "Child" : ["601"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_55_8",
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
			{"Name" : "this_pMem_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_8_fu_612.flow_control_loop_pipe_sequential_init_U", "Parent" : "600"},
	{"ID" : "602", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_9_fu_619", "Parent" : "0", "Child" : ["603"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_56_9",
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
			{"Name" : "this_pMem_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "603", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_9_fu_619.flow_control_loop_pipe_sequential_init_U", "Parent" : "602"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626", "Parent" : "0", "Child" : ["605"],
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
					{"ID" : "605", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "605", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "605", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626.grp_KeccakF1600_StatePermute_fu_178", "Parent" : "604", "Child" : ["606"],
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
	{"ID" : "606", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626.grp_KeccakF1600_StatePermute_fu_178.KeccakF_RoundConstants_U", "Parent" : "605"},
	{"ID" : "607", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_16_fu_635", "Parent" : "0", "Child" : ["608"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_321_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "spu_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_321_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_16_fu_635.flow_control_loop_pipe_sequential_init_U", "Parent" : "607"},
	{"ID" : "609", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640", "Parent" : "0", "Child" : ["610", "611", "613", "615", "617", "619", "621", "623", "625", "627"],
		"CDFG" : "shake_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "619", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "617", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "this_s", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "615", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Port" : "this_s", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "621", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "15"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "610", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.t_U", "Parent" : "609"},
	{"ID" : "611", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241", "Parent" : "609", "Child" : ["612"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_351_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln349", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_351_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "611"},
	{"ID" : "613", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249", "Parent" : "609", "Child" : ["614"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_12_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "614", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "613"},
	{"ID" : "615", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Parent" : "609", "Child" : ["616"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_360_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln13_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln13_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln361_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln342_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_360_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "616", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "615"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_KeccakF1600_StatePermute_fu_265", "Parent" : "609", "Child" : ["618"],
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
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_KeccakF1600_StatePermute_fu_265.KeccakF_RoundConstants_U", "Parent" : "617"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Parent" : "609", "Child" : ["620"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_369_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln13_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln13_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln368", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_369_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "619"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Parent" : "609", "Child" : ["622"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_376_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln13_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln13_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln368", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln7", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_376_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "621"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293", "Parent" : "609", "Child" : ["624"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_383_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_383_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "623"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298", "Parent" : "609", "Child" : ["626"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_385_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln340_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_ln340_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_385_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "625"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308", "Parent" : "609", "Child" : ["628"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_12_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "627"},
	{"ID" : "629", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_650", "Parent" : "0", "Child" : ["630"],
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
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_650.KeccakF_RoundConstants_U", "Parent" : "629"},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_417_2_fu_657", "Parent" : "0", "Child" : ["632"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_417_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "86", "EstimateLatencyMax" : "86",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "spu_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_417_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_417_2_fu_657.flow_control_loop_pipe_sequential_init_U", "Parent" : "631"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_503_2_fu_663", "Parent" : "0",
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_503_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "176",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ctr", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ctr_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_503_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "634", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_1_fu_671", "Parent" : "0", "Child" : ["635"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_99_1",
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
			{"Name" : "this_pMem_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "635", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_1_fu_671.flow_control_loop_pipe_sequential_init_U", "Parent" : "634"},
	{"ID" : "636", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679", "Parent" : "0", "Child" : ["637", "638", "652", "672", "674", "676"],
		"CDFG" : "sample_eta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "672", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_165", "Port" : "this_s", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "652", "SubInstance" : "grp_shake_absorb_fu_153", "Port" : "this_s", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "638", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "674", "SubInstance" : "grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173", "Port" : "this_s", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "a", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "676", "SubInstance" : "grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180", "Port" : "a", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "638", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "seedbuf", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "672", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_165", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "652", "SubInstance" : "grp_shake_absorb_fu_153", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "638", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_321_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_530_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "637", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.buf_U", "Parent" : "636"},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139", "Parent" : "636", "Child" : ["639", "640", "642", "644", "646", "648", "650"],
		"CDFG" : "shake_absorb_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "640", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "642", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "644", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "this_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "640", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "642", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "648", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Port" : "seedbuf", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "644", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.t_U", "Parent" : "638"},
	{"ID" : "640", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Parent" : "638", "Child" : ["641"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_369_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "86",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln368", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln340_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_369_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "641", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "640"},
	{"ID" : "642", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Parent" : "638", "Child" : ["643"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_376_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "div", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_376_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "643", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "642"},
	{"ID" : "644", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_KeccakF1600_StatePermute_fu_164", "Parent" : "638", "Child" : ["645"],
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
	{"ID" : "645", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_KeccakF1600_StatePermute_fu_164.KeccakF_RoundConstants_U", "Parent" : "644"},
	{"ID" : "646", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172", "Parent" : "638", "Child" : ["647"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_383_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_383_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "647", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "646"},
	{"ID" : "648", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Parent" : "638", "Child" : ["649"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_385_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln340", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_385_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "649", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "648"},
	{"ID" : "650", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187", "Parent" : "638", "Child" : ["651"],
		"CDFG" : "shake_absorb_1_Pipeline_VITIS_LOOP_12_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "651", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "650"},
	{"ID" : "652", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153", "Parent" : "636", "Child" : ["653", "654", "656", "658", "660", "662", "664", "666", "668", "670"],
		"CDFG" : "shake_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "662", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "660", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "this_s", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "658", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Port" : "this_s", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "664", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "15"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "660", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "653", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.t_U", "Parent" : "652"},
	{"ID" : "654", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241", "Parent" : "652", "Child" : ["655"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_351_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln349", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_351_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "655", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "654"},
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249", "Parent" : "652", "Child" : ["657"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_12_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "657", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "656"},
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Parent" : "652", "Child" : ["659"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_360_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln13_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln13_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln361_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln342_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_360_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "659", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "658"},
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_KeccakF1600_StatePermute_fu_265", "Parent" : "652", "Child" : ["661"],
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
	{"ID" : "661", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_KeccakF1600_StatePermute_fu_265.KeccakF_RoundConstants_U", "Parent" : "660"},
	{"ID" : "662", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Parent" : "652", "Child" : ["663"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_369_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln13_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln13_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln368", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_369_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "663", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "662"},
	{"ID" : "664", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Parent" : "652", "Child" : ["665"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_376_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln13_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln13_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln368", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln7", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_376_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "665", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "664"},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293", "Parent" : "652", "Child" : ["667"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_383_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_383_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "666"},
	{"ID" : "668", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298", "Parent" : "652", "Child" : ["669"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_385_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln340_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_ln340_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_385_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "669", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "668"},
	{"ID" : "670", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308", "Parent" : "652", "Child" : ["671"],
		"CDFG" : "shake_absorb_Pipeline_VITIS_LOOP_12_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "671", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "670"},
	{"ID" : "672", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_KeccakF1600_StatePermute_fu_165", "Parent" : "636", "Child" : ["673"],
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
	{"ID" : "673", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_KeccakF1600_StatePermute_fu_165.KeccakF_RoundConstants_U", "Parent" : "672"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173", "Parent" : "636", "Child" : ["675"],
		"CDFG" : "sample_eta_Pipeline_VITIS_LOOP_417_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "86", "EstimateLatencyMax" : "86",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_417_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "675", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "674"},
	{"ID" : "676", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180", "Parent" : "636",
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
			{"Name" : "ctr", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ctr_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_533_2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]},
	{"ID" : "677", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_17_fu_690", "Parent" : "0", "Child" : ["678"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_99_17",
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
			{"Name" : "this_pMem_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "678", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_17_fu_690.flow_control_loop_pipe_sequential_init_U", "Parent" : "677"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_18_fu_698", "Parent" : "0", "Child" : ["680"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_99_18",
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
			{"Name" : "this_pMem_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "680", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_18_fu_698.flow_control_loop_pipe_sequential_init_U", "Parent" : "679"},
	{"ID" : "681", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Parent" : "0", "Child" : ["682"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_55_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706.flow_control_loop_pipe_sequential_init_U", "Parent" : "681"},
	{"ID" : "683", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_110_fu_714", "Parent" : "0", "Child" : ["684"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_321_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "spu_s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_321_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "684", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_110_fu_714.flow_control_loop_pipe_sequential_init_U", "Parent" : "683"},
	{"ID" : "685", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_19_fu_719", "Parent" : "0", "Child" : ["686"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_99_19",
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
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "686", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_19_fu_719.flow_control_loop_pipe_sequential_init_U", "Parent" : "685"},
	{"ID" : "687", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Parent" : "0", "Child" : ["688"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_60_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "688", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727.flow_control_loop_pipe_sequential_init_U", "Parent" : "687"},
	{"ID" : "689", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Parent" : "0", "Child" : ["690"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_61_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "690", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735.flow_control_loop_pipe_sequential_init_U", "Parent" : "689"},
	{"ID" : "691", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743", "Parent" : "0", "Child" : ["692", "694"],
		"CDFG" : "dpu_pack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2743", "EstimateLatencyMax" : "2743",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "694", "SubInstance" : "grp_dpu_pack_Pipeline_VITIS_LOOP_433_2_fu_87", "Port" : "pk", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "694", "SubInstance" : "grp_dpu_pack_Pipeline_VITIS_LOOP_433_2_fu_87", "Port" : "ptr", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_431_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "692", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_75_1_fu_79", "Parent" : "691", "Child" : ["693"],
		"CDFG" : "dpu_pack_Pipeline_VITIS_LOOP_75_1",
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
			{"Name" : "this_5_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_5_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "693", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_75_1_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "692"},
	{"ID" : "694", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_433_2_fu_87", "Parent" : "691", "Child" : ["695"],
		"CDFG" : "dpu_pack_Pipeline_VITIS_LOOP_433_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_5_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_433_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "695", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_433_2_fu_87.flow_control_loop_pipe_sequential_init_U", "Parent" : "694"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752", "Parent" : "0", "Child" : ["697", "699", "701"],
		"CDFG" : "shake_absorb_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1764", "EstimateLatencyMax" : "1764",
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
					{"ID" : "701", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_67", "Port" : "this_s", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "699", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "6"},
					{"ID" : "697", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "699", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Port" : "pk", "Inst_start_state" : "2", "Inst_end_state" : "6"},
					{"ID" : "697", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Port" : "pk", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "701", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_67", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Parent" : "696", "Child" : ["698"],
		"CDFG" : "shake_absorb_3_Pipeline_VITIS_LOOP_369_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "70",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "idx98", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_369_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "697"},
	{"ID" : "699", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Parent" : "696", "Child" : ["700"],
		"CDFG" : "shake_absorb_3_Pipeline_VITIS_LOOP_376_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_376_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "700", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "699"},
	{"ID" : "701", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_KeccakF1600_StatePermute_fu_67", "Parent" : "696", "Child" : ["702"],
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
	{"ID" : "702", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_KeccakF1600_StatePermute_fu_67.KeccakF_RoundConstants_U", "Parent" : "701"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761", "Parent" : "0", "Child" : ["704"],
		"CDFG" : "shake_squeeze",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "77", "EstimateLatencyMax" : "77",
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
					{"ID" : "704", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_170", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "704", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_170", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "704", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761.grp_KeccakF1600_StatePermute_fu_170", "Parent" : "703", "Child" : ["705"],
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
	{"ID" : "705", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761.grp_KeccakF1600_StatePermute_fu_170.KeccakF_RoundConstants_U", "Parent" : "704"},
	{"ID" : "706", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769", "Parent" : "0", "Child" : ["707"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_62_8",
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
			{"Name" : "tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "707", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769.flow_control_loop_pipe_sequential_init_U", "Parent" : "706"},
	{"ID" : "708", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776", "Parent" : "0", "Child" : ["709", "711", "713", "715", "717", "719", "721", "723", "725", "727"],
		"CDFG" : "dpu_pack_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1967", "EstimateLatencyMax" : "3247",
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
					{"ID" : "723", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_14_fu_296", "Port" : "this_0", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "711", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_1_fu_244", "Port" : "this_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "727", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_460_6_fu_312", "Port" : "sk", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "709", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_497_8_fu_234", "Port" : "sk", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "721", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_543_12_fu_286", "Port" : "sk", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "719", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_558_14_fu_277", "Port" : "sk", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "715", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_525_10_fu_260", "Port" : "sk", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "ptrs", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "727", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_460_6_fu_312", "Port" : "ptr", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "709", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_497_8_fu_234", "Port" : "ptr", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "721", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_543_12_fu_286", "Port" : "ptr", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "719", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_558_14_fu_277", "Port" : "ptr", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "715", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_525_10_fu_260", "Port" : "ptr", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_458_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_496_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_523_9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_542_11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state16"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_556_13", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "709", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_497_8_fu_234", "Parent" : "708", "Child" : ["710"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_497_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "227",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_5_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_5_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_497_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "710", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_497_8_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "709"},
	{"ID" : "711", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_1_fu_244", "Parent" : "708", "Child" : ["712"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_95_1",
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
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "idxprom2_i35", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_5_7_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_95_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_1_fu_244.flow_control_loop_pipe_sequential_init_U", "Parent" : "711"},
	{"ID" : "713", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_13_fu_252", "Parent" : "708", "Child" : ["714"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_75_13",
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
			{"Name" : "this_5_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_5_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "714", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_13_fu_252.flow_control_loop_pipe_sequential_init_U", "Parent" : "713"},
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_525_10_fu_260", "Parent" : "708", "Child" : ["716"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_525_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "386", "EstimateLatencyMax" : "386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_5_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_525_10", "PipelineType" : "NotSupport"}]},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_525_10_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "715"},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_15_fu_269", "Parent" : "708", "Child" : ["718"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_75_15",
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
			{"Name" : "this_5_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_5_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_15_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "717"},
	{"ID" : "719", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_558_14_fu_277", "Parent" : "708", "Child" : ["720"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_558_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_5_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_558_14", "PipelineType" : "NotSupport"}]},
	{"ID" : "720", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_558_14_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "719"},
	{"ID" : "721", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_543_12_fu_286", "Parent" : "708", "Child" : ["722"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_543_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "386", "EstimateLatencyMax" : "386",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_5_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_5_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_543_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "722", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_543_12_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "721"},
	{"ID" : "723", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_14_fu_296", "Parent" : "708", "Child" : ["724"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_95_14",
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
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "idxprom2_i53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_5_11_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_95_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "724", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_14_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "723"},
	{"ID" : "725", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_1_fu_304", "Parent" : "708", "Child" : ["726"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_75_1",
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
			{"Name" : "this_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_5_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "726", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_1_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "725"},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_460_6_fu_312", "Parent" : "708", "Child" : ["728"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_460_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "226", "EstimateLatencyMax" : "226",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_5_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_460_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "728", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_460_6_fu_312.flow_control_loop_pipe_sequential_init_U", "Parent" : "727"}]}


set ArgLastReadFirstWriteLatency {
	dpu_keygen {
		pk {Type IO LastRead 4 FirstWrite -1}
		sk {Type IO LastRead 7 FirstWrite -1}
		seedbuf {Type IO LastRead 4 FirstWrite -1}
		zetas {Type I LastRead -1 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}
		ptr {Type IO LastRead -1 FirstWrite -1}}
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
		type_r {Type I LastRead 0 FirstWrite -1}}
	dpu_keygen_Pipeline_VITIS_LOOP_40_1 {
		p_out {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_41_2 {
		p_out {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_321_1 {
		spu_s {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4 {
		dpu_pMem {Type O LastRead -1 FirstWrite 1}
		zetas {Type I LastRead 0 FirstWrite -1}}
	shake_absorb_1 {
		this_s {Type IO LastRead 13 FirstWrite 4}
		mode {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 4 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_1_Pipeline_VITIS_LOOP_369_4 {
		select_ln368 {Type I LastRead 0 FirstWrite -1}
		m_cast {Type I LastRead 0 FirstWrite -1}
		trunc_ln340_2 {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 4 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 4}}
	shake_absorb_1_Pipeline_VITIS_LOOP_376_5 {
		div {Type I LastRead 0 FirstWrite -1}
		add_ln13_2 {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 4 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 4}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_1_Pipeline_VITIS_LOOP_383_6 {
		t {Type O LastRead -1 FirstWrite 0}}
	shake_absorb_1_Pipeline_VITIS_LOOP_385_7 {
		sext_ln340 {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		add_ln13_2 {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 0 FirstWrite -1}
		t {Type O LastRead -1 FirstWrite 1}}
	shake_absorb_1_Pipeline_VITIS_LOOP_12_1 {
		t {Type I LastRead 0 FirstWrite -1}
		r_out {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6 {
		dpu_pMem {Type O LastRead -1 FirstWrite 1}
		zetas {Type I LastRead 0 FirstWrite -1}}
	dpu_keygen_Pipeline_VITIS_LOOP_54_7 {
		this_pMem_load {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_55_8 {
		this_pMem_load_3 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_56_9 {
		this_pMem_load_4 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}}
	shake_squeeze_2 {
		this_s {Type IO LastRead 13 FirstWrite 14}
		seedbuf {Type O LastRead -1 FirstWrite 3}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	dpu_keygen_Pipeline_VITIS_LOOP_321_16 {
		spu_s {Type O LastRead -1 FirstWrite 0}}
	shake_absorb {
		this_s {Type IO LastRead 16 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_Pipeline_VITIS_LOOP_351_1 {
		zext_ln349 {Type I LastRead 0 FirstWrite -1}
		p_read2_cast {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		t {Type O LastRead -1 FirstWrite 1}}
	shake_absorb_Pipeline_VITIS_LOOP_12_1 {
		t {Type I LastRead 0 FirstWrite -1}
		r_out {Type O LastRead -1 FirstWrite 0}}
	shake_absorb_Pipeline_VITIS_LOOP_360_2 {
		select_ln13_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln13_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln361_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln342_2 {Type I LastRead 0 FirstWrite -1}
		this_s {Type IO LastRead 1 FirstWrite 2}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_Pipeline_VITIS_LOOP_369_4 {
		select_ln13_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln13_38 {Type I LastRead 0 FirstWrite -1}
		zext_ln368 {Type I LastRead 0 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 1}}
	shake_absorb_Pipeline_VITIS_LOOP_376_5 {
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		select_ln13_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln13_38 {Type I LastRead 0 FirstWrite -1}
		zext_ln368 {Type I LastRead 0 FirstWrite -1}
		trunc_ln7 {Type I LastRead 0 FirstWrite -1}
		this_s {Type IO LastRead 1 FirstWrite 2}}
	shake_absorb_Pipeline_VITIS_LOOP_383_6 {
		t {Type O LastRead -1 FirstWrite 0}}
	shake_absorb_Pipeline_VITIS_LOOP_385_7 {
		sext_ln340_1 {Type I LastRead 0 FirstWrite -1}
		phi_ln340_1 {Type I LastRead 0 FirstWrite -1}
		p_read2_cast {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		t {Type O LastRead -1 FirstWrite 0}}
	shake_absorb_Pipeline_VITIS_LOOP_12_12 {
		t {Type I LastRead 0 FirstWrite -1}
		r_3_out {Type O LastRead -1 FirstWrite 0}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	dpu_keygen_Pipeline_VITIS_LOOP_417_2 {
		spu_s {Type I LastRead 0 FirstWrite -1}
		buf_r {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_503_2 {
		ctr {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		tmp1 {Type O LastRead -1 FirstWrite 3}
		ctr_1_out {Type O LastRead -1 FirstWrite 2}}
	dpu_keygen_Pipeline_VITIS_LOOP_99_1 {
		this_pMem_load_8 {Type I LastRead 0 FirstWrite -1}
		tmp1 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	sample_eta {
		this_s {Type IO LastRead 16 FirstWrite -1}
		a {Type O LastRead -1 FirstWrite 2}
		seedbuf {Type I LastRead 4 FirstWrite -1}
		nonce {Type I LastRead 0 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_1 {
		this_s {Type IO LastRead 13 FirstWrite 4}
		mode {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 4 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_1_Pipeline_VITIS_LOOP_369_4 {
		select_ln368 {Type I LastRead 0 FirstWrite -1}
		m_cast {Type I LastRead 0 FirstWrite -1}
		trunc_ln340_2 {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 4 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 4}}
	shake_absorb_1_Pipeline_VITIS_LOOP_376_5 {
		div {Type I LastRead 0 FirstWrite -1}
		add_ln13_2 {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 4 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 4}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_1_Pipeline_VITIS_LOOP_383_6 {
		t {Type O LastRead -1 FirstWrite 0}}
	shake_absorb_1_Pipeline_VITIS_LOOP_385_7 {
		sext_ln340 {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		add_ln13_2 {Type I LastRead 0 FirstWrite -1}
		seedbuf {Type I LastRead 0 FirstWrite -1}
		t {Type O LastRead -1 FirstWrite 1}}
	shake_absorb_1_Pipeline_VITIS_LOOP_12_1 {
		t {Type I LastRead 0 FirstWrite -1}
		r_out {Type O LastRead -1 FirstWrite 0}}
	shake_absorb {
		this_s {Type IO LastRead 16 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_Pipeline_VITIS_LOOP_351_1 {
		zext_ln349 {Type I LastRead 0 FirstWrite -1}
		p_read2_cast {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		t {Type O LastRead -1 FirstWrite 1}}
	shake_absorb_Pipeline_VITIS_LOOP_12_1 {
		t {Type I LastRead 0 FirstWrite -1}
		r_out {Type O LastRead -1 FirstWrite 0}}
	shake_absorb_Pipeline_VITIS_LOOP_360_2 {
		select_ln13_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln13_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln361_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln342_2 {Type I LastRead 0 FirstWrite -1}
		this_s {Type IO LastRead 1 FirstWrite 2}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_Pipeline_VITIS_LOOP_369_4 {
		select_ln13_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln13_38 {Type I LastRead 0 FirstWrite -1}
		zext_ln368 {Type I LastRead 0 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 1}}
	shake_absorb_Pipeline_VITIS_LOOP_376_5 {
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		select_ln13_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln13_38 {Type I LastRead 0 FirstWrite -1}
		zext_ln368 {Type I LastRead 0 FirstWrite -1}
		trunc_ln7 {Type I LastRead 0 FirstWrite -1}
		this_s {Type IO LastRead 1 FirstWrite 2}}
	shake_absorb_Pipeline_VITIS_LOOP_383_6 {
		t {Type O LastRead -1 FirstWrite 0}}
	shake_absorb_Pipeline_VITIS_LOOP_385_7 {
		sext_ln340_1 {Type I LastRead 0 FirstWrite -1}
		phi_ln340_1 {Type I LastRead 0 FirstWrite -1}
		p_read2_cast {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		t {Type O LastRead -1 FirstWrite 0}}
	shake_absorb_Pipeline_VITIS_LOOP_12_12 {
		t {Type I LastRead 0 FirstWrite -1}
		r_3_out {Type O LastRead -1 FirstWrite 0}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	sample_eta_Pipeline_VITIS_LOOP_417_2 {
		this_s {Type I LastRead 0 FirstWrite -1}
		buf_r {Type O LastRead -1 FirstWrite 1}}
	sample_eta_Pipeline_VITIS_LOOP_533_2 {
		ctr {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 1 FirstWrite -1}
		a {Type O LastRead -1 FirstWrite 2}
		ctr_1_out {Type O LastRead -1 FirstWrite 2}}
	dpu_keygen_Pipeline_VITIS_LOOP_99_17 {
		this_pMem_load_5 {Type I LastRead 0 FirstWrite -1}
		tmp2 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_99_18 {
		this_pMem_load_7 {Type I LastRead 0 FirstWrite -1}
		tmp2 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_55_5 {
		seedbuf {Type I LastRead 0 FirstWrite -1}
		pk {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_321_110 {
		spu_s {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_99_19 {
		this_pMem_load_6 {Type I LastRead 0 FirstWrite -1}
		dpu_pMem {Type O LastRead -1 FirstWrite 1}
		idxprom2_i49_cast {Type I LastRead 0 FirstWrite -1}
		tmp3 {Type I LastRead 0 FirstWrite -1}}
	dpu_keygen_Pipeline_VITIS_LOOP_60_6 {
		seedbuf {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_61_7 {
		seedbuf {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 1}}
	dpu_pack {
		this_0 {Type I LastRead 1 FirstWrite -1}
		pk {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_Pipeline_VITIS_LOOP_75_1 {
		this_5_0 {Type I LastRead 0 FirstWrite -1}
		this_0_load {Type I LastRead 0 FirstWrite -1}
		this_5_1_out {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_Pipeline_VITIS_LOOP_433_2 {
		this_5_1_reload {Type I LastRead 0 FirstWrite -1}
		pk {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	shake_absorb_3 {
		this_s {Type IO LastRead 13 FirstWrite 4}
		pk {Type I LastRead 4 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_absorb_3_Pipeline_VITIS_LOOP_369_4 {
		idx98 {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 4 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 4}}
	shake_absorb_3_Pipeline_VITIS_LOOP_376_5 {
		pk {Type I LastRead 4 FirstWrite -1}
		this_s {Type IO LastRead 0 FirstWrite 4}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	shake_squeeze {
		this_s {Type IO LastRead 13 FirstWrite 14}
		out_r {Type O LastRead -1 FirstWrite 3}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePermute {
		this_s {Type IO LastRead 13 FirstWrite 14}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	dpu_keygen_Pipeline_VITIS_LOOP_62_8 {
		tr {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_4 {
		this_0 {Type IO LastRead 2 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}
		sk {Type IO LastRead 7 FirstWrite -1}
		ptrs {Type I LastRead 0 FirstWrite -1}
		type_r {Type I LastRead 0 FirstWrite -1}
		itr {Type I LastRead 0 FirstWrite -1}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_497_8 {
		this_5_6 {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 7 FirstWrite -1}
		this_5_7_out {Type O LastRead -1 FirstWrite 1}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_95_1 {
		this_0 {Type O LastRead -1 FirstWrite 0}
		idxprom2_i35 {Type I LastRead 0 FirstWrite -1}
		this_5_7_reload {Type I LastRead 0 FirstWrite -1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_75_13 {
		this_5_8 {Type I LastRead 0 FirstWrite -1}
		this_0_load_2 {Type I LastRead 0 FirstWrite -1}
		this_5_9_out {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_525_10 {
		this_5_9_reload {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_75_15 {
		this_5_12 {Type I LastRead 0 FirstWrite -1}
		this_0_load_1 {Type I LastRead 0 FirstWrite -1}
		this_5_13_out {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_558_14 {
		this_5_13_reload {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_543_12 {
		this_5_10 {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 3 FirstWrite -1}
		this_5_11_out {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_95_14 {
		this_0 {Type O LastRead -1 FirstWrite 0}
		idxprom2_i53 {Type I LastRead 0 FirstWrite -1}
		this_5_11_reload {Type I LastRead 0 FirstWrite -1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_75_1 {
		this_5_4 {Type I LastRead 0 FirstWrite -1}
		this_0_load {Type I LastRead 0 FirstWrite -1}
		this_5_5_out {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_460_6 {
		this_5_5_reload {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk { ap_memory {  { pk_address0 mem_address 1 11 }  { pk_ce0 mem_ce 1 1 }  { pk_we0 mem_we 1 1 }  { pk_d0 mem_din 1 8 }  { pk_q0 mem_dout 0 8 }  { pk_address1 MemPortADDR2 1 11 }  { pk_ce1 MemPortCE2 1 1 }  { pk_we1 MemPortWE2 1 1 }  { pk_d1 MemPortDIN2 1 8 }  { pk_q1 MemPortDOUT2 0 8 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 12 }  { sk_ce0 mem_ce 1 1 }  { sk_we0 mem_we 1 1 }  { sk_d0 mem_din 1 8 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 12 }  { sk_ce1 MemPortCE2 1 1 }  { sk_we1 MemPortWE2 1 1 }  { sk_d1 MemPortDIN2 1 8 }  { sk_q1 MemPortDOUT2 0 8 } } }
	seedbuf { ap_memory {  { seedbuf_address0 mem_address 1 7 }  { seedbuf_ce0 mem_ce 1 1 }  { seedbuf_we0 mem_we 1 1 }  { seedbuf_d0 mem_din 1 8 }  { seedbuf_q0 mem_dout 0 8 }  { seedbuf_address1 MemPortADDR2 1 7 }  { seedbuf_ce1 MemPortCE2 1 1 }  { seedbuf_we1 MemPortWE2 1 1 }  { seedbuf_d1 MemPortDIN2 1 8 }  { seedbuf_q1 MemPortDOUT2 0 8 } } }
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
