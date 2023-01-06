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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "639", "641", "643", "645", "647", "661", "663", "665", "667", "669", "672", "674", "694", "696", "698", "699", "701", "742", "744", "746", "748", "750", "752", "754", "756", "761", "768", "771", "773"],
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
					{"ID" : "756", "SubInstance" : "grp_dpu_pack_fu_743", "Port" : "pk", "Inst_start_state" : "61", "Inst_end_state" : "62"},
					{"ID" : "746", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Port" : "pk", "Inst_start_state" : "42", "Inst_end_state" : "46"},
					{"ID" : "761", "SubInstance" : "grp_shake_absorb_3_fu_752", "Port" : "pk", "Inst_start_state" : "63", "Inst_end_state" : "64"}]},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "773", "SubInstance" : "grp_dpu_pack_4_fu_776", "Port" : "sk", "Inst_start_state" : "75", "Inst_end_state" : "76"},
					{"ID" : "754", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Port" : "sk", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "752", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Port" : "sk", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "771", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769", "Port" : "sk", "Inst_start_state" : "69", "Inst_end_state" : "70"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "647", "SubInstance" : "grp_shake_absorb_1_fu_585", "Port" : "seedbuf", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "754", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Port" : "seedbuf", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "752", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Port" : "seedbuf", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "669", "SubInstance" : "grp_shake_squeeze_2_fu_626", "Port" : "seedbuf", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "701", "SubInstance" : "grp_sample_eta_fu_679", "Port" : "seedbuf", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "746", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Port" : "seedbuf", "Inst_start_state" : "42", "Inst_end_state" : "46"}]},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "645", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578", "Port" : "zetas", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "661", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599", "Port" : "zetas", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "647", "SubInstance" : "grp_shake_absorb_1_fu_585", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "669", "SubInstance" : "grp_shake_squeeze_2_fu_626", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "768", "SubInstance" : "grp_shake_squeeze_fu_761", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "67", "Inst_end_state" : "68"},
					{"ID" : "701", "SubInstance" : "grp_sample_eta_fu_679", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "761", "SubInstance" : "grp_shake_absorb_3_fu_752", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "63", "Inst_end_state" : "64"},
					{"ID" : "694", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_650", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "674", "SubInstance" : "grp_shake_absorb_fu_640", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "756", "SubInstance" : "grp_dpu_pack_fu_743", "Port" : "ptr", "Inst_start_state" : "61", "Inst_end_state" : "62"},
					{"ID" : "773", "SubInstance" : "grp_dpu_pack_4_fu_776", "Port" : "ptr", "Inst_start_state" : "75", "Inst_end_state" : "76"}]}],
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
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460", "Parent" : "0", "Child" : ["10", "11", "15", "20", "24", "28", "33", "38", "42", "46", "51", "55", "317", "321", "327", "331", "335", "340", "345", "351", "355", "359", "364", "368", "372", "377", "382"],
		"CDFG" : "dpu_func",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "7803",
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
					{"ID" : "33", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770", "Port" : "this_0", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "15", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711", "Port" : "this_0", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "24", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740", "Port" : "this_0", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "327", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893", "Port" : "this_0", "Inst_start_state" : "126", "Inst_end_state" : "127"},
					{"ID" : "335", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921", "Port" : "this_0", "Inst_start_state" : "132", "Inst_end_state" : "133"},
					{"ID" : "11", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697", "Port" : "this_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "46", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813", "Port" : "this_0", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "345", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952", "Port" : "this_0", "Inst_start_state" : "136", "Inst_end_state" : "137"},
					{"ID" : "321", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877", "Port" : "this_0", "Inst_start_state" : "94", "Inst_end_state" : "95"},
					{"ID" : "51", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829", "Port" : "this_0", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "10", "SubInstance" : "grp_read_p2_fu_646", "Port" : "this_pMem", "Inst_start_state" : "246", "Inst_end_state" : "247"},
					{"ID" : "359", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995", "Port" : "this_0", "Inst_start_state" : "186", "Inst_end_state" : "187"},
					{"ID" : "42", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799", "Port" : "this_0", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "372", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040", "Port" : "this_0", "Inst_start_state" : "250", "Inst_end_state" : "251"},
					{"ID" : "377", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056", "Port" : "this_0", "Inst_start_state" : "253", "Inst_end_state" : "254"},
					{"ID" : "340", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936", "Port" : "this_0", "Inst_start_state" : "134", "Inst_end_state" : "135"},
					{"ID" : "355", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981", "Port" : "this_0", "Inst_start_state" : "184", "Inst_end_state" : "185"},
					{"ID" : "364", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011", "Port" : "this_0", "Inst_start_state" : "194", "Inst_end_state" : "195"},
					{"ID" : "368", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026", "Port" : "this_0", "Inst_start_state" : "248", "Inst_end_state" : "249"},
					{"ID" : "55", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845", "Port" : "this_0", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "20", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726", "Port" : "this_0", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "317", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862", "Port" : "this_0", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "351", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967", "Port" : "this_0", "Inst_start_state" : "180", "Inst_end_state" : "181"},
					{"ID" : "331", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907", "Port" : "this_0", "Inst_start_state" : "130", "Inst_end_state" : "131"},
					{"ID" : "38", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785", "Port" : "this_0", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "28", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754", "Port" : "this_0", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
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
				"LoopDec" : {"FSMBitwidth" : "310", "FirstState" : "ap_ST_fsm_state94", "LastState" : ["ap_ST_fsm_state135"], "QuitState" : ["ap_ST_fsm_state94"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state252"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUNC_NTT_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "310", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state18"], "PostState" : ["ap_ST_fsm_state252"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUNC_INTT_LOOP0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "310", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state252"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_read_p2_fu_646", "Parent" : "9",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697", "Parent" : "9", "Child" : ["12", "13", "14"],
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
			{"Name" : "this_3_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "call_ln350_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "12", "SubInstance" : "grp_read_intt_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_26_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697.grp_read_intt_fu_137", "Parent" : "11",
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697.call_ln350_write_p3_fu_153", "Parent" : "11",
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_697.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711", "Parent" : "9", "Child" : ["16", "17", "18", "19"],
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
			{"Name" : "this_3_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "call_ln358_write_p3_fu_167", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "18", "SubInstance" : "call_ln359_write_p4_fu_175", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"},
					{"ID" : "16", "SubInstance" : "grp_read_p1_fu_151", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret28", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711.grp_read_p1_fu_151", "Parent" : "15",
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711.call_ln358_write_p3_fu_167", "Parent" : "15",
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711.call_ln359_write_p4_fu_175", "Parent" : "15",
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_711.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726", "Parent" : "9", "Child" : ["21", "22", "23"],
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
			{"Name" : "this_3_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "call_ln368_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "21", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret42", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_28_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726.grp_read_p1_fu_137", "Parent" : "20",
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
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726.call_ln368_write_p3_fu_153", "Parent" : "20",
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
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_726.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740", "Parent" : "9", "Child" : ["25", "26", "27"],
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
			{"Name" : "this_3_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "26", "SubInstance" : "call_ln377_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740.grp_read_p1_fu_137", "Parent" : "24",
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740.call_ln377_write_p4_fu_153", "Parent" : "24",
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_740.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754", "Parent" : "9", "Child" : ["29", "30", "31", "32"],
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
			{"Name" : "this_3_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret51", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_read_p1_fu_118", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "31", "SubInstance" : "call_ln386_write_p3_fu_141", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "30", "SubInstance" : "grp_read_p2_fu_125", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_31_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754.grp_read_p1_fu_118", "Parent" : "28",
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
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754.grp_read_p2_fu_125", "Parent" : "28",
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754.call_ln386_write_p3_fu_141", "Parent" : "28",
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_754.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770", "Parent" : "9", "Child" : ["34", "35", "36", "37"],
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
			{"Name" : "this_3_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_read_p1_fu_151", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "35", "SubInstance" : "call_ln302_write_p3_fu_167", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "36", "SubInstance" : "call_ln303_write_p4_fu_175", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret15", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770.grp_read_p1_fu_151", "Parent" : "33",
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
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770.call_ln302_write_p3_fu_167", "Parent" : "33",
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
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770.call_ln303_write_p4_fu_175", "Parent" : "33",
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_770.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785", "Parent" : "9", "Child" : ["39", "40", "41"],
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
			{"Name" : "this_3_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "40", "SubInstance" : "call_ln312_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret25", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785.grp_read_p1_fu_137", "Parent" : "38",
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
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785.call_ln312_write_p3_fu_153", "Parent" : "38",
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
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_785.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799", "Parent" : "9", "Child" : ["43", "44", "45"],
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
			{"Name" : "this_3_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "44", "SubInstance" : "call_ln321_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret39", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799.grp_read_p1_fu_137", "Parent" : "42",
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799.call_ln321_write_p4_fu_153", "Parent" : "42",
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_799.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813", "Parent" : "9", "Child" : ["47", "48", "49", "50"],
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
			{"Name" : "this_3_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret39", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_read_p1_fu_164", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "call_ln330_write_p3_fu_187", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "48", "SubInstance" : "grp_read_p2_fu_171", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813.grp_read_p1_fu_164", "Parent" : "46",
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813.grp_read_p2_fu_171", "Parent" : "46",
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
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813.call_ln330_write_p3_fu_187", "Parent" : "46",
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_813.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829", "Parent" : "9", "Child" : ["52", "53", "54"],
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
			{"Name" : "this_3_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_2_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_read_ntt_fu_112", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "53", "SubInstance" : "call_ln338_write_p3_fu_128", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_24_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829.grp_read_ntt_fu_112", "Parent" : "51",
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
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829.call_ln338_write_p3_fu_128", "Parent" : "51",
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
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_829.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845", "Parent" : "9", "Child" : ["56", "57", "314", "315", "316"],
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
			{"Name" : "trunc_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "call_ln290_write_p3_fu_181", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "56", "SubInstance" : "grp_read_p1_fu_165", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "315", "SubInstance" : "call_ln291_write_p4_fu_189", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_POW2ROUND_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_read_p1_fu_165", "Parent" : "55",
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
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172", "Parent" : "55", "Child" : ["58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313"],
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
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U107", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U108", "Parent" : "57"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U109", "Parent" : "57"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U110", "Parent" : "57"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U111", "Parent" : "57"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U112", "Parent" : "57"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U113", "Parent" : "57"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U114", "Parent" : "57"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U115", "Parent" : "57"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U116", "Parent" : "57"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U117", "Parent" : "57"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U118", "Parent" : "57"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U119", "Parent" : "57"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U120", "Parent" : "57"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U121", "Parent" : "57"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U122", "Parent" : "57"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U123", "Parent" : "57"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U124", "Parent" : "57"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U125", "Parent" : "57"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U126", "Parent" : "57"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U127", "Parent" : "57"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U128", "Parent" : "57"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U129", "Parent" : "57"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U130", "Parent" : "57"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U131", "Parent" : "57"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U132", "Parent" : "57"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U133", "Parent" : "57"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U134", "Parent" : "57"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U135", "Parent" : "57"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U136", "Parent" : "57"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U137", "Parent" : "57"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U138", "Parent" : "57"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U139", "Parent" : "57"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U140", "Parent" : "57"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U141", "Parent" : "57"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U142", "Parent" : "57"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U143", "Parent" : "57"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U144", "Parent" : "57"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U145", "Parent" : "57"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U146", "Parent" : "57"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U147", "Parent" : "57"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U148", "Parent" : "57"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U149", "Parent" : "57"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U150", "Parent" : "57"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U151", "Parent" : "57"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U152", "Parent" : "57"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U153", "Parent" : "57"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U154", "Parent" : "57"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U155", "Parent" : "57"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U156", "Parent" : "57"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U157", "Parent" : "57"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U158", "Parent" : "57"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U159", "Parent" : "57"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U160", "Parent" : "57"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U161", "Parent" : "57"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U162", "Parent" : "57"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U163", "Parent" : "57"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U164", "Parent" : "57"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U165", "Parent" : "57"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U166", "Parent" : "57"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U167", "Parent" : "57"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U168", "Parent" : "57"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U169", "Parent" : "57"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U170", "Parent" : "57"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U171", "Parent" : "57"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U172", "Parent" : "57"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U173", "Parent" : "57"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U174", "Parent" : "57"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U175", "Parent" : "57"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U176", "Parent" : "57"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U177", "Parent" : "57"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U178", "Parent" : "57"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U179", "Parent" : "57"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U180", "Parent" : "57"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U181", "Parent" : "57"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U182", "Parent" : "57"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U183", "Parent" : "57"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U184", "Parent" : "57"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U185", "Parent" : "57"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U186", "Parent" : "57"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U187", "Parent" : "57"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U188", "Parent" : "57"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U189", "Parent" : "57"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U190", "Parent" : "57"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U191", "Parent" : "57"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U192", "Parent" : "57"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U193", "Parent" : "57"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U194", "Parent" : "57"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U195", "Parent" : "57"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U196", "Parent" : "57"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U197", "Parent" : "57"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U198", "Parent" : "57"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U199", "Parent" : "57"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U200", "Parent" : "57"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U201", "Parent" : "57"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U202", "Parent" : "57"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U203", "Parent" : "57"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U204", "Parent" : "57"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U205", "Parent" : "57"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U206", "Parent" : "57"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U207", "Parent" : "57"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U208", "Parent" : "57"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U209", "Parent" : "57"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U210", "Parent" : "57"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U211", "Parent" : "57"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U212", "Parent" : "57"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U213", "Parent" : "57"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U214", "Parent" : "57"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U215", "Parent" : "57"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U216", "Parent" : "57"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U217", "Parent" : "57"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U218", "Parent" : "57"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U219", "Parent" : "57"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U220", "Parent" : "57"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U221", "Parent" : "57"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U222", "Parent" : "57"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U223", "Parent" : "57"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U224", "Parent" : "57"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U225", "Parent" : "57"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U226", "Parent" : "57"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U227", "Parent" : "57"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U228", "Parent" : "57"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U229", "Parent" : "57"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U230", "Parent" : "57"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U231", "Parent" : "57"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U232", "Parent" : "57"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U233", "Parent" : "57"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U234", "Parent" : "57"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U235", "Parent" : "57"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U236", "Parent" : "57"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U237", "Parent" : "57"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U238", "Parent" : "57"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U239", "Parent" : "57"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U240", "Parent" : "57"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U241", "Parent" : "57"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U242", "Parent" : "57"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U243", "Parent" : "57"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U244", "Parent" : "57"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U245", "Parent" : "57"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U246", "Parent" : "57"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U247", "Parent" : "57"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U248", "Parent" : "57"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U249", "Parent" : "57"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U250", "Parent" : "57"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U251", "Parent" : "57"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U252", "Parent" : "57"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U253", "Parent" : "57"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U254", "Parent" : "57"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U255", "Parent" : "57"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U256", "Parent" : "57"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U257", "Parent" : "57"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U258", "Parent" : "57"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U259", "Parent" : "57"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U260", "Parent" : "57"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U261", "Parent" : "57"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U262", "Parent" : "57"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U263", "Parent" : "57"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U264", "Parent" : "57"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U265", "Parent" : "57"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U266", "Parent" : "57"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U267", "Parent" : "57"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U268", "Parent" : "57"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U269", "Parent" : "57"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U270", "Parent" : "57"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U271", "Parent" : "57"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U272", "Parent" : "57"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U273", "Parent" : "57"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U274", "Parent" : "57"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U275", "Parent" : "57"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U276", "Parent" : "57"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U277", "Parent" : "57"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U278", "Parent" : "57"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U279", "Parent" : "57"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U280", "Parent" : "57"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U281", "Parent" : "57"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U282", "Parent" : "57"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U283", "Parent" : "57"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U284", "Parent" : "57"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U285", "Parent" : "57"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U286", "Parent" : "57"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U287", "Parent" : "57"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U288", "Parent" : "57"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U289", "Parent" : "57"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U290", "Parent" : "57"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U291", "Parent" : "57"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U292", "Parent" : "57"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U293", "Parent" : "57"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U294", "Parent" : "57"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U295", "Parent" : "57"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U296", "Parent" : "57"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U297", "Parent" : "57"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U298", "Parent" : "57"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U299", "Parent" : "57"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U300", "Parent" : "57"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U301", "Parent" : "57"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U302", "Parent" : "57"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U303", "Parent" : "57"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U304", "Parent" : "57"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U305", "Parent" : "57"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U306", "Parent" : "57"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U307", "Parent" : "57"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U308", "Parent" : "57"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U309", "Parent" : "57"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U310", "Parent" : "57"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U311", "Parent" : "57"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U312", "Parent" : "57"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U313", "Parent" : "57"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U314", "Parent" : "57"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U315", "Parent" : "57"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U316", "Parent" : "57"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U317", "Parent" : "57"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U318", "Parent" : "57"},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U319", "Parent" : "57"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U320", "Parent" : "57"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U321", "Parent" : "57"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U322", "Parent" : "57"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U323", "Parent" : "57"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U324", "Parent" : "57"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U325", "Parent" : "57"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U326", "Parent" : "57"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U327", "Parent" : "57"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U328", "Parent" : "57"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U329", "Parent" : "57"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U330", "Parent" : "57"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U331", "Parent" : "57"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U332", "Parent" : "57"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U333", "Parent" : "57"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U334", "Parent" : "57"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U335", "Parent" : "57"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U336", "Parent" : "57"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U337", "Parent" : "57"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U338", "Parent" : "57"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U339", "Parent" : "57"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U340", "Parent" : "57"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U341", "Parent" : "57"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U342", "Parent" : "57"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U343", "Parent" : "57"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U344", "Parent" : "57"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U345", "Parent" : "57"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U346", "Parent" : "57"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U347", "Parent" : "57"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U348", "Parent" : "57"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U349", "Parent" : "57"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U350", "Parent" : "57"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U351", "Parent" : "57"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U352", "Parent" : "57"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U353", "Parent" : "57"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U354", "Parent" : "57"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U355", "Parent" : "57"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U356", "Parent" : "57"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U357", "Parent" : "57"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U358", "Parent" : "57"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U359", "Parent" : "57"},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U360", "Parent" : "57"},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U361", "Parent" : "57"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.grp_dpu_unit_fu_172.mul_32s_32s_64_1_0_U362", "Parent" : "57"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.call_ln290_write_p3_fu_181", "Parent" : "55",
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
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.call_ln291_write_p4_fu_189", "Parent" : "55",
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
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_845.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862", "Parent" : "9", "Child" : ["318", "319", "320"],
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
			{"Name" : "trunc_ln50", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "318", "SubInstance" : "grp_read_p1_fu_145", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "319", "SubInstance" : "call_ln281_write_p3_fu_161", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_CADDQ_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862.grp_read_p1_fu_145", "Parent" : "317",
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
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862.call_ln281_write_p3_fu_161", "Parent" : "317",
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
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_862.flow_control_loop_pipe_sequential_init_U", "Parent" : "317"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877", "Parent" : "9", "Child" : ["322", "323", "324", "325", "326"],
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
			{"Name" : "this_3_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "325", "SubInstance" : "call_ln234_write_p4_fu_196", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"},
					{"ID" : "323", "SubInstance" : "grp_read_p2_fu_172", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "322", "SubInstance" : "grp_read_p1_fu_165", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "324", "SubInstance" : "call_ln233_write_p3_fu_188", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln230_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.grp_read_p1_fu_165", "Parent" : "321",
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
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.grp_read_p2_fu_172", "Parent" : "321",
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
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.call_ln233_write_p3_fu_188", "Parent" : "321",
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
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.call_ln234_write_p4_fu_196", "Parent" : "321",
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
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_877.flow_control_loop_pipe_sequential_init_U", "Parent" : "321"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893", "Parent" : "9", "Child" : ["328", "329", "330"],
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
			{"Name" : "this_3_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "call_ln243_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "328", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret21", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893.grp_read_p1_fu_137", "Parent" : "327",
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
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893.call_ln243_write_p3_fu_153", "Parent" : "327",
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
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_893.flow_control_loop_pipe_sequential_init_U", "Parent" : "327"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907", "Parent" : "9", "Child" : ["332", "333", "334"],
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
			{"Name" : "this_3_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "332", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "333", "SubInstance" : "call_ln252_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret36", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907.grp_read_p1_fu_137", "Parent" : "331",
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
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907.call_ln252_write_p4_fu_153", "Parent" : "331",
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
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_907.flow_control_loop_pipe_sequential_init_U", "Parent" : "331"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921", "Parent" : "9", "Child" : ["336", "337", "338", "339"],
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
			{"Name" : "this_3_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret36", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "call_ln261_write_p3_fu_177", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "336", "SubInstance" : "grp_read_p1_fu_154", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "337", "SubInstance" : "grp_read_p2_fu_161", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "this_3_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921.grp_read_p1_fu_154", "Parent" : "335",
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
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921.grp_read_p2_fu_161", "Parent" : "335",
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
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921.call_ln261_write_p3_fu_177", "Parent" : "335",
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
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_921.flow_control_loop_pipe_sequential_init_U", "Parent" : "335"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936", "Parent" : "9", "Child" : ["341", "342", "343", "344"],
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
			{"Name" : "this_3_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_2_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_read_p1_fu_127", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "343", "SubInstance" : "call_ln271_write_p3_fu_151", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"},
					{"ID" : "342", "SubInstance" : "grp_read_p2_fu_134", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_15_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936.grp_read_p1_fu_127", "Parent" : "340",
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
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936.grp_read_p2_fu_134", "Parent" : "340",
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
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936.call_ln271_write_p3_fu_151", "Parent" : "340",
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
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_936.flow_control_loop_pipe_sequential_init_U", "Parent" : "340"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952", "Parent" : "9", "Child" : ["346", "347", "348", "349", "350"],
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
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "call_ln193_write_p3_fu_178", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "346", "SubInstance" : "grp_read_p1_fu_155", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "349", "SubInstance" : "call_ln194_write_p4_fu_186", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"},
					{"ID" : "347", "SubInstance" : "grp_read_p2_fu_162", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.grp_read_p1_fu_155", "Parent" : "345",
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
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.grp_read_p2_fu_162", "Parent" : "345",
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
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.call_ln193_write_p3_fu_178", "Parent" : "345",
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
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.call_ln194_write_p4_fu_186", "Parent" : "345",
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
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_952.flow_control_loop_pipe_sequential_init_U", "Parent" : "345"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967", "Parent" : "9", "Child" : ["352", "353", "354"],
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
			{"Name" : "this_3_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "call_ln203_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "352", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967.grp_read_p1_fu_137", "Parent" : "351",
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
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967.call_ln203_write_p3_fu_153", "Parent" : "351",
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
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_967.flow_control_loop_pipe_sequential_init_U", "Parent" : "351"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981", "Parent" : "9", "Child" : ["356", "357", "358"],
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
			{"Name" : "this_3_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "357", "SubInstance" : "call_ln212_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret18", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981.grp_read_p1_fu_137", "Parent" : "355",
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
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981.call_ln212_write_p4_fu_153", "Parent" : "355",
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
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_981.flow_control_loop_pipe_sequential_init_U", "Parent" : "355"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995", "Parent" : "9", "Child" : ["360", "361", "362", "363"],
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
			{"Name" : "this_3_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret18", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "361", "SubInstance" : "grp_read_p2_fu_171", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "360", "SubInstance" : "grp_read_p1_fu_164", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "362", "SubInstance" : "call_ln221_write_p3_fu_187", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995.grp_read_p1_fu_164", "Parent" : "359",
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
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995.grp_read_p2_fu_171", "Parent" : "359",
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
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995.call_ln221_write_p3_fu_187", "Parent" : "359",
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
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_995.flow_control_loop_pipe_sequential_init_U", "Parent" : "359"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011", "Parent" : "9", "Child" : ["365", "366", "367"],
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
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_read_p1_fu_147", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "366", "SubInstance" : "call_ln164_write_p3_fu_163", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011.grp_read_p1_fu_147", "Parent" : "364",
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
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011.call_ln164_write_p3_fu_163", "Parent" : "364",
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
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_1011.flow_control_loop_pipe_sequential_init_U", "Parent" : "364"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026", "Parent" : "9", "Child" : ["369", "370", "371"],
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
					{"ID" : "369", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "370", "SubInstance" : "call_ln173_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret7", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026.grp_read_p1_fu_137", "Parent" : "368",
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
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026.call_ln173_write_p3_fu_153", "Parent" : "368",
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
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1026.flow_control_loop_pipe_sequential_init_U", "Parent" : "368"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040", "Parent" : "9", "Child" : ["373", "374", "375", "376"],
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
			{"Name" : "this_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret7", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "374", "SubInstance" : "grp_read_p2_fu_169", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "375", "SubInstance" : "call_ln182_write_p3_fu_185", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "373", "SubInstance" : "grp_read_p1_fu_162", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040.grp_read_p1_fu_162", "Parent" : "372",
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
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040.grp_read_p2_fu_169", "Parent" : "372",
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
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040.call_ln182_write_p3_fu_185", "Parent" : "372",
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
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1040.flow_control_loop_pipe_sequential_init_U", "Parent" : "372"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056", "Parent" : "9", "Child" : ["378", "379", "380", "381"],
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
					{"ID" : "379", "SubInstance" : "grp_read_p2_fu_185", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "378", "SubInstance" : "grp_read_p1_fu_178", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "380", "SubInstance" : "call_ln144_write_p3_fu_201", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
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
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056.grp_read_p1_fu_178", "Parent" : "377",
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
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056.grp_read_p2_fu_185", "Parent" : "377",
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
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056.call_ln144_write_p3_fu_201", "Parent" : "377",
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
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_1056.flow_control_loop_pipe_sequential_init_U", "Parent" : "377"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638", "Parent" : "9", "Child" : ["383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638"],
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
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U107", "Parent" : "382"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U108", "Parent" : "382"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U109", "Parent" : "382"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U110", "Parent" : "382"},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U111", "Parent" : "382"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U112", "Parent" : "382"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U113", "Parent" : "382"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U114", "Parent" : "382"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U115", "Parent" : "382"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U116", "Parent" : "382"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U117", "Parent" : "382"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U118", "Parent" : "382"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U119", "Parent" : "382"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U120", "Parent" : "382"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U121", "Parent" : "382"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U122", "Parent" : "382"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U123", "Parent" : "382"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U124", "Parent" : "382"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U125", "Parent" : "382"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U126", "Parent" : "382"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U127", "Parent" : "382"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U128", "Parent" : "382"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U129", "Parent" : "382"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U130", "Parent" : "382"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U131", "Parent" : "382"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U132", "Parent" : "382"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U133", "Parent" : "382"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U134", "Parent" : "382"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U135", "Parent" : "382"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U136", "Parent" : "382"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U137", "Parent" : "382"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U138", "Parent" : "382"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U139", "Parent" : "382"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U140", "Parent" : "382"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U141", "Parent" : "382"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U142", "Parent" : "382"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U143", "Parent" : "382"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U144", "Parent" : "382"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U145", "Parent" : "382"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U146", "Parent" : "382"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U147", "Parent" : "382"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U148", "Parent" : "382"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U149", "Parent" : "382"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U150", "Parent" : "382"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U151", "Parent" : "382"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U152", "Parent" : "382"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U153", "Parent" : "382"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U154", "Parent" : "382"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U155", "Parent" : "382"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U156", "Parent" : "382"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U157", "Parent" : "382"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U158", "Parent" : "382"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U159", "Parent" : "382"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U160", "Parent" : "382"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U161", "Parent" : "382"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U162", "Parent" : "382"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U163", "Parent" : "382"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U164", "Parent" : "382"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U165", "Parent" : "382"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U166", "Parent" : "382"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U167", "Parent" : "382"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U168", "Parent" : "382"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U169", "Parent" : "382"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U170", "Parent" : "382"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U171", "Parent" : "382"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U172", "Parent" : "382"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U173", "Parent" : "382"},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U174", "Parent" : "382"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U175", "Parent" : "382"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U176", "Parent" : "382"},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U177", "Parent" : "382"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U178", "Parent" : "382"},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U179", "Parent" : "382"},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U180", "Parent" : "382"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U181", "Parent" : "382"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U182", "Parent" : "382"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U183", "Parent" : "382"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U184", "Parent" : "382"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U185", "Parent" : "382"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U186", "Parent" : "382"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U187", "Parent" : "382"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U188", "Parent" : "382"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U189", "Parent" : "382"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U190", "Parent" : "382"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U191", "Parent" : "382"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U192", "Parent" : "382"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U193", "Parent" : "382"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U194", "Parent" : "382"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U195", "Parent" : "382"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U196", "Parent" : "382"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U197", "Parent" : "382"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U198", "Parent" : "382"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U199", "Parent" : "382"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U200", "Parent" : "382"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U201", "Parent" : "382"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U202", "Parent" : "382"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U203", "Parent" : "382"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U204", "Parent" : "382"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U205", "Parent" : "382"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U206", "Parent" : "382"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U207", "Parent" : "382"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U208", "Parent" : "382"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U209", "Parent" : "382"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U210", "Parent" : "382"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U211", "Parent" : "382"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U212", "Parent" : "382"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U213", "Parent" : "382"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U214", "Parent" : "382"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U215", "Parent" : "382"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U216", "Parent" : "382"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U217", "Parent" : "382"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U218", "Parent" : "382"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U219", "Parent" : "382"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U220", "Parent" : "382"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U221", "Parent" : "382"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U222", "Parent" : "382"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U223", "Parent" : "382"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U224", "Parent" : "382"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U225", "Parent" : "382"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U226", "Parent" : "382"},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U227", "Parent" : "382"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U228", "Parent" : "382"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U229", "Parent" : "382"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U230", "Parent" : "382"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U231", "Parent" : "382"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U232", "Parent" : "382"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U233", "Parent" : "382"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U234", "Parent" : "382"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U235", "Parent" : "382"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U236", "Parent" : "382"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U237", "Parent" : "382"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U238", "Parent" : "382"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U239", "Parent" : "382"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U240", "Parent" : "382"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U241", "Parent" : "382"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U242", "Parent" : "382"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U243", "Parent" : "382"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U244", "Parent" : "382"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U245", "Parent" : "382"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U246", "Parent" : "382"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U247", "Parent" : "382"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U248", "Parent" : "382"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U249", "Parent" : "382"},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U250", "Parent" : "382"},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U251", "Parent" : "382"},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U252", "Parent" : "382"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U253", "Parent" : "382"},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U254", "Parent" : "382"},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U255", "Parent" : "382"},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U256", "Parent" : "382"},
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U257", "Parent" : "382"},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U258", "Parent" : "382"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U259", "Parent" : "382"},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U260", "Parent" : "382"},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U261", "Parent" : "382"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U262", "Parent" : "382"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U263", "Parent" : "382"},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U264", "Parent" : "382"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U265", "Parent" : "382"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U266", "Parent" : "382"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U267", "Parent" : "382"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U268", "Parent" : "382"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U269", "Parent" : "382"},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U270", "Parent" : "382"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U271", "Parent" : "382"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U272", "Parent" : "382"},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U273", "Parent" : "382"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U274", "Parent" : "382"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U275", "Parent" : "382"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U276", "Parent" : "382"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U277", "Parent" : "382"},
	{"ID" : "554", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U278", "Parent" : "382"},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U279", "Parent" : "382"},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U280", "Parent" : "382"},
	{"ID" : "557", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U281", "Parent" : "382"},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U282", "Parent" : "382"},
	{"ID" : "559", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U283", "Parent" : "382"},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U284", "Parent" : "382"},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U285", "Parent" : "382"},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U286", "Parent" : "382"},
	{"ID" : "563", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U287", "Parent" : "382"},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U288", "Parent" : "382"},
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U289", "Parent" : "382"},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U290", "Parent" : "382"},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U291", "Parent" : "382"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U292", "Parent" : "382"},
	{"ID" : "569", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U293", "Parent" : "382"},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U294", "Parent" : "382"},
	{"ID" : "571", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U295", "Parent" : "382"},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U296", "Parent" : "382"},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U297", "Parent" : "382"},
	{"ID" : "574", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U298", "Parent" : "382"},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U299", "Parent" : "382"},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U300", "Parent" : "382"},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U301", "Parent" : "382"},
	{"ID" : "578", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U302", "Parent" : "382"},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U303", "Parent" : "382"},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U304", "Parent" : "382"},
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U305", "Parent" : "382"},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U306", "Parent" : "382"},
	{"ID" : "583", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U307", "Parent" : "382"},
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U308", "Parent" : "382"},
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U309", "Parent" : "382"},
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U310", "Parent" : "382"},
	{"ID" : "587", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U311", "Parent" : "382"},
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U312", "Parent" : "382"},
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U313", "Parent" : "382"},
	{"ID" : "590", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U314", "Parent" : "382"},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U315", "Parent" : "382"},
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U316", "Parent" : "382"},
	{"ID" : "593", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U317", "Parent" : "382"},
	{"ID" : "594", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U318", "Parent" : "382"},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U319", "Parent" : "382"},
	{"ID" : "596", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U320", "Parent" : "382"},
	{"ID" : "597", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U321", "Parent" : "382"},
	{"ID" : "598", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U322", "Parent" : "382"},
	{"ID" : "599", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U323", "Parent" : "382"},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U324", "Parent" : "382"},
	{"ID" : "601", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U325", "Parent" : "382"},
	{"ID" : "602", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U326", "Parent" : "382"},
	{"ID" : "603", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U327", "Parent" : "382"},
	{"ID" : "604", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U328", "Parent" : "382"},
	{"ID" : "605", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U329", "Parent" : "382"},
	{"ID" : "606", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U330", "Parent" : "382"},
	{"ID" : "607", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U331", "Parent" : "382"},
	{"ID" : "608", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U332", "Parent" : "382"},
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U333", "Parent" : "382"},
	{"ID" : "610", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U334", "Parent" : "382"},
	{"ID" : "611", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U335", "Parent" : "382"},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U336", "Parent" : "382"},
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U337", "Parent" : "382"},
	{"ID" : "614", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U338", "Parent" : "382"},
	{"ID" : "615", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U339", "Parent" : "382"},
	{"ID" : "616", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U340", "Parent" : "382"},
	{"ID" : "617", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U341", "Parent" : "382"},
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U342", "Parent" : "382"},
	{"ID" : "619", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U343", "Parent" : "382"},
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U344", "Parent" : "382"},
	{"ID" : "621", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U345", "Parent" : "382"},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U346", "Parent" : "382"},
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U347", "Parent" : "382"},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U348", "Parent" : "382"},
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U349", "Parent" : "382"},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U350", "Parent" : "382"},
	{"ID" : "627", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U351", "Parent" : "382"},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U352", "Parent" : "382"},
	{"ID" : "629", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U353", "Parent" : "382"},
	{"ID" : "630", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U354", "Parent" : "382"},
	{"ID" : "631", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U355", "Parent" : "382"},
	{"ID" : "632", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U356", "Parent" : "382"},
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U357", "Parent" : "382"},
	{"ID" : "634", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U358", "Parent" : "382"},
	{"ID" : "635", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U359", "Parent" : "382"},
	{"ID" : "636", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U360", "Parent" : "382"},
	{"ID" : "637", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U361", "Parent" : "382"},
	{"ID" : "638", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2638.mul_32s_32s_64_1_0_U362", "Parent" : "382"},
	{"ID" : "639", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_40_1_fu_562", "Parent" : "0", "Child" : ["640"],
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
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_40_1_fu_562.flow_control_loop_pipe_sequential_init_U", "Parent" : "639"},
	{"ID" : "641", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_41_2_fu_567", "Parent" : "0", "Child" : ["642"],
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
	{"ID" : "642", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_41_2_fu_567.flow_control_loop_pipe_sequential_init_U", "Parent" : "641"},
	{"ID" : "643", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_1_fu_572", "Parent" : "0", "Child" : ["644"],
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
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_1_fu_572.flow_control_loop_pipe_sequential_init_U", "Parent" : "643"},
	{"ID" : "645", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578", "Parent" : "0", "Child" : ["646"],
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
	{"ID" : "646", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578.flow_control_loop_pipe_sequential_init_U", "Parent" : "645"},
	{"ID" : "647", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585", "Parent" : "0", "Child" : ["648", "649", "651", "653", "655", "657", "659"],
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
					{"ID" : "651", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "649", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "653", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "this_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "651", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "657", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Port" : "seedbuf", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "649", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "653", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "648", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.t_U", "Parent" : "647"},
	{"ID" : "649", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Parent" : "647", "Child" : ["650"],
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
	{"ID" : "650", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "649"},
	{"ID" : "651", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Parent" : "647", "Child" : ["652"],
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
	{"ID" : "652", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "651"},
	{"ID" : "653", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_KeccakF1600_StatePermute_fu_164", "Parent" : "647", "Child" : ["654"],
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
	{"ID" : "654", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_KeccakF1600_StatePermute_fu_164.KeccakF_RoundConstants_U", "Parent" : "653"},
	{"ID" : "655", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172", "Parent" : "647", "Child" : ["656"],
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
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "655"},
	{"ID" : "657", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Parent" : "647", "Child" : ["658"],
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
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "657"},
	{"ID" : "659", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187", "Parent" : "647", "Child" : ["660"],
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
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "659"},
	{"ID" : "661", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599", "Parent" : "0", "Child" : ["662"],
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
	{"ID" : "662", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599.flow_control_loop_pipe_sequential_init_U", "Parent" : "661"},
	{"ID" : "663", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_54_7_fu_606", "Parent" : "0", "Child" : ["664"],
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
	{"ID" : "664", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_54_7_fu_606.flow_control_loop_pipe_sequential_init_U", "Parent" : "663"},
	{"ID" : "665", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_8_fu_612", "Parent" : "0", "Child" : ["666"],
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
	{"ID" : "666", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_8_fu_612.flow_control_loop_pipe_sequential_init_U", "Parent" : "665"},
	{"ID" : "667", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_9_fu_619", "Parent" : "0", "Child" : ["668"],
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
	{"ID" : "668", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_9_fu_619.flow_control_loop_pipe_sequential_init_U", "Parent" : "667"},
	{"ID" : "669", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626", "Parent" : "0", "Child" : ["670"],
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
					{"ID" : "670", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "670", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "670", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626.grp_KeccakF1600_StatePermute_fu_178", "Parent" : "669", "Child" : ["671"],
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
	{"ID" : "671", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626.grp_KeccakF1600_StatePermute_fu_178.KeccakF_RoundConstants_U", "Parent" : "670"},
	{"ID" : "672", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_16_fu_635", "Parent" : "0", "Child" : ["673"],
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
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_16_fu_635.flow_control_loop_pipe_sequential_init_U", "Parent" : "672"},
	{"ID" : "674", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640", "Parent" : "0", "Child" : ["675", "676", "678", "680", "682", "684", "686", "688", "690", "692"],
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
					{"ID" : "684", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "682", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "this_s", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "686", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "15"},
					{"ID" : "680", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Port" : "this_s", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "682", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.t_U", "Parent" : "674"},
	{"ID" : "676", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241", "Parent" : "674", "Child" : ["677"],
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
	{"ID" : "677", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "676"},
	{"ID" : "678", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249", "Parent" : "674", "Child" : ["679"],
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
	{"ID" : "679", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "678"},
	{"ID" : "680", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Parent" : "674", "Child" : ["681"],
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
	{"ID" : "681", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "680"},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_KeccakF1600_StatePermute_fu_265", "Parent" : "674", "Child" : ["683"],
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
	{"ID" : "683", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_KeccakF1600_StatePermute_fu_265.KeccakF_RoundConstants_U", "Parent" : "682"},
	{"ID" : "684", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Parent" : "674", "Child" : ["685"],
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
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "684"},
	{"ID" : "686", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Parent" : "674", "Child" : ["687"],
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
	{"ID" : "687", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "686"},
	{"ID" : "688", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293", "Parent" : "674", "Child" : ["689"],
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
	{"ID" : "689", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "688"},
	{"ID" : "690", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298", "Parent" : "674", "Child" : ["691"],
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
	{"ID" : "691", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "690"},
	{"ID" : "692", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308", "Parent" : "674", "Child" : ["693"],
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
	{"ID" : "693", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "692"},
	{"ID" : "694", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_650", "Parent" : "0", "Child" : ["695"],
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
	{"ID" : "695", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_650.KeccakF_RoundConstants_U", "Parent" : "694"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_417_2_fu_657", "Parent" : "0", "Child" : ["697"],
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
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_417_2_fu_657.flow_control_loop_pipe_sequential_init_U", "Parent" : "696"},
	{"ID" : "698", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_503_2_fu_663", "Parent" : "0",
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
	{"ID" : "699", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_1_fu_671", "Parent" : "0", "Child" : ["700"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_95_1",
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
			{"Name" : "VITIS_LOOP_95_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "700", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_1_fu_671.flow_control_loop_pipe_sequential_init_U", "Parent" : "699"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679", "Parent" : "0", "Child" : ["702", "703", "717", "737", "739", "741"],
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
					{"ID" : "737", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_165", "Port" : "this_s", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "739", "SubInstance" : "grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173", "Port" : "this_s", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "717", "SubInstance" : "grp_shake_absorb_fu_153", "Port" : "this_s", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "703", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "a", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "741", "SubInstance" : "grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180", "Port" : "a", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "703", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "seedbuf", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "737", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_165", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "717", "SubInstance" : "grp_shake_absorb_fu_153", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "703", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_321_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_530_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.buf_U", "Parent" : "701"},
	{"ID" : "703", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139", "Parent" : "701", "Child" : ["704", "705", "707", "709", "711", "713", "715"],
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
					{"ID" : "707", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "705", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "709", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "this_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "707", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "713", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Port" : "seedbuf", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "705", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "709", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "704", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.t_U", "Parent" : "703"},
	{"ID" : "705", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Parent" : "703", "Child" : ["706"],
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
	{"ID" : "706", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "705"},
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Parent" : "703", "Child" : ["708"],
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
	{"ID" : "708", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "707"},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_KeccakF1600_StatePermute_fu_164", "Parent" : "703", "Child" : ["710"],
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
	{"ID" : "710", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_KeccakF1600_StatePermute_fu_164.KeccakF_RoundConstants_U", "Parent" : "709"},
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172", "Parent" : "703", "Child" : ["712"],
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
	{"ID" : "712", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "711"},
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Parent" : "703", "Child" : ["714"],
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
	{"ID" : "714", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "713"},
	{"ID" : "715", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187", "Parent" : "703", "Child" : ["716"],
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
	{"ID" : "716", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "715"},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153", "Parent" : "701", "Child" : ["718", "719", "721", "723", "725", "727", "729", "731", "733", "735"],
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
					{"ID" : "727", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "725", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "this_s", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "729", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "15"},
					{"ID" : "723", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Port" : "this_s", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "725", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.t_U", "Parent" : "717"},
	{"ID" : "719", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241", "Parent" : "717", "Child" : ["720"],
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
	{"ID" : "720", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "719"},
	{"ID" : "721", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249", "Parent" : "717", "Child" : ["722"],
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
	{"ID" : "722", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "721"},
	{"ID" : "723", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Parent" : "717", "Child" : ["724"],
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
	{"ID" : "724", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "723"},
	{"ID" : "725", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_KeccakF1600_StatePermute_fu_265", "Parent" : "717", "Child" : ["726"],
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
	{"ID" : "726", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_KeccakF1600_StatePermute_fu_265.KeccakF_RoundConstants_U", "Parent" : "725"},
	{"ID" : "727", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Parent" : "717", "Child" : ["728"],
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
	{"ID" : "728", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "727"},
	{"ID" : "729", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Parent" : "717", "Child" : ["730"],
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
	{"ID" : "730", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "729"},
	{"ID" : "731", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293", "Parent" : "717", "Child" : ["732"],
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
	{"ID" : "732", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "731"},
	{"ID" : "733", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298", "Parent" : "717", "Child" : ["734"],
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
	{"ID" : "734", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "733"},
	{"ID" : "735", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308", "Parent" : "717", "Child" : ["736"],
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
	{"ID" : "736", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "735"},
	{"ID" : "737", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_KeccakF1600_StatePermute_fu_165", "Parent" : "701", "Child" : ["738"],
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
	{"ID" : "738", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_KeccakF1600_StatePermute_fu_165.KeccakF_RoundConstants_U", "Parent" : "737"},
	{"ID" : "739", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173", "Parent" : "701", "Child" : ["740"],
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
	{"ID" : "740", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "739"},
	{"ID" : "741", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180", "Parent" : "701",
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
	{"ID" : "742", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_17_fu_690", "Parent" : "0", "Child" : ["743"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_95_17",
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
			{"Name" : "VITIS_LOOP_95_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "743", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_17_fu_690.flow_control_loop_pipe_sequential_init_U", "Parent" : "742"},
	{"ID" : "744", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_18_fu_698", "Parent" : "0", "Child" : ["745"],
		"CDFG" : "dpu_keygen_Pipeline_VITIS_LOOP_95_18",
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
			{"Name" : "VITIS_LOOP_95_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "745", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_18_fu_698.flow_control_loop_pipe_sequential_init_U", "Parent" : "744"},
	{"ID" : "746", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Parent" : "0", "Child" : ["747"],
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
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706.flow_control_loop_pipe_sequential_init_U", "Parent" : "746"},
	{"ID" : "748", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_110_fu_714", "Parent" : "0", "Child" : ["749"],
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
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_110_fu_714.flow_control_loop_pipe_sequential_init_U", "Parent" : "748"},
	{"ID" : "750", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_19_fu_719", "Parent" : "0", "Child" : ["751"],
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
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_19_fu_719.flow_control_loop_pipe_sequential_init_U", "Parent" : "750"},
	{"ID" : "752", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Parent" : "0", "Child" : ["753"],
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
	{"ID" : "753", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727.flow_control_loop_pipe_sequential_init_U", "Parent" : "752"},
	{"ID" : "754", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Parent" : "0", "Child" : ["755"],
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
	{"ID" : "755", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735.flow_control_loop_pipe_sequential_init_U", "Parent" : "754"},
	{"ID" : "756", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743", "Parent" : "0", "Child" : ["757", "759"],
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
					{"ID" : "759", "SubInstance" : "grp_dpu_pack_Pipeline_VITIS_LOOP_605_2_fu_87", "Port" : "pk", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "759", "SubInstance" : "grp_dpu_pack_Pipeline_VITIS_LOOP_605_2_fu_87", "Port" : "ptr", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_603_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_73_1_fu_79", "Parent" : "756", "Child" : ["758"],
		"CDFG" : "dpu_pack_Pipeline_VITIS_LOOP_73_1",
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
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "758", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_73_1_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "757"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_605_2_fu_87", "Parent" : "756", "Child" : ["760"],
		"CDFG" : "dpu_pack_Pipeline_VITIS_LOOP_605_2",
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
			{"Name" : "VITIS_LOOP_605_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "760", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_605_2_fu_87.flow_control_loop_pipe_sequential_init_U", "Parent" : "759"},
	{"ID" : "761", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752", "Parent" : "0", "Child" : ["762", "764", "766"],
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
					{"ID" : "766", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_67", "Port" : "this_s", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "762", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "764", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "6"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "762", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Port" : "pk", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "764", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Port" : "pk", "Inst_start_state" : "2", "Inst_end_state" : "6"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "766", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_67", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Parent" : "761", "Child" : ["763"],
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
	{"ID" : "763", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "762"},
	{"ID" : "764", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Parent" : "761", "Child" : ["765"],
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
	{"ID" : "765", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "764"},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_KeccakF1600_StatePermute_fu_67", "Parent" : "761", "Child" : ["767"],
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
	{"ID" : "767", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_KeccakF1600_StatePermute_fu_67.KeccakF_RoundConstants_U", "Parent" : "766"},
	{"ID" : "768", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761", "Parent" : "0", "Child" : ["769"],
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
					{"ID" : "769", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_170", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "769", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_170", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "769", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761.grp_KeccakF1600_StatePermute_fu_170", "Parent" : "768", "Child" : ["770"],
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
	{"ID" : "770", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761.grp_KeccakF1600_StatePermute_fu_170.KeccakF_RoundConstants_U", "Parent" : "769"},
	{"ID" : "771", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769", "Parent" : "0", "Child" : ["772"],
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
	{"ID" : "772", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769.flow_control_loop_pipe_sequential_init_U", "Parent" : "771"},
	{"ID" : "773", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776", "Parent" : "0", "Child" : ["774", "776", "778", "780", "782", "784", "786", "788", "790", "792"],
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
					{"ID" : "788", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_14_fu_296", "Port" : "this_0", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "776", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_1_fu_244", "Port" : "this_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "786", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_709_12_fu_286", "Port" : "sk", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "774", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_666_8_fu_234", "Port" : "sk", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "780", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_693_10_fu_260", "Port" : "sk", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "784", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_723_14_fu_277", "Port" : "sk", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "792", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_630_6_fu_312", "Port" : "sk", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "ptrs", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "786", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_709_12_fu_286", "Port" : "ptr", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "774", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_666_8_fu_234", "Port" : "ptr", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "780", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_693_10_fu_260", "Port" : "ptr", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "784", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_723_14_fu_277", "Port" : "ptr", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "792", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_630_6_fu_312", "Port" : "ptr", "Inst_start_state" : "23", "Inst_end_state" : "24"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_628_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_665_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_691_9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_708_11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state16", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state16"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_721_13", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "774", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_666_8_fu_234", "Parent" : "773", "Child" : ["775"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_666_8",
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
			{"Name" : "VITIS_LOOP_666_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "775", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_666_8_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "774"},
	{"ID" : "776", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_1_fu_244", "Parent" : "773", "Child" : ["777"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "idxprom2_i75", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_5_7_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "777", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_1_fu_244.flow_control_loop_pipe_sequential_init_U", "Parent" : "776"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_13_fu_252", "Parent" : "773", "Child" : ["779"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_73_13",
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
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "779", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_13_fu_252.flow_control_loop_pipe_sequential_init_U", "Parent" : "778"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_693_10_fu_260", "Parent" : "773", "Child" : ["781"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_693_10",
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
			{"Name" : "VITIS_LOOP_693_10", "PipelineType" : "NotSupport"}]},
	{"ID" : "781", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_693_10_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "780"},
	{"ID" : "782", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_15_fu_269", "Parent" : "773", "Child" : ["783"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_73_15",
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
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "783", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_15_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "782"},
	{"ID" : "784", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_723_14_fu_277", "Parent" : "773", "Child" : ["785"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_723_14",
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
			{"Name" : "VITIS_LOOP_723_14", "PipelineType" : "NotSupport"}]},
	{"ID" : "785", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_723_14_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "784"},
	{"ID" : "786", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_709_12_fu_286", "Parent" : "773", "Child" : ["787"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_709_12",
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
			{"Name" : "VITIS_LOOP_709_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "787", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_709_12_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "786"},
	{"ID" : "788", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_14_fu_296", "Parent" : "773", "Child" : ["789"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_91_14",
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
			{"Name" : "idxprom2_i93", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_5_11_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "789", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_14_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "788"},
	{"ID" : "790", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_1_fu_304", "Parent" : "773", "Child" : ["791"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_73_1",
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
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "791", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_1_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "790"},
	{"ID" : "792", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_630_6_fu_312", "Parent" : "773", "Child" : ["793"],
		"CDFG" : "dpu_pack_4_Pipeline_VITIS_LOOP_630_6",
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
			{"Name" : "VITIS_LOOP_630_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "793", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_630_6_fu_312.flow_control_loop_pipe_sequential_init_U", "Parent" : "792"}]}


set ArgLastReadFirstWriteLatency {
	dpu_keygen {
		pk {Type IO LastRead 4 FirstWrite -1}
		sk {Type IO LastRead 7 FirstWrite -1}
		seedbuf {Type IO LastRead 4 FirstWrite -1}
		zetas {Type I LastRead -1 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}
		ptr {Type IO LastRead -1 FirstWrite -1}}
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
	dpu_func_Pipeline_FUNC_INTT_LOOP1 {
		this_3_26 {Type I LastRead 0 FirstWrite -1}
		this_4_26 {Type I LastRead 0 FirstWrite -1}
		this_1_25 {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_27_out {Type O LastRead -1 FirstWrite 0}
		this_4_27_out {Type O LastRead -1 FirstWrite 0}
		this_1_26_out {Type O LastRead -1 FirstWrite 0}}
	read_intt {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP2 {
		this_3_27_reload {Type I LastRead 0 FirstWrite -1}
		this_4_27_reload {Type I LastRead 0 FirstWrite -1}
		this_1_26_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		call_ret28 {Type I LastRead 0 FirstWrite -1}
		this_3_28_out {Type O LastRead -1 FirstWrite 0}
		this_4_28_out {Type O LastRead -1 FirstWrite 0}
		this_1_27_out {Type O LastRead -1 FirstWrite 0}}
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
		this_3_28_reload {Type I LastRead 0 FirstWrite -1}
		this_4_28_reload {Type I LastRead 0 FirstWrite -1}
		this_1_27_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret42 {Type I LastRead 0 FirstWrite -1}
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
	dpu_func_Pipeline_FUNC_INTT_LOOP4 {
		this_3_29_reload {Type I LastRead 0 FirstWrite -1}
		this_4_29_reload {Type I LastRead 0 FirstWrite -1}
		this_1_28_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret51 {Type I LastRead 0 FirstWrite -1}
		this_3_30_out {Type O LastRead -1 FirstWrite 0}
		this_4_30_out {Type O LastRead -1 FirstWrite 0}
		this_1_29_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_INTT_LOOP5 {
		this_3_30_reload {Type I LastRead 0 FirstWrite -1}
		this_4_30_reload {Type I LastRead 0 FirstWrite -1}
		this_1_29_reload {Type I LastRead 0 FirstWrite -1}
		call_ret51 {Type I LastRead 0 FirstWrite -1}
		trunc_ln53 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_31_out {Type O LastRead -1 FirstWrite 0}
		this_4_31_out {Type IO LastRead 5 FirstWrite 0}
		this_1_30_out {Type O LastRead -1 FirstWrite 0}
		this_2_16_out {Type O LastRead -1 FirstWrite 0}}
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
		this_3_19 {Type I LastRead 0 FirstWrite -1}
		this_4_19 {Type I LastRead 0 FirstWrite -1}
		this_1_18 {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		call_ret15 {Type I LastRead 0 FirstWrite -1}
		this_3_20_out {Type O LastRead -1 FirstWrite 0}
		this_4_20_out {Type O LastRead -1 FirstWrite 0}
		this_1_19_out {Type O LastRead -1 FirstWrite 0}}
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
		this_3_20_reload {Type I LastRead 0 FirstWrite -1}
		this_4_20_reload {Type I LastRead 0 FirstWrite -1}
		this_1_19_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret25 {Type I LastRead 0 FirstWrite -1}
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
	dpu_func_Pipeline_FUNC_NTT_LOOP3 {
		this_3_21_reload {Type I LastRead 0 FirstWrite -1}
		this_4_21_reload {Type I LastRead 0 FirstWrite -1}
		this_1_20_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret39 {Type I LastRead 0 FirstWrite -1}
		this_3_22_out {Type O LastRead -1 FirstWrite 0}
		this_4_22_out {Type O LastRead -1 FirstWrite 0}
		this_1_21_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_NTT_LOOP4 {
		this_3_22_reload {Type I LastRead 0 FirstWrite -1}
		this_4_22_reload {Type I LastRead 0 FirstWrite -1}
		this_1_21_reload {Type I LastRead 0 FirstWrite -1}
		call_ret39 {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_23_out {Type O LastRead -1 FirstWrite 0}
		this_4_23_out {Type O LastRead -1 FirstWrite 0}
		this_1_22_out {Type O LastRead -1 FirstWrite 0}
		this_2_11_out {Type O LastRead -1 FirstWrite 0}}
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
		this_3_23_reload {Type I LastRead 0 FirstWrite -1}
		this_4_23_reload {Type I LastRead 0 FirstWrite -1}
		this_1_22_reload {Type I LastRead 0 FirstWrite -1}
		this_2_11_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln52 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_24_out {Type O LastRead -1 FirstWrite 0}
		this_4_24_out {Type IO LastRead 3 FirstWrite 0}
		this_1_23_out {Type O LastRead -1 FirstWrite 0}
		this_2_12_out {Type O LastRead -1 FirstWrite 0}}
	read_ntt {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln51 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_18_out {Type O LastRead -1 FirstWrite 0}
		this_4_18_out {Type O LastRead -1 FirstWrite 0}
		this_1_17_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
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
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_CADDQ_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln50 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		this_3_17_out {Type O LastRead -1 FirstWrite 0}
		this_4_17_out {Type O LastRead -1 FirstWrite 0}
		this_1_16_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP1 {
		this_3_9 {Type I LastRead 0 FirstWrite -1}
		this_4_9 {Type I LastRead 0 FirstWrite -1}
		this_1_9 {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		zext_ln230_2 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_10_out {Type O LastRead -1 FirstWrite 0}
		this_4_10_out {Type O LastRead -1 FirstWrite 0}
		this_1_10_out {Type O LastRead -1 FirstWrite 0}}
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
		this_3_10_reload {Type I LastRead 0 FirstWrite -1}
		this_4_10_reload {Type I LastRead 0 FirstWrite -1}
		this_1_10_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret21 {Type I LastRead 0 FirstWrite -1}
		this_3_11_out {Type O LastRead -1 FirstWrite 0}
		this_4_11_out {Type O LastRead -1 FirstWrite 0}
		this_1_11_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP3 {
		this_3_11_reload {Type I LastRead 0 FirstWrite -1}
		this_4_11_reload {Type I LastRead 0 FirstWrite -1}
		this_1_11_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret36 {Type I LastRead 0 FirstWrite -1}
		this_3_12_out {Type O LastRead -1 FirstWrite 0}
		this_4_12_out {Type O LastRead -1 FirstWrite 0}
		this_1_12_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MATMUL_LOOP4 {
		this_3_12_reload {Type I LastRead 0 FirstWrite -1}
		this_4_12_reload {Type I LastRead 0 FirstWrite -1}
		this_1_12_reload {Type I LastRead 0 FirstWrite -1}
		call_ret36 {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		this_3_13_out {Type O LastRead -1 FirstWrite 0}
		this_4_13_out {Type O LastRead -1 FirstWrite 0}
		this_1_13_out {Type O LastRead -1 FirstWrite 0}
		this_2_7_out {Type O LastRead -1 FirstWrite 0}}
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
		this_3_13_reload {Type I LastRead 0 FirstWrite -1}
		this_4_13_reload {Type I LastRead 0 FirstWrite -1}
		this_1_13_reload {Type I LastRead 0 FirstWrite -1}
		this_2_7_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln49 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		this_3_15_out {Type O LastRead -1 FirstWrite 0}
		this_4_15_out {Type IO LastRead 5 FirstWrite 0}
		this_1_15_out {Type O LastRead -1 FirstWrite 0}
		this_2_9_out {Type O LastRead -1 FirstWrite 0}}
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
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		addr2_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_5_out {Type O LastRead -1 FirstWrite 0}
		this_4_5_out {Type O LastRead -1 FirstWrite 0}
		this_1_5_out {Type O LastRead -1 FirstWrite 0}}
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
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP2 {
		this_3_5_reload {Type I LastRead 0 FirstWrite -1}
		this_4_5_reload {Type I LastRead 0 FirstWrite -1}
		this_1_5_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret1 {Type I LastRead 0 FirstWrite -1}
		this_3_6_out {Type O LastRead -1 FirstWrite 0}
		this_4_6_out {Type O LastRead -1 FirstWrite 0}
		this_1_6_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP3 {
		this_3_6_reload {Type I LastRead 0 FirstWrite -1}
		this_4_6_reload {Type I LastRead 0 FirstWrite -1}
		this_1_6_reload {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		call_ret18 {Type I LastRead 0 FirstWrite -1}
		this_3_7_out {Type O LastRead -1 FirstWrite 0}
		this_4_7_out {Type O LastRead -1 FirstWrite 0}
		this_1_7_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p4 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_MONTMUL_LOOP4 {
		this_3_7_reload {Type I LastRead 0 FirstWrite -1}
		this_4_7_reload {Type I LastRead 0 FirstWrite -1}
		this_1_7_reload {Type I LastRead 0 FirstWrite -1}
		call_ret18 {Type I LastRead 0 FirstWrite -1}
		trunc_ln48 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr3_cast_cast {Type I LastRead 0 FirstWrite -1}
		this_3_8_out {Type O LastRead -1 FirstWrite 0}
		this_4_8_out {Type O LastRead -1 FirstWrite 0}
		this_1_8_out {Type O LastRead -1 FirstWrite 0}
		this_2_4_out {Type O LastRead -1 FirstWrite 0}}
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
	dpu_func_Pipeline_FUNC_RD_LOOP1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		this_3_1_out {Type O LastRead -1 FirstWrite 0}
		this_4_1_out {Type O LastRead -1 FirstWrite 0}
		this_1_1_out {Type O LastRead -1 FirstWrite 0}}
	read_p1 {
		this_pMem {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}
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
		addr {Type I LastRead 0 FirstWrite -1}}
	dpu_func_Pipeline_FUNC_RD_LOOP3 {
		this_3_2_reload {Type I LastRead 0 FirstWrite -1}
		this_4_2_reload {Type I LastRead 0 FirstWrite -1}
		this_1_2_reload {Type I LastRead 0 FirstWrite -1}
		call_ret7 {Type I LastRead 0 FirstWrite -1}
		trunc_ln47 {Type I LastRead 0 FirstWrite -1}
		this_0 {Type IO LastRead 0 FirstWrite -1}
		addr1 {Type I LastRead 0 FirstWrite -1}
		this_3_3_out {Type O LastRead -1 FirstWrite 0}
		this_4_3_out {Type O LastRead -1 FirstWrite 0}
		this_1_3_out {Type O LastRead -1 FirstWrite 0}
		this_2_1_out {Type O LastRead -1 FirstWrite 0}}
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
	dpu_unit {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
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
	dpu_keygen_Pipeline_VITIS_LOOP_95_1 {
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
	dpu_keygen_Pipeline_VITIS_LOOP_95_17 {
		this_pMem_load_5 {Type I LastRead 0 FirstWrite -1}
		tmp2 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_95_18 {
		this_pMem_load_7 {Type I LastRead 0 FirstWrite -1}
		tmp2 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_55_5 {
		seedbuf {Type I LastRead 0 FirstWrite -1}
		pk {Type O LastRead -1 FirstWrite 1}}
	dpu_keygen_Pipeline_VITIS_LOOP_321_110 {
		spu_s {Type O LastRead -1 FirstWrite 0}}
	dpu_keygen_Pipeline_VITIS_LOOP_95_19 {
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
	dpu_pack_Pipeline_VITIS_LOOP_73_1 {
		this_5_0 {Type I LastRead 0 FirstWrite -1}
		this_0_load {Type I LastRead 0 FirstWrite -1}
		this_5_1_out {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_Pipeline_VITIS_LOOP_605_2 {
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
	dpu_pack_4_Pipeline_VITIS_LOOP_666_8 {
		this_5_6 {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 7 FirstWrite -1}
		this_5_7_out {Type O LastRead -1 FirstWrite 1}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_91_1 {
		this_0 {Type O LastRead -1 FirstWrite 0}
		idxprom2_i75 {Type I LastRead 0 FirstWrite -1}
		this_5_7_reload {Type I LastRead 0 FirstWrite -1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_73_13 {
		this_5_8 {Type I LastRead 0 FirstWrite -1}
		this_0_load_2 {Type I LastRead 0 FirstWrite -1}
		this_5_9_out {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_693_10 {
		this_5_9_reload {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_73_15 {
		this_5_12 {Type I LastRead 0 FirstWrite -1}
		this_0_load_1 {Type I LastRead 0 FirstWrite -1}
		this_5_13_out {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_723_14 {
		this_5_13_reload {Type I LastRead 0 FirstWrite -1}
		sk {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_709_12 {
		this_5_10 {Type I LastRead 0 FirstWrite -1}
		sk {Type I LastRead 3 FirstWrite -1}
		this_5_11_out {Type O LastRead -1 FirstWrite 0}
		ptr {Type IO LastRead 0 FirstWrite 0}}
	dpu_pack_4_Pipeline_VITIS_LOOP_91_14 {
		this_0 {Type O LastRead -1 FirstWrite 0}
		idxprom2_i93 {Type I LastRead 0 FirstWrite -1}
		this_5_11_reload {Type I LastRead 0 FirstWrite -1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_73_1 {
		this_5_4 {Type I LastRead 0 FirstWrite -1}
		this_0_load {Type I LastRead 0 FirstWrite -1}
		this_5_5_out {Type O LastRead -1 FirstWrite 1}}
	dpu_pack_4_Pipeline_VITIS_LOOP_630_6 {
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
