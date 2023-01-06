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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "571", "573", "575", "577", "579", "593", "595", "597", "599", "601", "604", "606", "626", "628", "630", "631", "633", "674", "676", "678", "680", "682", "684", "686", "688", "693", "700", "703", "705"],
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
					{"ID" : "688", "SubInstance" : "grp_dpu_pack_fu_756", "Port" : "pk", "Inst_start_state" : "58", "Inst_end_state" : "59"},
					{"ID" : "693", "SubInstance" : "grp_shake_absorb_3_fu_765", "Port" : "pk", "Inst_start_state" : "60", "Inst_end_state" : "61"},
					{"ID" : "678", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_56_1_fu_718", "Port" : "pk", "Inst_start_state" : "39", "Inst_end_state" : "43"}]},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "703", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_63_4_fu_782", "Port" : "sk", "Inst_start_state" : "66", "Inst_end_state" : "67"},
					{"ID" : "684", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_61_2_fu_740", "Port" : "sk", "Inst_start_state" : "44", "Inst_end_state" : "45"},
					{"ID" : "686", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_62_3_fu_748", "Port" : "sk", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "705", "SubInstance" : "grp_dpu_pack_4_fu_789", "Port" : "sk", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "684", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_61_2_fu_740", "Port" : "seedbuf", "Inst_start_state" : "44", "Inst_end_state" : "45"},
					{"ID" : "579", "SubInstance" : "grp_shake_absorb_1_fu_593", "Port" : "seedbuf", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "633", "SubInstance" : "grp_sample_eta_fu_689", "Port" : "seedbuf", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "601", "SubInstance" : "grp_shake_squeeze_2_fu_634", "Port" : "seedbuf", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "686", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_62_3_fu_748", "Port" : "seedbuf", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "678", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_56_1_fu_718", "Port" : "seedbuf", "Inst_start_state" : "39", "Inst_end_state" : "43"}]},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "593", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_607", "Port" : "zetas", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "577", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_586", "Port" : "zetas", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "626", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_658", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "579", "SubInstance" : "grp_shake_absorb_1_fu_593", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "633", "SubInstance" : "grp_sample_eta_fu_689", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "601", "SubInstance" : "grp_shake_squeeze_2_fu_634", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "606", "SubInstance" : "grp_shake_absorb_fu_648", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "693", "SubInstance" : "grp_shake_absorb_3_fu_765", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "60", "Inst_end_state" : "61"},
					{"ID" : "700", "SubInstance" : "grp_shake_squeeze_fu_774", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "64", "Inst_end_state" : "65"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "688", "SubInstance" : "grp_dpu_pack_fu_756", "Port" : "ptr", "Inst_start_state" : "58", "Inst_end_state" : "59"},
					{"ID" : "705", "SubInstance" : "grp_dpu_pack_4_fu_789", "Port" : "ptr", "Inst_start_state" : "72", "Inst_end_state" : "73"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_500_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "73", "FirstState" : "ap_ST_fsm_state24", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state24"], "PreState" : ["ap_ST_fsm_state23"], "PostState" : ["ap_ST_fsm_state32"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "SAMPA_LOOP0_SAMPA_LOOP1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "73", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state34"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state35"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "SAMPETA_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "73", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state38"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state39"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "SAMPETA_LOOP1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "73", "FirstState" : "ap_ST_fsm_state39", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state39"], "PreState" : ["ap_ST_fsm_state35"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dpu_pMem_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.spu_s_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tr_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468", "Parent" : "0", "Child" : ["7", "266", "268", "270", "272", "274", "276", "278", "280", "282", "284", "286", "288", "290", "292", "294", "296", "298", "300", "302", "304", "306", "308", "310", "312", "314"],
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
					{"ID" : "274", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "7", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "280", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025", "Port" : "this_pMem", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "296", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150", "Port" : "this_pMem", "Inst_start_state" : "55", "Inst_end_state" : "56"},
					{"ID" : "302", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194", "Port" : "this_pMem", "Inst_start_state" : "69", "Inst_end_state" : "70"},
					{"ID" : "298", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164", "Port" : "this_pMem", "Inst_start_state" : "57", "Inst_end_state" : "58"},
					{"ID" : "286", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073", "Port" : "this_pMem", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "284", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "306", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224", "Port" : "this_pMem", "Inst_start_state" : "88", "Inst_end_state" : "89"},
					{"ID" : "308", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239", "Port" : "this_pMem", "Inst_start_state" : "92", "Inst_end_state" : "93"},
					{"ID" : "310", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253", "Port" : "this_pMem", "Inst_start_state" : "96", "Inst_end_state" : "97"},
					{"ID" : "272", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "72"},
					{"ID" : "290", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101", "Port" : "this_pMem", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "268", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "48"},
					{"ID" : "266", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "270", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939", "Port" : "this_pMem", "Inst_start_state" : "1", "Inst_end_state" : "60"},
					{"ID" : "276", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997", "Port" : "this_pMem", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "282", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041", "Port" : "this_pMem", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "288", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087", "Port" : "this_pMem", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "304", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210", "Port" : "this_pMem", "Inst_start_state" : "84", "Inst_end_state" : "85"},
					{"ID" : "312", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267", "Port" : "this_pMem", "Inst_start_state" : "98", "Inst_end_state" : "99"},
					{"ID" : "278", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011", "Port" : "this_pMem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "300", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180", "Port" : "this_pMem", "Inst_start_state" : "67", "Inst_end_state" : "68"},
					{"ID" : "294", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136", "Port" : "this_pMem", "Inst_start_state" : "51", "Inst_end_state" : "52"},
					{"ID" : "292", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116", "Port" : "this_pMem", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878", "Parent" : "6", "Child" : ["8", "265"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194", "Parent" : "7", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U109", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U110", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U111", "Parent" : "8"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U112", "Parent" : "8"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U113", "Parent" : "8"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U114", "Parent" : "8"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U115", "Parent" : "8"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U116", "Parent" : "8"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U117", "Parent" : "8"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U118", "Parent" : "8"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U119", "Parent" : "8"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U120", "Parent" : "8"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U121", "Parent" : "8"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U122", "Parent" : "8"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U123", "Parent" : "8"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U124", "Parent" : "8"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U125", "Parent" : "8"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U126", "Parent" : "8"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U127", "Parent" : "8"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U128", "Parent" : "8"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U129", "Parent" : "8"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U130", "Parent" : "8"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U131", "Parent" : "8"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U132", "Parent" : "8"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U133", "Parent" : "8"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U134", "Parent" : "8"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U135", "Parent" : "8"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U136", "Parent" : "8"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U137", "Parent" : "8"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U138", "Parent" : "8"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U139", "Parent" : "8"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U140", "Parent" : "8"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U141", "Parent" : "8"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U142", "Parent" : "8"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U143", "Parent" : "8"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U144", "Parent" : "8"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U145", "Parent" : "8"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U146", "Parent" : "8"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U147", "Parent" : "8"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U148", "Parent" : "8"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U149", "Parent" : "8"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U150", "Parent" : "8"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U151", "Parent" : "8"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U152", "Parent" : "8"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U153", "Parent" : "8"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U154", "Parent" : "8"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U155", "Parent" : "8"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U156", "Parent" : "8"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U157", "Parent" : "8"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U158", "Parent" : "8"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U159", "Parent" : "8"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U160", "Parent" : "8"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U161", "Parent" : "8"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U162", "Parent" : "8"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U163", "Parent" : "8"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U164", "Parent" : "8"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U165", "Parent" : "8"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U166", "Parent" : "8"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U167", "Parent" : "8"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U168", "Parent" : "8"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U169", "Parent" : "8"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U170", "Parent" : "8"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U171", "Parent" : "8"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U172", "Parent" : "8"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U173", "Parent" : "8"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U174", "Parent" : "8"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U175", "Parent" : "8"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U176", "Parent" : "8"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U177", "Parent" : "8"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U178", "Parent" : "8"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U179", "Parent" : "8"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U180", "Parent" : "8"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U181", "Parent" : "8"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U182", "Parent" : "8"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U183", "Parent" : "8"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U184", "Parent" : "8"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U185", "Parent" : "8"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U186", "Parent" : "8"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U187", "Parent" : "8"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U188", "Parent" : "8"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U189", "Parent" : "8"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U190", "Parent" : "8"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U191", "Parent" : "8"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U192", "Parent" : "8"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U193", "Parent" : "8"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U194", "Parent" : "8"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U195", "Parent" : "8"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U196", "Parent" : "8"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U197", "Parent" : "8"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U198", "Parent" : "8"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U199", "Parent" : "8"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U200", "Parent" : "8"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U201", "Parent" : "8"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U202", "Parent" : "8"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U203", "Parent" : "8"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U204", "Parent" : "8"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U205", "Parent" : "8"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U206", "Parent" : "8"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U207", "Parent" : "8"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U208", "Parent" : "8"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U209", "Parent" : "8"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U210", "Parent" : "8"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U211", "Parent" : "8"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U212", "Parent" : "8"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U213", "Parent" : "8"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U214", "Parent" : "8"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U215", "Parent" : "8"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U216", "Parent" : "8"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U217", "Parent" : "8"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U218", "Parent" : "8"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U219", "Parent" : "8"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U220", "Parent" : "8"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U221", "Parent" : "8"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U222", "Parent" : "8"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U223", "Parent" : "8"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U224", "Parent" : "8"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U225", "Parent" : "8"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U226", "Parent" : "8"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U227", "Parent" : "8"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U228", "Parent" : "8"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U229", "Parent" : "8"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U230", "Parent" : "8"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U231", "Parent" : "8"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U232", "Parent" : "8"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U233", "Parent" : "8"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U234", "Parent" : "8"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U235", "Parent" : "8"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U236", "Parent" : "8"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U237", "Parent" : "8"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U238", "Parent" : "8"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U239", "Parent" : "8"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U240", "Parent" : "8"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U241", "Parent" : "8"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U242", "Parent" : "8"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U243", "Parent" : "8"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U244", "Parent" : "8"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U245", "Parent" : "8"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U246", "Parent" : "8"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U247", "Parent" : "8"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U248", "Parent" : "8"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U249", "Parent" : "8"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U250", "Parent" : "8"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U251", "Parent" : "8"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U252", "Parent" : "8"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U253", "Parent" : "8"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U254", "Parent" : "8"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U255", "Parent" : "8"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U256", "Parent" : "8"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U257", "Parent" : "8"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U258", "Parent" : "8"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U259", "Parent" : "8"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U260", "Parent" : "8"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U261", "Parent" : "8"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U262", "Parent" : "8"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U263", "Parent" : "8"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U264", "Parent" : "8"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U265", "Parent" : "8"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U266", "Parent" : "8"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U267", "Parent" : "8"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U268", "Parent" : "8"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U269", "Parent" : "8"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U270", "Parent" : "8"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U271", "Parent" : "8"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U272", "Parent" : "8"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U273", "Parent" : "8"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U274", "Parent" : "8"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U275", "Parent" : "8"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U276", "Parent" : "8"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U277", "Parent" : "8"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U278", "Parent" : "8"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U279", "Parent" : "8"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U280", "Parent" : "8"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U281", "Parent" : "8"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U282", "Parent" : "8"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U283", "Parent" : "8"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U284", "Parent" : "8"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U285", "Parent" : "8"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U286", "Parent" : "8"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U287", "Parent" : "8"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U288", "Parent" : "8"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U289", "Parent" : "8"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U290", "Parent" : "8"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U291", "Parent" : "8"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U292", "Parent" : "8"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U293", "Parent" : "8"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U294", "Parent" : "8"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U295", "Parent" : "8"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U296", "Parent" : "8"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U297", "Parent" : "8"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U298", "Parent" : "8"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U299", "Parent" : "8"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U300", "Parent" : "8"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U301", "Parent" : "8"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U302", "Parent" : "8"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U303", "Parent" : "8"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U304", "Parent" : "8"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U305", "Parent" : "8"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U306", "Parent" : "8"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U307", "Parent" : "8"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U308", "Parent" : "8"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U309", "Parent" : "8"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U310", "Parent" : "8"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U311", "Parent" : "8"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U312", "Parent" : "8"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U313", "Parent" : "8"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U314", "Parent" : "8"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U315", "Parent" : "8"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U316", "Parent" : "8"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U317", "Parent" : "8"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U318", "Parent" : "8"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U319", "Parent" : "8"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U320", "Parent" : "8"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U321", "Parent" : "8"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U322", "Parent" : "8"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U323", "Parent" : "8"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U324", "Parent" : "8"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U325", "Parent" : "8"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U326", "Parent" : "8"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U327", "Parent" : "8"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U328", "Parent" : "8"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U329", "Parent" : "8"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U330", "Parent" : "8"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U331", "Parent" : "8"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U332", "Parent" : "8"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U333", "Parent" : "8"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U334", "Parent" : "8"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U335", "Parent" : "8"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U336", "Parent" : "8"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U337", "Parent" : "8"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U338", "Parent" : "8"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U339", "Parent" : "8"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U340", "Parent" : "8"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U341", "Parent" : "8"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U342", "Parent" : "8"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U343", "Parent" : "8"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U344", "Parent" : "8"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U345", "Parent" : "8"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U346", "Parent" : "8"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U347", "Parent" : "8"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U348", "Parent" : "8"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U349", "Parent" : "8"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U350", "Parent" : "8"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U351", "Parent" : "8"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U352", "Parent" : "8"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U353", "Parent" : "8"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U354", "Parent" : "8"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U355", "Parent" : "8"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U356", "Parent" : "8"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U357", "Parent" : "8"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U358", "Parent" : "8"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U359", "Parent" : "8"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U360", "Parent" : "8"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U361", "Parent" : "8"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U362", "Parent" : "8"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U363", "Parent" : "8"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.grp_dpu_unit_fu_194.mul_32s_32s_64_1_0_U364", "Parent" : "8"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_878.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900", "Parent" : "6", "Child" : ["267"],
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
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_900.flow_control_loop_pipe_sequential_init_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920", "Parent" : "6", "Child" : ["269"],
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
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_920.flow_control_loop_pipe_sequential_init_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939", "Parent" : "6", "Child" : ["271"],
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
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_939.flow_control_loop_pipe_sequential_init_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959", "Parent" : "6", "Child" : ["273"],
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
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_959.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982", "Parent" : "6", "Child" : ["275"],
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
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_982.flow_control_loop_pipe_sequential_init_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997", "Parent" : "6", "Child" : ["277"],
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
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_997.flow_control_loop_pipe_sequential_init_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011", "Parent" : "6", "Child" : ["279"],
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
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_1011.flow_control_loop_pipe_sequential_init_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025", "Parent" : "6", "Child" : ["281"],
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
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_1025.flow_control_loop_pipe_sequential_init_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041", "Parent" : "6", "Child" : ["283"],
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
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_1041.flow_control_loop_pipe_sequential_init_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057", "Parent" : "6", "Child" : ["285"],
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
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_1057.flow_control_loop_pipe_sequential_init_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073", "Parent" : "6", "Child" : ["287"],
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
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_1073.flow_control_loop_pipe_sequential_init_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087", "Parent" : "6", "Child" : ["289"],
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
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_1087.flow_control_loop_pipe_sequential_init_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101", "Parent" : "6", "Child" : ["291"],
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
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_1101.flow_control_loop_pipe_sequential_init_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116", "Parent" : "6", "Child" : ["293"],
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
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_1116.flow_control_loop_pipe_sequential_init_U", "Parent" : "292"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136", "Parent" : "6", "Child" : ["295"],
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
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_1136.flow_control_loop_pipe_sequential_init_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150", "Parent" : "6", "Child" : ["297"],
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
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1150.flow_control_loop_pipe_sequential_init_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164", "Parent" : "6", "Child" : ["299"],
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
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1164.flow_control_loop_pipe_sequential_init_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180", "Parent" : "6", "Child" : ["301"],
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
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1180.flow_control_loop_pipe_sequential_init_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194", "Parent" : "6", "Child" : ["303"],
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
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1194.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210", "Parent" : "6", "Child" : ["305"],
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
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1210.flow_control_loop_pipe_sequential_init_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224", "Parent" : "6", "Child" : ["307"],
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
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1224.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239", "Parent" : "6", "Child" : ["309"],
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
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1239.flow_control_loop_pipe_sequential_init_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253", "Parent" : "6", "Child" : ["311"],
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
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1253.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267", "Parent" : "6", "Child" : ["313"],
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
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1267.flow_control_loop_pipe_sequential_init_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995", "Parent" : "6", "Child" : ["315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570"],
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
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U109", "Parent" : "314"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U110", "Parent" : "314"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U111", "Parent" : "314"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U112", "Parent" : "314"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U113", "Parent" : "314"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U114", "Parent" : "314"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U115", "Parent" : "314"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U116", "Parent" : "314"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U117", "Parent" : "314"},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U118", "Parent" : "314"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U119", "Parent" : "314"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U120", "Parent" : "314"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U121", "Parent" : "314"},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U122", "Parent" : "314"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U123", "Parent" : "314"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U124", "Parent" : "314"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U125", "Parent" : "314"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U126", "Parent" : "314"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U127", "Parent" : "314"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U128", "Parent" : "314"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U129", "Parent" : "314"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U130", "Parent" : "314"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U131", "Parent" : "314"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U132", "Parent" : "314"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U133", "Parent" : "314"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U134", "Parent" : "314"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U135", "Parent" : "314"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U136", "Parent" : "314"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U137", "Parent" : "314"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U138", "Parent" : "314"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U139", "Parent" : "314"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U140", "Parent" : "314"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U141", "Parent" : "314"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U142", "Parent" : "314"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U143", "Parent" : "314"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U144", "Parent" : "314"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U145", "Parent" : "314"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U146", "Parent" : "314"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U147", "Parent" : "314"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U148", "Parent" : "314"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U149", "Parent" : "314"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U150", "Parent" : "314"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U151", "Parent" : "314"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U152", "Parent" : "314"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U153", "Parent" : "314"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U154", "Parent" : "314"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U155", "Parent" : "314"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U156", "Parent" : "314"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U157", "Parent" : "314"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U158", "Parent" : "314"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U159", "Parent" : "314"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U160", "Parent" : "314"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U161", "Parent" : "314"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U162", "Parent" : "314"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U163", "Parent" : "314"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U164", "Parent" : "314"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U165", "Parent" : "314"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U166", "Parent" : "314"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U167", "Parent" : "314"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U168", "Parent" : "314"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U169", "Parent" : "314"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U170", "Parent" : "314"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U171", "Parent" : "314"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U172", "Parent" : "314"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U173", "Parent" : "314"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U174", "Parent" : "314"},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U175", "Parent" : "314"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U176", "Parent" : "314"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U177", "Parent" : "314"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U178", "Parent" : "314"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U179", "Parent" : "314"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U180", "Parent" : "314"},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U181", "Parent" : "314"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U182", "Parent" : "314"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U183", "Parent" : "314"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U184", "Parent" : "314"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U185", "Parent" : "314"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U186", "Parent" : "314"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U187", "Parent" : "314"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U188", "Parent" : "314"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U189", "Parent" : "314"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U190", "Parent" : "314"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U191", "Parent" : "314"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U192", "Parent" : "314"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U193", "Parent" : "314"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U194", "Parent" : "314"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U195", "Parent" : "314"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U196", "Parent" : "314"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U197", "Parent" : "314"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U198", "Parent" : "314"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U199", "Parent" : "314"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U200", "Parent" : "314"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U201", "Parent" : "314"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U202", "Parent" : "314"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U203", "Parent" : "314"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U204", "Parent" : "314"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U205", "Parent" : "314"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U206", "Parent" : "314"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U207", "Parent" : "314"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U208", "Parent" : "314"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U209", "Parent" : "314"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U210", "Parent" : "314"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U211", "Parent" : "314"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U212", "Parent" : "314"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U213", "Parent" : "314"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U214", "Parent" : "314"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U215", "Parent" : "314"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U216", "Parent" : "314"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U217", "Parent" : "314"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U218", "Parent" : "314"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U219", "Parent" : "314"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U220", "Parent" : "314"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U221", "Parent" : "314"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U222", "Parent" : "314"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U223", "Parent" : "314"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U224", "Parent" : "314"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U225", "Parent" : "314"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U226", "Parent" : "314"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U227", "Parent" : "314"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U228", "Parent" : "314"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U229", "Parent" : "314"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U230", "Parent" : "314"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U231", "Parent" : "314"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U232", "Parent" : "314"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U233", "Parent" : "314"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U234", "Parent" : "314"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U235", "Parent" : "314"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U236", "Parent" : "314"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U237", "Parent" : "314"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U238", "Parent" : "314"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U239", "Parent" : "314"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U240", "Parent" : "314"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U241", "Parent" : "314"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U242", "Parent" : "314"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U243", "Parent" : "314"},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U244", "Parent" : "314"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U245", "Parent" : "314"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U246", "Parent" : "314"},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U247", "Parent" : "314"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U248", "Parent" : "314"},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U249", "Parent" : "314"},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U250", "Parent" : "314"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U251", "Parent" : "314"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U252", "Parent" : "314"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U253", "Parent" : "314"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U254", "Parent" : "314"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U255", "Parent" : "314"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U256", "Parent" : "314"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U257", "Parent" : "314"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U258", "Parent" : "314"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U259", "Parent" : "314"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U260", "Parent" : "314"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U261", "Parent" : "314"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U262", "Parent" : "314"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U263", "Parent" : "314"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U264", "Parent" : "314"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U265", "Parent" : "314"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U266", "Parent" : "314"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U267", "Parent" : "314"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U268", "Parent" : "314"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U269", "Parent" : "314"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U270", "Parent" : "314"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U271", "Parent" : "314"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U272", "Parent" : "314"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U273", "Parent" : "314"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U274", "Parent" : "314"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U275", "Parent" : "314"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U276", "Parent" : "314"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U277", "Parent" : "314"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U278", "Parent" : "314"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U279", "Parent" : "314"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U280", "Parent" : "314"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U281", "Parent" : "314"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U282", "Parent" : "314"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U283", "Parent" : "314"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U284", "Parent" : "314"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U285", "Parent" : "314"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U286", "Parent" : "314"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U287", "Parent" : "314"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U288", "Parent" : "314"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U289", "Parent" : "314"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U290", "Parent" : "314"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U291", "Parent" : "314"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U292", "Parent" : "314"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U293", "Parent" : "314"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U294", "Parent" : "314"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U295", "Parent" : "314"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U296", "Parent" : "314"},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U297", "Parent" : "314"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U298", "Parent" : "314"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U299", "Parent" : "314"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U300", "Parent" : "314"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U301", "Parent" : "314"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U302", "Parent" : "314"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U303", "Parent" : "314"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U304", "Parent" : "314"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U305", "Parent" : "314"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U306", "Parent" : "314"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U307", "Parent" : "314"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U308", "Parent" : "314"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U309", "Parent" : "314"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U310", "Parent" : "314"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U311", "Parent" : "314"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U312", "Parent" : "314"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U313", "Parent" : "314"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U314", "Parent" : "314"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U315", "Parent" : "314"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U316", "Parent" : "314"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U317", "Parent" : "314"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U318", "Parent" : "314"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U319", "Parent" : "314"},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U320", "Parent" : "314"},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U321", "Parent" : "314"},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U322", "Parent" : "314"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U323", "Parent" : "314"},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U324", "Parent" : "314"},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U325", "Parent" : "314"},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U326", "Parent" : "314"},
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U327", "Parent" : "314"},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U328", "Parent" : "314"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U329", "Parent" : "314"},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U330", "Parent" : "314"},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U331", "Parent" : "314"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U332", "Parent" : "314"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U333", "Parent" : "314"},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U334", "Parent" : "314"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U335", "Parent" : "314"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U336", "Parent" : "314"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U337", "Parent" : "314"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U338", "Parent" : "314"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U339", "Parent" : "314"},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U340", "Parent" : "314"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U341", "Parent" : "314"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U342", "Parent" : "314"},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U343", "Parent" : "314"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U344", "Parent" : "314"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U345", "Parent" : "314"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U346", "Parent" : "314"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U347", "Parent" : "314"},
	{"ID" : "554", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U348", "Parent" : "314"},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U349", "Parent" : "314"},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U350", "Parent" : "314"},
	{"ID" : "557", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U351", "Parent" : "314"},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U352", "Parent" : "314"},
	{"ID" : "559", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U353", "Parent" : "314"},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U354", "Parent" : "314"},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U355", "Parent" : "314"},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U356", "Parent" : "314"},
	{"ID" : "563", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U357", "Parent" : "314"},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U358", "Parent" : "314"},
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U359", "Parent" : "314"},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U360", "Parent" : "314"},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U361", "Parent" : "314"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U362", "Parent" : "314"},
	{"ID" : "569", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U363", "Parent" : "314"},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_468.grp_dpu_unit_fu_2995.mul_32s_32s_64_1_0_U364", "Parent" : "314"},
	{"ID" : "571", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_40_1_fu_570", "Parent" : "0", "Child" : ["572"],
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
	{"ID" : "572", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_40_1_fu_570.flow_control_loop_pipe_sequential_init_U", "Parent" : "571"},
	{"ID" : "573", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_41_2_fu_575", "Parent" : "0", "Child" : ["574"],
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
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_41_2_fu_575.flow_control_loop_pipe_sequential_init_U", "Parent" : "573"},
	{"ID" : "575", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_1_fu_580", "Parent" : "0", "Child" : ["576"],
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
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_1_fu_580.flow_control_loop_pipe_sequential_init_U", "Parent" : "575"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_586", "Parent" : "0", "Child" : ["578"],
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
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_586.flow_control_loop_pipe_sequential_init_U", "Parent" : "577"},
	{"ID" : "579", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593", "Parent" : "0", "Child" : ["580", "581", "583", "585", "587", "589", "591"],
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
					{"ID" : "583", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "585", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "this_s", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "581", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "589", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Port" : "seedbuf", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "583", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "581", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "585", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.t_U", "Parent" : "579"},
	{"ID" : "581", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Parent" : "579", "Child" : ["582"],
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
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "581"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Parent" : "579", "Child" : ["584"],
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
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "583"},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_KeccakF1600_StatePermute_fu_164", "Parent" : "579", "Child" : ["586"],
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
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_KeccakF1600_StatePermute_fu_164.KeccakF_RoundConstants_U", "Parent" : "585"},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172", "Parent" : "579", "Child" : ["588"],
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
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "587"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Parent" : "579", "Child" : ["590"],
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
	{"ID" : "590", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "589"},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187", "Parent" : "579", "Child" : ["592"],
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
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_593.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "591"},
	{"ID" : "593", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_607", "Parent" : "0", "Child" : ["594"],
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
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_607.flow_control_loop_pipe_sequential_init_U", "Parent" : "593"},
	{"ID" : "595", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_54_7_fu_614", "Parent" : "0", "Child" : ["596"],
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
	{"ID" : "596", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_54_7_fu_614.flow_control_loop_pipe_sequential_init_U", "Parent" : "595"},
	{"ID" : "597", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_8_fu_620", "Parent" : "0", "Child" : ["598"],
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
	{"ID" : "598", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_8_fu_620.flow_control_loop_pipe_sequential_init_U", "Parent" : "597"},
	{"ID" : "599", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_9_fu_627", "Parent" : "0", "Child" : ["600"],
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
	{"ID" : "600", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_9_fu_627.flow_control_loop_pipe_sequential_init_U", "Parent" : "599"},
	{"ID" : "601", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_634", "Parent" : "0", "Child" : ["602"],
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
					{"ID" : "602", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "602", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "602", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_634.grp_KeccakF1600_StatePermute_fu_178", "Parent" : "601", "Child" : ["603"],
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
	{"ID" : "603", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_634.grp_KeccakF1600_StatePermute_fu_178.KeccakF_RoundConstants_U", "Parent" : "602"},
	{"ID" : "604", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_16_fu_643", "Parent" : "0", "Child" : ["605"],
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
	{"ID" : "605", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_16_fu_643.flow_control_loop_pipe_sequential_init_U", "Parent" : "604"},
	{"ID" : "606", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648", "Parent" : "0", "Child" : ["607", "608", "610", "612", "614", "616", "618", "620", "622", "624"],
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
					{"ID" : "616", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "618", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "15"},
					{"ID" : "614", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "this_s", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "612", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Port" : "this_s", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "614", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "607", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.t_U", "Parent" : "606"},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241", "Parent" : "606", "Child" : ["609"],
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
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "608"},
	{"ID" : "610", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249", "Parent" : "606", "Child" : ["611"],
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
	{"ID" : "611", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "610"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Parent" : "606", "Child" : ["613"],
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
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "612"},
	{"ID" : "614", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_KeccakF1600_StatePermute_fu_265", "Parent" : "606", "Child" : ["615"],
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
	{"ID" : "615", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_KeccakF1600_StatePermute_fu_265.KeccakF_RoundConstants_U", "Parent" : "614"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Parent" : "606", "Child" : ["617"],
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
	{"ID" : "617", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "616"},
	{"ID" : "618", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Parent" : "606", "Child" : ["619"],
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
	{"ID" : "619", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "618"},
	{"ID" : "620", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293", "Parent" : "606", "Child" : ["621"],
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
	{"ID" : "621", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "620"},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298", "Parent" : "606", "Child" : ["623"],
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
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "622"},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308", "Parent" : "606", "Child" : ["625"],
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
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_648.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "624"},
	{"ID" : "626", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_658", "Parent" : "0", "Child" : ["627"],
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
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_658.KeccakF_RoundConstants_U", "Parent" : "626"},
	{"ID" : "628", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_417_2_fu_665", "Parent" : "0", "Child" : ["629"],
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
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_417_2_fu_665.flow_control_loop_pipe_sequential_init_U", "Parent" : "628"},
	{"ID" : "630", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_503_2_fu_671", "Parent" : "0",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctr", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ctr_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln510_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_503_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "631", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_1_fu_681", "Parent" : "0", "Child" : ["632"],
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_1_fu_681.flow_control_loop_pipe_sequential_init_U", "Parent" : "631"},
	{"ID" : "633", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689", "Parent" : "0", "Child" : ["634", "635", "649", "669", "671", "673"],
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
					{"ID" : "671", "SubInstance" : "grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_193", "Port" : "this_s", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "669", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_185", "Port" : "this_s", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "635", "SubInstance" : "grp_shake_absorb_1_fu_159", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "649", "SubInstance" : "grp_shake_absorb_fu_173", "Port" : "this_s", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "635", "SubInstance" : "grp_shake_absorb_1_fu_159", "Port" : "seedbuf", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "669", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_185", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "635", "SubInstance" : "grp_shake_absorb_1_fu_159", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "649", "SubInstance" : "grp_shake_absorb_fu_173", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_321_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_530_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "634", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.buf_U", "Parent" : "633"},
	{"ID" : "635", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159", "Parent" : "633", "Child" : ["636", "637", "639", "641", "643", "645", "647"],
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
					{"ID" : "639", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "641", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "this_s", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "637", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Port" : "seedbuf", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "639", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "637", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "641", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "636", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.t_U", "Parent" : "635"},
	{"ID" : "637", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Parent" : "635", "Child" : ["638"],
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
	{"ID" : "638", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "637"},
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Parent" : "635", "Child" : ["640"],
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
	{"ID" : "640", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "639"},
	{"ID" : "641", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_KeccakF1600_StatePermute_fu_164", "Parent" : "635", "Child" : ["642"],
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
	{"ID" : "642", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_KeccakF1600_StatePermute_fu_164.KeccakF_RoundConstants_U", "Parent" : "641"},
	{"ID" : "643", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172", "Parent" : "635", "Child" : ["644"],
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
	{"ID" : "644", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "643"},
	{"ID" : "645", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Parent" : "635", "Child" : ["646"],
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
	{"ID" : "646", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "645"},
	{"ID" : "647", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187", "Parent" : "635", "Child" : ["648"],
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
	{"ID" : "648", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_1_fu_159.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "647"},
	{"ID" : "649", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173", "Parent" : "633", "Child" : ["650", "651", "653", "655", "657", "659", "661", "663", "665", "667"],
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
					{"ID" : "659", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "661", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "15"},
					{"ID" : "657", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "this_s", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "655", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Port" : "this_s", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "657", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "650", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.t_U", "Parent" : "649"},
	{"ID" : "651", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241", "Parent" : "649", "Child" : ["652"],
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
	{"ID" : "652", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "651"},
	{"ID" : "653", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249", "Parent" : "649", "Child" : ["654"],
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
	{"ID" : "654", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "653"},
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Parent" : "649", "Child" : ["656"],
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
	{"ID" : "656", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "655"},
	{"ID" : "657", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_KeccakF1600_StatePermute_fu_265", "Parent" : "649", "Child" : ["658"],
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
	{"ID" : "658", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_KeccakF1600_StatePermute_fu_265.KeccakF_RoundConstants_U", "Parent" : "657"},
	{"ID" : "659", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Parent" : "649", "Child" : ["660"],
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
	{"ID" : "660", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "659"},
	{"ID" : "661", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Parent" : "649", "Child" : ["662"],
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
	{"ID" : "662", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "661"},
	{"ID" : "663", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293", "Parent" : "649", "Child" : ["664"],
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
	{"ID" : "664", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "663"},
	{"ID" : "665", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298", "Parent" : "649", "Child" : ["666"],
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
	{"ID" : "666", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "665"},
	{"ID" : "667", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308", "Parent" : "649", "Child" : ["668"],
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
	{"ID" : "668", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_shake_absorb_fu_173.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "667"},
	{"ID" : "669", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_KeccakF1600_StatePermute_fu_185", "Parent" : "633", "Child" : ["670"],
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
	{"ID" : "670", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_KeccakF1600_StatePermute_fu_185.KeccakF_RoundConstants_U", "Parent" : "669"},
	{"ID" : "671", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_193", "Parent" : "633", "Child" : ["672"],
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
	{"ID" : "672", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_193.flow_control_loop_pipe_sequential_init_U", "Parent" : "671"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_689.grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_200", "Parent" : "633",
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
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_17_fu_700", "Parent" : "0", "Child" : ["675"],
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
			{"Name" : "tmp_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_17_fu_700.flow_control_loop_pipe_sequential_init_U", "Parent" : "674"},
	{"ID" : "676", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_18_fu_709", "Parent" : "0", "Child" : ["677"],
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
			{"Name" : "tmp_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_18_fu_709.flow_control_loop_pipe_sequential_init_U", "Parent" : "676"},
	{"ID" : "678", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_1_fu_718", "Parent" : "0", "Child" : ["679"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_56_1",
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
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "679", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_1_fu_718.flow_control_loop_pipe_sequential_init_U", "Parent" : "678"},
	{"ID" : "680", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_110_fu_726", "Parent" : "0", "Child" : ["681"],
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
	{"ID" : "681", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_110_fu_726.flow_control_loop_pipe_sequential_init_U", "Parent" : "680"},
	{"ID" : "682", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_19_fu_731", "Parent" : "0", "Child" : ["683"],
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
			{"Name" : "tmp_5", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "683", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_99_19_fu_731.flow_control_loop_pipe_sequential_init_U", "Parent" : "682"},
	{"ID" : "684", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_61_2_fu_740", "Parent" : "0", "Child" : ["685"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_61_2",
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
			{"Name" : "VITIS_LOOP_61_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "685", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_61_2_fu_740.flow_control_loop_pipe_sequential_init_U", "Parent" : "684"},
	{"ID" : "686", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_62_3_fu_748", "Parent" : "0", "Child" : ["687"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_62_3",
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
			{"Name" : "VITIS_LOOP_62_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "687", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_62_3_fu_748.flow_control_loop_pipe_sequential_init_U", "Parent" : "686"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_756", "Parent" : "0", "Child" : ["689", "691"],
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
					{"ID" : "691", "SubInstance" : "grp_dpu_pack_Pipeline_VITIS_LOOP_433_2_fu_87", "Port" : "pk", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "691", "SubInstance" : "grp_dpu_pack_Pipeline_VITIS_LOOP_433_2_fu_87", "Port" : "ptr", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_431_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "689", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_756.grp_dpu_pack_Pipeline_VITIS_LOOP_75_1_fu_79", "Parent" : "688", "Child" : ["690"],
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
	{"ID" : "690", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_756.grp_dpu_pack_Pipeline_VITIS_LOOP_75_1_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "689"},
	{"ID" : "691", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_756.grp_dpu_pack_Pipeline_VITIS_LOOP_433_2_fu_87", "Parent" : "688", "Child" : ["692"],
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
	{"ID" : "692", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_756.grp_dpu_pack_Pipeline_VITIS_LOOP_433_2_fu_87.flow_control_loop_pipe_sequential_init_U", "Parent" : "691"},
	{"ID" : "693", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_765", "Parent" : "0", "Child" : ["694", "696", "698"],
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
					{"ID" : "694", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "696", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "6"},
					{"ID" : "698", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_67", "Port" : "this_s", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "694", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Port" : "pk", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "696", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Port" : "pk", "Inst_start_state" : "2", "Inst_end_state" : "6"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "698", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_67", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "694", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_765.grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Parent" : "693", "Child" : ["695"],
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
	{"ID" : "695", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_765.grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "694"},
	{"ID" : "696", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_765.grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Parent" : "693", "Child" : ["697"],
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
	{"ID" : "697", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_765.grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "696"},
	{"ID" : "698", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_765.grp_KeccakF1600_StatePermute_fu_67", "Parent" : "693", "Child" : ["699"],
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
	{"ID" : "699", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_765.grp_KeccakF1600_StatePermute_fu_67.KeccakF_RoundConstants_U", "Parent" : "698"},
	{"ID" : "700", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_774", "Parent" : "0", "Child" : ["701"],
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
					{"ID" : "701", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_170", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "701", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_170", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "701", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_774.grp_KeccakF1600_StatePermute_fu_170", "Parent" : "700", "Child" : ["702"],
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
	{"ID" : "702", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_774.grp_KeccakF1600_StatePermute_fu_170.KeccakF_RoundConstants_U", "Parent" : "701"},
	{"ID" : "703", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_63_4_fu_782", "Parent" : "0", "Child" : ["704"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_63_4",
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
			{"Name" : "VITIS_LOOP_63_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "704", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_63_4_fu_782.flow_control_loop_pipe_sequential_init_U", "Parent" : "703"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789", "Parent" : "0", "Child" : ["706", "708", "710", "712", "714", "716", "718", "720", "722", "724"],
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
					{"ID" : "708", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_1_fu_244", "Port" : "this_0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "720", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_14_fu_296", "Port" : "this_0", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "712", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_525_10_fu_260", "Port" : "sk", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "718", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_543_12_fu_286", "Port" : "sk", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "716", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_558_14_fu_277", "Port" : "sk", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "724", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_460_6_fu_312", "Port" : "sk", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "706", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_497_8_fu_234", "Port" : "sk", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ptrs", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "712", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_525_10_fu_260", "Port" : "ptr", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "718", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_543_12_fu_286", "Port" : "ptr", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "716", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_558_14_fu_277", "Port" : "ptr", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "724", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_460_6_fu_312", "Port" : "ptr", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "706", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_497_8_fu_234", "Port" : "ptr", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
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
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_497_8_fu_234", "Parent" : "705", "Child" : ["707"],
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
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_497_8_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "706"},
	{"ID" : "708", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_1_fu_244", "Parent" : "705", "Child" : ["709"],
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
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_1_fu_244.flow_control_loop_pipe_sequential_init_U", "Parent" : "708"},
	{"ID" : "710", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_13_fu_252", "Parent" : "705", "Child" : ["711"],
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
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_13_fu_252.flow_control_loop_pipe_sequential_init_U", "Parent" : "710"},
	{"ID" : "712", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_525_10_fu_260", "Parent" : "705", "Child" : ["713"],
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
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_525_10_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "712"},
	{"ID" : "714", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_15_fu_269", "Parent" : "705", "Child" : ["715"],
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
	{"ID" : "715", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_15_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "714"},
	{"ID" : "716", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_558_14_fu_277", "Parent" : "705", "Child" : ["717"],
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
	{"ID" : "717", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_558_14_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "716"},
	{"ID" : "718", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_543_12_fu_286", "Parent" : "705", "Child" : ["719"],
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
	{"ID" : "719", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_543_12_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "718"},
	{"ID" : "720", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_14_fu_296", "Parent" : "705", "Child" : ["721"],
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
	{"ID" : "721", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_95_14_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "720"},
	{"ID" : "722", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_1_fu_304", "Parent" : "705", "Child" : ["723"],
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
	{"ID" : "723", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_75_1_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "722"},
	{"ID" : "724", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_460_6_fu_312", "Parent" : "705", "Child" : ["725"],
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
	{"ID" : "725", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_789.grp_dpu_pack_4_Pipeline_VITIS_LOOP_460_6_fu_312.flow_control_loop_pipe_sequential_init_U", "Parent" : "724"}]}


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
		empty {Type I LastRead 0 FirstWrite -1}
		ctr {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 3 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 2}
		ctr_1_out {Type O LastRead -1 FirstWrite 2}
		select_ln510_out {Type O LastRead -1 FirstWrite 4}}
	dpu_keygen_Pipeline_VITIS_LOOP_99_1 {
		this_pMem_load_8 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}}
	sample_eta {
		this_s {Type IO LastRead 16 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
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
		a_0 {Type I LastRead 0 FirstWrite -1}
		ctr {Type I LastRead 0 FirstWrite -1}
		buf_r {Type I LastRead 1 FirstWrite -1}
		a_1_out {Type O LastRead -1 FirstWrite 2}
		ctr_1_out {Type O LastRead -1 FirstWrite 2}
		select_ln538_out {Type O LastRead -1 FirstWrite 4}}
	dpu_keygen_Pipeline_VITIS_LOOP_99_17 {
		this_pMem_load_5 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_99_18 {
		this_pMem_load_7 {Type I LastRead 0 FirstWrite -1}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_56_1 {
		seedbuf {Type I LastRead 0 FirstWrite -1}
		pk {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_321_110 {
		spu_s {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_99_19 {
		this_pMem_load_6 {Type I LastRead 0 FirstWrite -1}
		dpu_pMem {Type O LastRead -1 FirstWrite 1}
		idxprom2_i49_cast {Type I LastRead 0 FirstWrite -1}
		tmp_5 {Type I LastRead 0 FirstWrite -1}}
	dpu_keygen_Pipeline_VITIS_LOOP_61_2 {
		seedbuf {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_62_3 {
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
	dpu_keygen_Pipeline_VITIS_LOOP_63_4 {
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
