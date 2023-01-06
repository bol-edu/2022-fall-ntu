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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "901", "903", "905", "907", "909", "923", "925", "927", "929", "931", "934", "936", "956", "958", "960", "961", "963", "1004", "1006", "1008", "1010", "1012", "1014", "1016", "1018", "1023", "1030", "1033", "1035"],
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
					{"ID" : "1008", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Port" : "pk", "Inst_start_state" : "42", "Inst_end_state" : "46"},
					{"ID" : "1018", "SubInstance" : "grp_dpu_pack_fu_743", "Port" : "pk", "Inst_start_state" : "61", "Inst_end_state" : "62"},
					{"ID" : "1023", "SubInstance" : "grp_shake_absorb_3_fu_752", "Port" : "pk", "Inst_start_state" : "63", "Inst_end_state" : "64"}]},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1014", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Port" : "sk", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "1016", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Port" : "sk", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "1033", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769", "Port" : "sk", "Inst_start_state" : "69", "Inst_end_state" : "70"},
					{"ID" : "1035", "SubInstance" : "grp_dpu_pack_4_fu_776", "Port" : "sk", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "963", "SubInstance" : "grp_sample_eta_fu_679", "Port" : "seedbuf", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "1008", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Port" : "seedbuf", "Inst_start_state" : "42", "Inst_end_state" : "46"},
					{"ID" : "1014", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Port" : "seedbuf", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "1016", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Port" : "seedbuf", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "909", "SubInstance" : "grp_shake_absorb_1_fu_585", "Port" : "seedbuf", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "931", "SubInstance" : "grp_shake_squeeze_2_fu_626", "Port" : "seedbuf", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "zetas", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "923", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599", "Port" : "zetas", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "907", "SubInstance" : "grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578", "Port" : "zetas", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "956", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_650", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "963", "SubInstance" : "grp_sample_eta_fu_679", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "1023", "SubInstance" : "grp_shake_absorb_3_fu_752", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "63", "Inst_end_state" : "64"},
					{"ID" : "936", "SubInstance" : "grp_shake_absorb_fu_640", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "909", "SubInstance" : "grp_shake_absorb_1_fu_585", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "931", "SubInstance" : "grp_shake_squeeze_2_fu_626", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "1030", "SubInstance" : "grp_shake_squeeze_fu_761", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1018", "SubInstance" : "grp_dpu_pack_fu_743", "Port" : "ptr", "Inst_start_state" : "61", "Inst_end_state" : "62"},
					{"ID" : "1035", "SubInstance" : "grp_dpu_pack_4_fu_776", "Port" : "ptr", "Inst_start_state" : "75", "Inst_end_state" : "76"}]}],
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
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460", "Parent" : "0", "Child" : ["10", "11", "16", "20", "26", "30", "292", "297", "302", "306", "310", "315", "319", "325", "329", "333", "338", "343", "347", "351", "356", "360", "365", "369", "374", "378", "382", "387", "644"],
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
					{"ID" : "20", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "92"},
					{"ID" : "333", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961", "Port" : "this_0", "Inst_start_state" : "88", "Inst_end_state" : "89"},
					{"ID" : "356", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036", "Port" : "this_0", "Inst_start_state" : "132", "Inst_end_state" : "133"},
					{"ID" : "365", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066", "Port" : "this_0", "Inst_start_state" : "137", "Inst_end_state" : "138"},
					{"ID" : "382", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123", "Port" : "this_0", "Inst_start_state" : "151", "Inst_end_state" : "152"},
					{"ID" : "30", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "92"},
					{"ID" : "292", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "153"},
					{"ID" : "310", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885", "Port" : "this_0", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "351", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020", "Port" : "this_0", "Inst_start_state" : "128", "Inst_end_state" : "129"},
					{"ID" : "16", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "369", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080", "Port" : "this_0", "Inst_start_state" : "141", "Inst_end_state" : "142"},
					{"ID" : "329", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947", "Port" : "this_0", "Inst_start_state" : "86", "Inst_end_state" : "87"},
					{"ID" : "360", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050", "Port" : "this_0", "Inst_start_state" : "134", "Inst_end_state" : "135"},
					{"ID" : "315", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901", "Port" : "this_0", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "374", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095", "Port" : "this_0", "Inst_start_state" : "145", "Inst_end_state" : "146"},
					{"ID" : "11", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "19"},
					{"ID" : "378", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109", "Port" : "this_0", "Inst_start_state" : "149", "Inst_end_state" : "150"},
					{"ID" : "325", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933", "Port" : "this_0", "Inst_start_state" : "82", "Inst_end_state" : "83"},
					{"ID" : "338", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976", "Port" : "this_0", "Inst_start_state" : "90", "Inst_end_state" : "91"},
					{"ID" : "319", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917", "Port" : "this_0", "Inst_start_state" : "64", "Inst_end_state" : "65"},
					{"ID" : "302", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857", "Port" : "this_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "343", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992", "Port" : "this_0", "Inst_start_state" : "122", "Inst_end_state" : "123"},
					{"ID" : "297", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842", "Port" : "this_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "26", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776", "Port" : "this_0", "Inst_start_state" : "1", "Inst_end_state" : "92"},
					{"ID" : "10", "SubInstance" : "grp_read_p2_fu_664", "Port" : "this_pMem", "Inst_start_state" : "147", "Inst_end_state" : "148"},
					{"ID" : "347", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006", "Port" : "this_0", "Inst_start_state" : "126", "Inst_end_state" : "127"},
					{"ID" : "306", "SubInstance" : "grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871", "Port" : "this_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_read_p2_fu_664", "Parent" : "9",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715", "Parent" : "9", "Child" : ["12", "13", "14", "15"],
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
					{"ID" : "12", "SubInstance" : "grp_read_p1_fu_165", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "14", "SubInstance" : "call_ln291_write_p4_fu_189", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"},
					{"ID" : "13", "SubInstance" : "call_ln290_write_p3_fu_181", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715.grp_read_p1_fu_165", "Parent" : "11",
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715.call_ln290_write_p3_fu_181", "Parent" : "11",
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715.call_ln291_write_p4_fu_189", "Parent" : "11",
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_POW2ROUND_LOOP1_fu_715.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737", "Parent" : "9", "Child" : ["17", "18", "19"],
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
					{"ID" : "18", "SubInstance" : "call_ln281_write_p3_fu_161", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "17", "SubInstance" : "grp_read_p1_fu_145", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_CADDQ_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737.grp_read_p1_fu_145", "Parent" : "16",
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737.call_ln281_write_p3_fu_161", "Parent" : "16",
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_CADDQ_LOOP1_fu_737.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757", "Parent" : "9", "Child" : ["21", "22", "23", "24", "25"],
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
					{"ID" : "22", "SubInstance" : "grp_read_p2_fu_162", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "21", "SubInstance" : "grp_read_p1_fu_155", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "call_ln193_write_p3_fu_178", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "24", "SubInstance" : "call_ln194_write_p4_fu_186", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.grp_read_p1_fu_155", "Parent" : "20",
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
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.grp_read_p2_fu_162", "Parent" : "20",
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
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.call_ln193_write_p3_fu_178", "Parent" : "20",
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.call_ln194_write_p4_fu_186", "Parent" : "20",
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP1_fu_757.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776", "Parent" : "9", "Child" : ["27", "28", "29"],
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
					{"ID" : "27", "SubInstance" : "grp_read_p1_fu_147", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "28", "SubInstance" : "call_ln164_write_p3_fu_163", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776.grp_read_p1_fu_147", "Parent" : "26",
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776.call_ln164_write_p3_fu_163", "Parent" : "26",
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP1_fu_776.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796", "Parent" : "9", "Child" : ["31", "32", "33", "290", "291"],
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
					{"ID" : "32", "SubInstance" : "grp_read_p2_fu_185", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "290", "SubInstance" : "call_ln154_write_p3_fu_201", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "31", "SubInstance" : "grp_read_p1_fu_178", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_read_p1_fu_178", "Parent" : "30",
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_read_p2_fu_185", "Parent" : "30",
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192", "Parent" : "30", "Child" : ["34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289"],
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
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U109", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U110", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U111", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U112", "Parent" : "33"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U113", "Parent" : "33"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U114", "Parent" : "33"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U115", "Parent" : "33"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U116", "Parent" : "33"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U117", "Parent" : "33"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U118", "Parent" : "33"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U119", "Parent" : "33"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U120", "Parent" : "33"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U121", "Parent" : "33"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U122", "Parent" : "33"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U123", "Parent" : "33"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U124", "Parent" : "33"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U125", "Parent" : "33"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U126", "Parent" : "33"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U127", "Parent" : "33"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U128", "Parent" : "33"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U129", "Parent" : "33"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U130", "Parent" : "33"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U131", "Parent" : "33"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U132", "Parent" : "33"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U133", "Parent" : "33"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U134", "Parent" : "33"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U135", "Parent" : "33"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U136", "Parent" : "33"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U137", "Parent" : "33"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U138", "Parent" : "33"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U139", "Parent" : "33"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U140", "Parent" : "33"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U141", "Parent" : "33"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U142", "Parent" : "33"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U143", "Parent" : "33"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U144", "Parent" : "33"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U145", "Parent" : "33"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U146", "Parent" : "33"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U147", "Parent" : "33"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U148", "Parent" : "33"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U149", "Parent" : "33"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U150", "Parent" : "33"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U151", "Parent" : "33"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U152", "Parent" : "33"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U153", "Parent" : "33"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U154", "Parent" : "33"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U155", "Parent" : "33"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U156", "Parent" : "33"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U157", "Parent" : "33"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U158", "Parent" : "33"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U159", "Parent" : "33"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U160", "Parent" : "33"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U161", "Parent" : "33"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U162", "Parent" : "33"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U163", "Parent" : "33"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U164", "Parent" : "33"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U165", "Parent" : "33"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U166", "Parent" : "33"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U167", "Parent" : "33"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U168", "Parent" : "33"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U169", "Parent" : "33"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U170", "Parent" : "33"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U171", "Parent" : "33"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U172", "Parent" : "33"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U173", "Parent" : "33"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U174", "Parent" : "33"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U175", "Parent" : "33"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U176", "Parent" : "33"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U177", "Parent" : "33"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U178", "Parent" : "33"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U179", "Parent" : "33"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U180", "Parent" : "33"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U181", "Parent" : "33"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U182", "Parent" : "33"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U183", "Parent" : "33"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U184", "Parent" : "33"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U185", "Parent" : "33"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U186", "Parent" : "33"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U187", "Parent" : "33"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U188", "Parent" : "33"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U189", "Parent" : "33"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U190", "Parent" : "33"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U191", "Parent" : "33"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U192", "Parent" : "33"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U193", "Parent" : "33"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U194", "Parent" : "33"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U195", "Parent" : "33"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U196", "Parent" : "33"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U197", "Parent" : "33"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U198", "Parent" : "33"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U199", "Parent" : "33"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U200", "Parent" : "33"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U201", "Parent" : "33"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U202", "Parent" : "33"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U203", "Parent" : "33"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U204", "Parent" : "33"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U205", "Parent" : "33"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U206", "Parent" : "33"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U207", "Parent" : "33"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U208", "Parent" : "33"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U209", "Parent" : "33"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U210", "Parent" : "33"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U211", "Parent" : "33"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U212", "Parent" : "33"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U213", "Parent" : "33"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U214", "Parent" : "33"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U215", "Parent" : "33"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U216", "Parent" : "33"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U217", "Parent" : "33"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U218", "Parent" : "33"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U219", "Parent" : "33"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U220", "Parent" : "33"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U221", "Parent" : "33"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U222", "Parent" : "33"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U223", "Parent" : "33"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U224", "Parent" : "33"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U225", "Parent" : "33"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U226", "Parent" : "33"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U227", "Parent" : "33"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U228", "Parent" : "33"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U229", "Parent" : "33"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U230", "Parent" : "33"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U231", "Parent" : "33"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U232", "Parent" : "33"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U233", "Parent" : "33"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U234", "Parent" : "33"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U235", "Parent" : "33"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U236", "Parent" : "33"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U237", "Parent" : "33"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U238", "Parent" : "33"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U239", "Parent" : "33"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U240", "Parent" : "33"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U241", "Parent" : "33"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U242", "Parent" : "33"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U243", "Parent" : "33"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U244", "Parent" : "33"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U245", "Parent" : "33"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U246", "Parent" : "33"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U247", "Parent" : "33"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U248", "Parent" : "33"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U249", "Parent" : "33"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U250", "Parent" : "33"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U251", "Parent" : "33"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U252", "Parent" : "33"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U253", "Parent" : "33"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U254", "Parent" : "33"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U255", "Parent" : "33"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U256", "Parent" : "33"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U257", "Parent" : "33"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U258", "Parent" : "33"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U259", "Parent" : "33"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U260", "Parent" : "33"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U261", "Parent" : "33"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U262", "Parent" : "33"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U263", "Parent" : "33"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U264", "Parent" : "33"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U265", "Parent" : "33"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U266", "Parent" : "33"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U267", "Parent" : "33"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U268", "Parent" : "33"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U269", "Parent" : "33"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U270", "Parent" : "33"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U271", "Parent" : "33"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U272", "Parent" : "33"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U273", "Parent" : "33"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U274", "Parent" : "33"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U275", "Parent" : "33"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U276", "Parent" : "33"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U277", "Parent" : "33"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U278", "Parent" : "33"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U279", "Parent" : "33"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U280", "Parent" : "33"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U281", "Parent" : "33"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U282", "Parent" : "33"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U283", "Parent" : "33"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U284", "Parent" : "33"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U285", "Parent" : "33"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U286", "Parent" : "33"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U287", "Parent" : "33"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U288", "Parent" : "33"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U289", "Parent" : "33"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U290", "Parent" : "33"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U291", "Parent" : "33"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U292", "Parent" : "33"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U293", "Parent" : "33"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U294", "Parent" : "33"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U295", "Parent" : "33"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U296", "Parent" : "33"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U297", "Parent" : "33"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U298", "Parent" : "33"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U299", "Parent" : "33"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U300", "Parent" : "33"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U301", "Parent" : "33"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U302", "Parent" : "33"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U303", "Parent" : "33"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U304", "Parent" : "33"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U305", "Parent" : "33"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U306", "Parent" : "33"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U307", "Parent" : "33"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U308", "Parent" : "33"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U309", "Parent" : "33"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U310", "Parent" : "33"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U311", "Parent" : "33"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U312", "Parent" : "33"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U313", "Parent" : "33"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U314", "Parent" : "33"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U315", "Parent" : "33"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U316", "Parent" : "33"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U317", "Parent" : "33"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U318", "Parent" : "33"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U319", "Parent" : "33"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U320", "Parent" : "33"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U321", "Parent" : "33"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U322", "Parent" : "33"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U323", "Parent" : "33"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U324", "Parent" : "33"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U325", "Parent" : "33"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U326", "Parent" : "33"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U327", "Parent" : "33"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U328", "Parent" : "33"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U329", "Parent" : "33"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U330", "Parent" : "33"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U331", "Parent" : "33"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U332", "Parent" : "33"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U333", "Parent" : "33"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U334", "Parent" : "33"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U335", "Parent" : "33"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U336", "Parent" : "33"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U337", "Parent" : "33"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U338", "Parent" : "33"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U339", "Parent" : "33"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U340", "Parent" : "33"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U341", "Parent" : "33"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U342", "Parent" : "33"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U343", "Parent" : "33"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U344", "Parent" : "33"},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U345", "Parent" : "33"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U346", "Parent" : "33"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U347", "Parent" : "33"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U348", "Parent" : "33"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U349", "Parent" : "33"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U350", "Parent" : "33"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U351", "Parent" : "33"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U352", "Parent" : "33"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U353", "Parent" : "33"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U354", "Parent" : "33"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U355", "Parent" : "33"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U356", "Parent" : "33"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U357", "Parent" : "33"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U358", "Parent" : "33"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U359", "Parent" : "33"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U360", "Parent" : "33"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U361", "Parent" : "33"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U362", "Parent" : "33"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U363", "Parent" : "33"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.grp_dpu_unit_fu_192.mul_32s_32s_64_1_0_U364", "Parent" : "33"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.call_ln154_write_p3_fu_201", "Parent" : "30",
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
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_SUB_LOOP1_fu_796.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819", "Parent" : "9", "Child" : ["293", "294", "295", "296"],
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
					{"ID" : "293", "SubInstance" : "grp_read_p1_fu_178", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "295", "SubInstance" : "call_ln144_write_p3_fu_201", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "294", "SubInstance" : "grp_read_p2_fu_185", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
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
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819.grp_read_p1_fu_178", "Parent" : "292",
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
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819.grp_read_p2_fu_185", "Parent" : "292",
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
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819.call_ln144_write_p3_fu_201", "Parent" : "292",
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
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_ADD_LOOP1_fu_819.flow_control_loop_pipe_sequential_init_U", "Parent" : "292"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842", "Parent" : "9", "Child" : ["298", "299", "300", "301"],
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
					{"ID" : "299", "SubInstance" : "call_ln302_write_p3_fu_167", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "298", "SubInstance" : "grp_read_p1_fu_151", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "300", "SubInstance" : "call_ln303_write_p4_fu_175", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret18", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842.grp_read_p1_fu_151", "Parent" : "297",
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
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842.call_ln302_write_p3_fu_167", "Parent" : "297",
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
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842.call_ln303_write_p4_fu_175", "Parent" : "297",
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
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP1_fu_842.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857", "Parent" : "9", "Child" : ["303", "304", "305"],
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
					{"ID" : "304", "SubInstance" : "call_ln312_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "303", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret29", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857.grp_read_p1_fu_137", "Parent" : "302",
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
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857.call_ln312_write_p3_fu_153", "Parent" : "302",
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
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP2_fu_857.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871", "Parent" : "9", "Child" : ["307", "308", "309"],
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
					{"ID" : "308", "SubInstance" : "call_ln321_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "307", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret42", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871.grp_read_p1_fu_137", "Parent" : "306",
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
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871.call_ln321_write_p4_fu_153", "Parent" : "306",
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
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP3_fu_871.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885", "Parent" : "9", "Child" : ["311", "312", "313", "314"],
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
					{"ID" : "312", "SubInstance" : "grp_read_p2_fu_171", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "311", "SubInstance" : "grp_read_p1_fu_164", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "313", "SubInstance" : "call_ln330_write_p3_fu_187", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885.grp_read_p1_fu_164", "Parent" : "310",
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
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885.grp_read_p2_fu_171", "Parent" : "310",
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
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885.call_ln330_write_p3_fu_187", "Parent" : "310",
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
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP4_fu_885.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901", "Parent" : "9", "Child" : ["316", "317", "318"],
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
					{"ID" : "316", "SubInstance" : "grp_read_ntt_fu_112", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "317", "SubInstance" : "call_ln338_write_p3_fu_128", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_25_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_NTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901.grp_read_ntt_fu_112", "Parent" : "315",
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
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901.call_ln338_write_p3_fu_128", "Parent" : "315",
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
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_NTT_LOOP5_fu_901.flow_control_loop_pipe_sequential_init_U", "Parent" : "315"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917", "Parent" : "9", "Child" : ["320", "321", "322", "323", "324"],
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
					{"ID" : "321", "SubInstance" : "grp_read_p2_fu_172", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "320", "SubInstance" : "grp_read_p1_fu_165", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "322", "SubInstance" : "call_ln233_write_p3_fu_188", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"},
					{"ID" : "323", "SubInstance" : "call_ln234_write_p4_fu_196", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln230_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr2_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.grp_read_p1_fu_165", "Parent" : "319",
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
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.grp_read_p2_fu_172", "Parent" : "319",
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
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.call_ln233_write_p3_fu_188", "Parent" : "319",
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
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.call_ln234_write_p4_fu_196", "Parent" : "319",
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
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP1_fu_917.flow_control_loop_pipe_sequential_init_U", "Parent" : "319"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933", "Parent" : "9", "Child" : ["326", "327", "328"],
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
					{"ID" : "326", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "327", "SubInstance" : "call_ln243_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret25", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933.grp_read_p1_fu_137", "Parent" : "325",
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
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933.call_ln243_write_p3_fu_153", "Parent" : "325",
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
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP2_fu_933.flow_control_loop_pipe_sequential_init_U", "Parent" : "325"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947", "Parent" : "9", "Child" : ["330", "331", "332"],
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
					{"ID" : "330", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "331", "SubInstance" : "call_ln252_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret39", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947.grp_read_p1_fu_137", "Parent" : "329",
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
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947.call_ln252_write_p4_fu_153", "Parent" : "329",
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
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP3_fu_947.flow_control_loop_pipe_sequential_init_U", "Parent" : "329"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961", "Parent" : "9", "Child" : ["334", "335", "336", "337"],
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
					{"ID" : "335", "SubInstance" : "grp_read_p2_fu_161", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "334", "SubInstance" : "grp_read_p1_fu_154", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "336", "SubInstance" : "call_ln261_write_p3_fu_177", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "this_3_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961.grp_read_p1_fu_154", "Parent" : "333",
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
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961.grp_read_p2_fu_161", "Parent" : "333",
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
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961.call_ln261_write_p3_fu_177", "Parent" : "333",
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
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP4_fu_961.flow_control_loop_pipe_sequential_init_U", "Parent" : "333"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976", "Parent" : "9", "Child" : ["339", "340", "341", "342"],
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
					{"ID" : "339", "SubInstance" : "grp_read_p1_fu_127", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "341", "SubInstance" : "call_ln271_write_p3_fu_151", "Port" : "this_pMem", "Inst_start_state" : "35", "Inst_end_state" : "35"},
					{"ID" : "340", "SubInstance" : "grp_read_p2_fu_134", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_16_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MATMUL_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976.grp_read_p1_fu_127", "Parent" : "338",
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
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976.grp_read_p2_fu_134", "Parent" : "338",
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
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976.call_ln271_write_p3_fu_151", "Parent" : "338",
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
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MATMUL_LOOP5_fu_976.flow_control_loop_pipe_sequential_init_U", "Parent" : "338"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992", "Parent" : "9", "Child" : ["344", "345", "346"],
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
					{"ID" : "345", "SubInstance" : "call_ln203_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "344", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret10", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992.grp_read_p1_fu_137", "Parent" : "343",
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
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992.call_ln203_write_p3_fu_153", "Parent" : "343",
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
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP2_fu_992.flow_control_loop_pipe_sequential_init_U", "Parent" : "343"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006", "Parent" : "9", "Child" : ["348", "349", "350"],
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
					{"ID" : "348", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "349", "SubInstance" : "call_ln212_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret22", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006.grp_read_p1_fu_137", "Parent" : "347",
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
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006.call_ln212_write_p4_fu_153", "Parent" : "347",
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
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP3_fu_1006.flow_control_loop_pipe_sequential_init_U", "Parent" : "347"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020", "Parent" : "9", "Child" : ["352", "353", "354", "355"],
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
					{"ID" : "352", "SubInstance" : "grp_read_p1_fu_164", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "353", "SubInstance" : "grp_read_p2_fu_171", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "354", "SubInstance" : "call_ln221_write_p3_fu_187", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr3_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_MONTMUL_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020.grp_read_p1_fu_164", "Parent" : "351",
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
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020.grp_read_p2_fu_171", "Parent" : "351",
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
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020.call_ln221_write_p3_fu_187", "Parent" : "351",
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
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_MONTMUL_LOOP4_fu_1020.flow_control_loop_pipe_sequential_init_U", "Parent" : "351"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036", "Parent" : "9", "Child" : ["357", "358", "359"],
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
					{"ID" : "357", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "358", "SubInstance" : "call_ln173_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"}]},
			{"Name" : "call_ret1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036.grp_read_p1_fu_137", "Parent" : "356",
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
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036.call_ln173_write_p3_fu_153", "Parent" : "356",
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
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP2_fu_1036.flow_control_loop_pipe_sequential_init_U", "Parent" : "356"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050", "Parent" : "9", "Child" : ["361", "362", "363", "364"],
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
					{"ID" : "362", "SubInstance" : "grp_read_p2_fu_169", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "361", "SubInstance" : "grp_read_p1_fu_162", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "363", "SubInstance" : "call_ln182_write_p3_fu_185", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_RD_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050.grp_read_p1_fu_162", "Parent" : "360",
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
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050.grp_read_p2_fu_169", "Parent" : "360",
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
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050.call_ln182_write_p3_fu_185", "Parent" : "360",
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
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_RD_LOOP3_fu_1050.flow_control_loop_pipe_sequential_init_U", "Parent" : "360"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066", "Parent" : "9", "Child" : ["366", "367", "368"],
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
					{"ID" : "367", "SubInstance" : "call_ln350_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "366", "SubInstance" : "grp_read_intt_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066.grp_read_intt_fu_137", "Parent" : "365",
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
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066.call_ln350_write_p3_fu_153", "Parent" : "365",
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
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP1_fu_1066.flow_control_loop_pipe_sequential_init_U", "Parent" : "365"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080", "Parent" : "9", "Child" : ["370", "371", "372", "373"],
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
					{"ID" : "372", "SubInstance" : "call_ln359_write_p4_fu_175", "Port" : "this_pMem", "Inst_start_state" : "33", "Inst_end_state" : "33"},
					{"ID" : "371", "SubInstance" : "call_ln358_write_p3_fu_167", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "370", "SubInstance" : "grp_read_p1_fu_151", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "call_ret19", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_28_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080.grp_read_p1_fu_151", "Parent" : "369",
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
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080.call_ln358_write_p3_fu_167", "Parent" : "369",
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
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080.call_ln359_write_p4_fu_175", "Parent" : "369",
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
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP2_fu_1080.flow_control_loop_pipe_sequential_init_U", "Parent" : "369"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095", "Parent" : "9", "Child" : ["375", "376", "377"],
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
					{"ID" : "376", "SubInstance" : "call_ln368_write_p3_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "375", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret34", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095.grp_read_p1_fu_137", "Parent" : "374",
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
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095.call_ln368_write_p3_fu_153", "Parent" : "374",
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
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP3_fu_1095.flow_control_loop_pipe_sequential_init_U", "Parent" : "374"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109", "Parent" : "9", "Child" : ["379", "380", "381"],
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
					{"ID" : "380", "SubInstance" : "call_ln377_write_p4_fu_153", "Port" : "this_pMem", "Inst_start_state" : "32", "Inst_end_state" : "32"},
					{"ID" : "379", "SubInstance" : "grp_read_p1_fu_137", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "call_ret48", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_1_30_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109.grp_read_p1_fu_137", "Parent" : "378",
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
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109.call_ln377_write_p4_fu_153", "Parent" : "378",
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
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP4_fu_1109.flow_control_loop_pipe_sequential_init_U", "Parent" : "378"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123", "Parent" : "9", "Child" : ["383", "384", "385", "386"],
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
					{"ID" : "383", "SubInstance" : "grp_read_p1_fu_118", "Port" : "this_pMem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "384", "SubInstance" : "grp_read_p2_fu_125", "Port" : "this_pMem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "385", "SubInstance" : "call_ln386_write_p3_fu_141", "Port" : "this_pMem", "Inst_start_state" : "34", "Inst_end_state" : "34"}]},
			{"Name" : "addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_3_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_4_32_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "this_1_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_2_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FUNC_INTT_LOOP5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123.grp_read_p1_fu_118", "Parent" : "382",
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
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123.grp_read_p2_fu_125", "Parent" : "382",
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
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123.call_ln386_write_p3_fu_141", "Parent" : "382",
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
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_func_Pipeline_FUNC_INTT_LOOP5_fu_1123.flow_control_loop_pipe_sequential_init_U", "Parent" : "382"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775", "Parent" : "9", "Child" : ["388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621", "622", "623", "624", "625", "626", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "642", "643"],
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
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U109", "Parent" : "387"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U110", "Parent" : "387"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U111", "Parent" : "387"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U112", "Parent" : "387"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U113", "Parent" : "387"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U114", "Parent" : "387"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U115", "Parent" : "387"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U116", "Parent" : "387"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U117", "Parent" : "387"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U118", "Parent" : "387"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U119", "Parent" : "387"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U120", "Parent" : "387"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U121", "Parent" : "387"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U122", "Parent" : "387"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U123", "Parent" : "387"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U124", "Parent" : "387"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U125", "Parent" : "387"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U126", "Parent" : "387"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U127", "Parent" : "387"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U128", "Parent" : "387"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U129", "Parent" : "387"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U130", "Parent" : "387"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U131", "Parent" : "387"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U132", "Parent" : "387"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U133", "Parent" : "387"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U134", "Parent" : "387"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U135", "Parent" : "387"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U136", "Parent" : "387"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U137", "Parent" : "387"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U138", "Parent" : "387"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U139", "Parent" : "387"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U140", "Parent" : "387"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U141", "Parent" : "387"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U142", "Parent" : "387"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U143", "Parent" : "387"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U144", "Parent" : "387"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U145", "Parent" : "387"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U146", "Parent" : "387"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U147", "Parent" : "387"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U148", "Parent" : "387"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U149", "Parent" : "387"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U150", "Parent" : "387"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U151", "Parent" : "387"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U152", "Parent" : "387"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U153", "Parent" : "387"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U154", "Parent" : "387"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U155", "Parent" : "387"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U156", "Parent" : "387"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U157", "Parent" : "387"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U158", "Parent" : "387"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U159", "Parent" : "387"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U160", "Parent" : "387"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U161", "Parent" : "387"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U162", "Parent" : "387"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U163", "Parent" : "387"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U164", "Parent" : "387"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U165", "Parent" : "387"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U166", "Parent" : "387"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U167", "Parent" : "387"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U168", "Parent" : "387"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U169", "Parent" : "387"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U170", "Parent" : "387"},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U171", "Parent" : "387"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U172", "Parent" : "387"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U173", "Parent" : "387"},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U174", "Parent" : "387"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U175", "Parent" : "387"},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U176", "Parent" : "387"},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U177", "Parent" : "387"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U178", "Parent" : "387"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U179", "Parent" : "387"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U180", "Parent" : "387"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U181", "Parent" : "387"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U182", "Parent" : "387"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U183", "Parent" : "387"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U184", "Parent" : "387"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U185", "Parent" : "387"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U186", "Parent" : "387"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U187", "Parent" : "387"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U188", "Parent" : "387"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U189", "Parent" : "387"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U190", "Parent" : "387"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U191", "Parent" : "387"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U192", "Parent" : "387"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U193", "Parent" : "387"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U194", "Parent" : "387"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U195", "Parent" : "387"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U196", "Parent" : "387"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U197", "Parent" : "387"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U198", "Parent" : "387"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U199", "Parent" : "387"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U200", "Parent" : "387"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U201", "Parent" : "387"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U202", "Parent" : "387"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U203", "Parent" : "387"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U204", "Parent" : "387"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U205", "Parent" : "387"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U206", "Parent" : "387"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U207", "Parent" : "387"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U208", "Parent" : "387"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U209", "Parent" : "387"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U210", "Parent" : "387"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U211", "Parent" : "387"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U212", "Parent" : "387"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U213", "Parent" : "387"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U214", "Parent" : "387"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U215", "Parent" : "387"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U216", "Parent" : "387"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U217", "Parent" : "387"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U218", "Parent" : "387"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U219", "Parent" : "387"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U220", "Parent" : "387"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U221", "Parent" : "387"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U222", "Parent" : "387"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U223", "Parent" : "387"},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U224", "Parent" : "387"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U225", "Parent" : "387"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U226", "Parent" : "387"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U227", "Parent" : "387"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U228", "Parent" : "387"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U229", "Parent" : "387"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U230", "Parent" : "387"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U231", "Parent" : "387"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U232", "Parent" : "387"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U233", "Parent" : "387"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U234", "Parent" : "387"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U235", "Parent" : "387"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U236", "Parent" : "387"},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U237", "Parent" : "387"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U238", "Parent" : "387"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U239", "Parent" : "387"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U240", "Parent" : "387"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U241", "Parent" : "387"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U242", "Parent" : "387"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U243", "Parent" : "387"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U244", "Parent" : "387"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U245", "Parent" : "387"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U246", "Parent" : "387"},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U247", "Parent" : "387"},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U248", "Parent" : "387"},
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U249", "Parent" : "387"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U250", "Parent" : "387"},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U251", "Parent" : "387"},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U252", "Parent" : "387"},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U253", "Parent" : "387"},
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U254", "Parent" : "387"},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U255", "Parent" : "387"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U256", "Parent" : "387"},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U257", "Parent" : "387"},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U258", "Parent" : "387"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U259", "Parent" : "387"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U260", "Parent" : "387"},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U261", "Parent" : "387"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U262", "Parent" : "387"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U263", "Parent" : "387"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U264", "Parent" : "387"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U265", "Parent" : "387"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U266", "Parent" : "387"},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U267", "Parent" : "387"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U268", "Parent" : "387"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U269", "Parent" : "387"},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U270", "Parent" : "387"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U271", "Parent" : "387"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U272", "Parent" : "387"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U273", "Parent" : "387"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U274", "Parent" : "387"},
	{"ID" : "554", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U275", "Parent" : "387"},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U276", "Parent" : "387"},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U277", "Parent" : "387"},
	{"ID" : "557", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U278", "Parent" : "387"},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U279", "Parent" : "387"},
	{"ID" : "559", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U280", "Parent" : "387"},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U281", "Parent" : "387"},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U282", "Parent" : "387"},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U283", "Parent" : "387"},
	{"ID" : "563", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U284", "Parent" : "387"},
	{"ID" : "564", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U285", "Parent" : "387"},
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U286", "Parent" : "387"},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U287", "Parent" : "387"},
	{"ID" : "567", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U288", "Parent" : "387"},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U289", "Parent" : "387"},
	{"ID" : "569", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U290", "Parent" : "387"},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U291", "Parent" : "387"},
	{"ID" : "571", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U292", "Parent" : "387"},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U293", "Parent" : "387"},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U294", "Parent" : "387"},
	{"ID" : "574", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U295", "Parent" : "387"},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U296", "Parent" : "387"},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U297", "Parent" : "387"},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U298", "Parent" : "387"},
	{"ID" : "578", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U299", "Parent" : "387"},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U300", "Parent" : "387"},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U301", "Parent" : "387"},
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U302", "Parent" : "387"},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U303", "Parent" : "387"},
	{"ID" : "583", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U304", "Parent" : "387"},
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U305", "Parent" : "387"},
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U306", "Parent" : "387"},
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U307", "Parent" : "387"},
	{"ID" : "587", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U308", "Parent" : "387"},
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U309", "Parent" : "387"},
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U310", "Parent" : "387"},
	{"ID" : "590", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U311", "Parent" : "387"},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U312", "Parent" : "387"},
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U313", "Parent" : "387"},
	{"ID" : "593", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U314", "Parent" : "387"},
	{"ID" : "594", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U315", "Parent" : "387"},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U316", "Parent" : "387"},
	{"ID" : "596", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U317", "Parent" : "387"},
	{"ID" : "597", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U318", "Parent" : "387"},
	{"ID" : "598", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U319", "Parent" : "387"},
	{"ID" : "599", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U320", "Parent" : "387"},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U321", "Parent" : "387"},
	{"ID" : "601", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U322", "Parent" : "387"},
	{"ID" : "602", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U323", "Parent" : "387"},
	{"ID" : "603", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U324", "Parent" : "387"},
	{"ID" : "604", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U325", "Parent" : "387"},
	{"ID" : "605", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U326", "Parent" : "387"},
	{"ID" : "606", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U327", "Parent" : "387"},
	{"ID" : "607", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U328", "Parent" : "387"},
	{"ID" : "608", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U329", "Parent" : "387"},
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U330", "Parent" : "387"},
	{"ID" : "610", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U331", "Parent" : "387"},
	{"ID" : "611", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U332", "Parent" : "387"},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U333", "Parent" : "387"},
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U334", "Parent" : "387"},
	{"ID" : "614", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U335", "Parent" : "387"},
	{"ID" : "615", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U336", "Parent" : "387"},
	{"ID" : "616", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U337", "Parent" : "387"},
	{"ID" : "617", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U338", "Parent" : "387"},
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U339", "Parent" : "387"},
	{"ID" : "619", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U340", "Parent" : "387"},
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U341", "Parent" : "387"},
	{"ID" : "621", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U342", "Parent" : "387"},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U343", "Parent" : "387"},
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U344", "Parent" : "387"},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U345", "Parent" : "387"},
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U346", "Parent" : "387"},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U347", "Parent" : "387"},
	{"ID" : "627", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U348", "Parent" : "387"},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U349", "Parent" : "387"},
	{"ID" : "629", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U350", "Parent" : "387"},
	{"ID" : "630", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U351", "Parent" : "387"},
	{"ID" : "631", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U352", "Parent" : "387"},
	{"ID" : "632", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U353", "Parent" : "387"},
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U354", "Parent" : "387"},
	{"ID" : "634", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U355", "Parent" : "387"},
	{"ID" : "635", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U356", "Parent" : "387"},
	{"ID" : "636", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U357", "Parent" : "387"},
	{"ID" : "637", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U358", "Parent" : "387"},
	{"ID" : "638", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U359", "Parent" : "387"},
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U360", "Parent" : "387"},
	{"ID" : "640", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U361", "Parent" : "387"},
	{"ID" : "641", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U362", "Parent" : "387"},
	{"ID" : "642", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U363", "Parent" : "387"},
	{"ID" : "643", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2775.mul_32s_32s_64_1_0_U364", "Parent" : "387"},
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782", "Parent" : "9", "Child" : ["645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "768", "769", "770", "771", "772", "773", "774", "775", "776", "777", "778", "779", "780", "781", "782", "783", "784", "785", "786", "787", "788", "789", "790", "791", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "807", "808", "809", "810", "811", "812", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "838", "839", "840", "841", "842", "843", "844", "845", "846", "847", "848", "849", "850", "851", "852", "853", "854", "855", "856", "857", "858", "859", "860", "861", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "877", "878", "879", "880", "881", "882", "883", "884", "885", "886", "887", "888", "889", "890", "891", "892", "893", "894", "895", "896", "897", "898", "899", "900"],
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
	{"ID" : "645", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U109", "Parent" : "644"},
	{"ID" : "646", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U110", "Parent" : "644"},
	{"ID" : "647", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U111", "Parent" : "644"},
	{"ID" : "648", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U112", "Parent" : "644"},
	{"ID" : "649", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U113", "Parent" : "644"},
	{"ID" : "650", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U114", "Parent" : "644"},
	{"ID" : "651", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U115", "Parent" : "644"},
	{"ID" : "652", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U116", "Parent" : "644"},
	{"ID" : "653", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U117", "Parent" : "644"},
	{"ID" : "654", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U118", "Parent" : "644"},
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U119", "Parent" : "644"},
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U120", "Parent" : "644"},
	{"ID" : "657", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U121", "Parent" : "644"},
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U122", "Parent" : "644"},
	{"ID" : "659", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U123", "Parent" : "644"},
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U124", "Parent" : "644"},
	{"ID" : "661", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U125", "Parent" : "644"},
	{"ID" : "662", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U126", "Parent" : "644"},
	{"ID" : "663", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U127", "Parent" : "644"},
	{"ID" : "664", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U128", "Parent" : "644"},
	{"ID" : "665", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U129", "Parent" : "644"},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U130", "Parent" : "644"},
	{"ID" : "667", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U131", "Parent" : "644"},
	{"ID" : "668", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U132", "Parent" : "644"},
	{"ID" : "669", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U133", "Parent" : "644"},
	{"ID" : "670", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U134", "Parent" : "644"},
	{"ID" : "671", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U135", "Parent" : "644"},
	{"ID" : "672", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U136", "Parent" : "644"},
	{"ID" : "673", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U137", "Parent" : "644"},
	{"ID" : "674", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U138", "Parent" : "644"},
	{"ID" : "675", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U139", "Parent" : "644"},
	{"ID" : "676", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U140", "Parent" : "644"},
	{"ID" : "677", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U141", "Parent" : "644"},
	{"ID" : "678", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U142", "Parent" : "644"},
	{"ID" : "679", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U143", "Parent" : "644"},
	{"ID" : "680", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U144", "Parent" : "644"},
	{"ID" : "681", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U145", "Parent" : "644"},
	{"ID" : "682", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U146", "Parent" : "644"},
	{"ID" : "683", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U147", "Parent" : "644"},
	{"ID" : "684", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U148", "Parent" : "644"},
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U149", "Parent" : "644"},
	{"ID" : "686", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U150", "Parent" : "644"},
	{"ID" : "687", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U151", "Parent" : "644"},
	{"ID" : "688", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U152", "Parent" : "644"},
	{"ID" : "689", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U153", "Parent" : "644"},
	{"ID" : "690", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U154", "Parent" : "644"},
	{"ID" : "691", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U155", "Parent" : "644"},
	{"ID" : "692", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U156", "Parent" : "644"},
	{"ID" : "693", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U157", "Parent" : "644"},
	{"ID" : "694", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U158", "Parent" : "644"},
	{"ID" : "695", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U159", "Parent" : "644"},
	{"ID" : "696", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U160", "Parent" : "644"},
	{"ID" : "697", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U161", "Parent" : "644"},
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U162", "Parent" : "644"},
	{"ID" : "699", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U163", "Parent" : "644"},
	{"ID" : "700", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U164", "Parent" : "644"},
	{"ID" : "701", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U165", "Parent" : "644"},
	{"ID" : "702", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U166", "Parent" : "644"},
	{"ID" : "703", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U167", "Parent" : "644"},
	{"ID" : "704", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U168", "Parent" : "644"},
	{"ID" : "705", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U169", "Parent" : "644"},
	{"ID" : "706", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U170", "Parent" : "644"},
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U171", "Parent" : "644"},
	{"ID" : "708", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U172", "Parent" : "644"},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U173", "Parent" : "644"},
	{"ID" : "710", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U174", "Parent" : "644"},
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U175", "Parent" : "644"},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U176", "Parent" : "644"},
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U177", "Parent" : "644"},
	{"ID" : "714", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U178", "Parent" : "644"},
	{"ID" : "715", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U179", "Parent" : "644"},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U180", "Parent" : "644"},
	{"ID" : "717", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U181", "Parent" : "644"},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U182", "Parent" : "644"},
	{"ID" : "719", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U183", "Parent" : "644"},
	{"ID" : "720", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U184", "Parent" : "644"},
	{"ID" : "721", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U185", "Parent" : "644"},
	{"ID" : "722", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U186", "Parent" : "644"},
	{"ID" : "723", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U187", "Parent" : "644"},
	{"ID" : "724", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U188", "Parent" : "644"},
	{"ID" : "725", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U189", "Parent" : "644"},
	{"ID" : "726", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U190", "Parent" : "644"},
	{"ID" : "727", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U191", "Parent" : "644"},
	{"ID" : "728", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U192", "Parent" : "644"},
	{"ID" : "729", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U193", "Parent" : "644"},
	{"ID" : "730", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U194", "Parent" : "644"},
	{"ID" : "731", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U195", "Parent" : "644"},
	{"ID" : "732", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U196", "Parent" : "644"},
	{"ID" : "733", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U197", "Parent" : "644"},
	{"ID" : "734", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U198", "Parent" : "644"},
	{"ID" : "735", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U199", "Parent" : "644"},
	{"ID" : "736", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U200", "Parent" : "644"},
	{"ID" : "737", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U201", "Parent" : "644"},
	{"ID" : "738", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U202", "Parent" : "644"},
	{"ID" : "739", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U203", "Parent" : "644"},
	{"ID" : "740", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U204", "Parent" : "644"},
	{"ID" : "741", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U205", "Parent" : "644"},
	{"ID" : "742", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U206", "Parent" : "644"},
	{"ID" : "743", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U207", "Parent" : "644"},
	{"ID" : "744", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U208", "Parent" : "644"},
	{"ID" : "745", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U209", "Parent" : "644"},
	{"ID" : "746", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U210", "Parent" : "644"},
	{"ID" : "747", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U211", "Parent" : "644"},
	{"ID" : "748", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U212", "Parent" : "644"},
	{"ID" : "749", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U213", "Parent" : "644"},
	{"ID" : "750", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U214", "Parent" : "644"},
	{"ID" : "751", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U215", "Parent" : "644"},
	{"ID" : "752", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U216", "Parent" : "644"},
	{"ID" : "753", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U217", "Parent" : "644"},
	{"ID" : "754", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U218", "Parent" : "644"},
	{"ID" : "755", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U219", "Parent" : "644"},
	{"ID" : "756", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U220", "Parent" : "644"},
	{"ID" : "757", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U221", "Parent" : "644"},
	{"ID" : "758", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U222", "Parent" : "644"},
	{"ID" : "759", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U223", "Parent" : "644"},
	{"ID" : "760", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U224", "Parent" : "644"},
	{"ID" : "761", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U225", "Parent" : "644"},
	{"ID" : "762", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U226", "Parent" : "644"},
	{"ID" : "763", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U227", "Parent" : "644"},
	{"ID" : "764", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U228", "Parent" : "644"},
	{"ID" : "765", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U229", "Parent" : "644"},
	{"ID" : "766", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U230", "Parent" : "644"},
	{"ID" : "767", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U231", "Parent" : "644"},
	{"ID" : "768", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U232", "Parent" : "644"},
	{"ID" : "769", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U233", "Parent" : "644"},
	{"ID" : "770", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U234", "Parent" : "644"},
	{"ID" : "771", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U235", "Parent" : "644"},
	{"ID" : "772", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U236", "Parent" : "644"},
	{"ID" : "773", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U237", "Parent" : "644"},
	{"ID" : "774", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U238", "Parent" : "644"},
	{"ID" : "775", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U239", "Parent" : "644"},
	{"ID" : "776", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U240", "Parent" : "644"},
	{"ID" : "777", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U241", "Parent" : "644"},
	{"ID" : "778", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U242", "Parent" : "644"},
	{"ID" : "779", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U243", "Parent" : "644"},
	{"ID" : "780", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U244", "Parent" : "644"},
	{"ID" : "781", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U245", "Parent" : "644"},
	{"ID" : "782", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U246", "Parent" : "644"},
	{"ID" : "783", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U247", "Parent" : "644"},
	{"ID" : "784", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U248", "Parent" : "644"},
	{"ID" : "785", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U249", "Parent" : "644"},
	{"ID" : "786", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U250", "Parent" : "644"},
	{"ID" : "787", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U251", "Parent" : "644"},
	{"ID" : "788", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U252", "Parent" : "644"},
	{"ID" : "789", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U253", "Parent" : "644"},
	{"ID" : "790", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U254", "Parent" : "644"},
	{"ID" : "791", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U255", "Parent" : "644"},
	{"ID" : "792", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U256", "Parent" : "644"},
	{"ID" : "793", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U257", "Parent" : "644"},
	{"ID" : "794", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U258", "Parent" : "644"},
	{"ID" : "795", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U259", "Parent" : "644"},
	{"ID" : "796", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U260", "Parent" : "644"},
	{"ID" : "797", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U261", "Parent" : "644"},
	{"ID" : "798", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U262", "Parent" : "644"},
	{"ID" : "799", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U263", "Parent" : "644"},
	{"ID" : "800", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U264", "Parent" : "644"},
	{"ID" : "801", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U265", "Parent" : "644"},
	{"ID" : "802", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U266", "Parent" : "644"},
	{"ID" : "803", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U267", "Parent" : "644"},
	{"ID" : "804", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U268", "Parent" : "644"},
	{"ID" : "805", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U269", "Parent" : "644"},
	{"ID" : "806", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U270", "Parent" : "644"},
	{"ID" : "807", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U271", "Parent" : "644"},
	{"ID" : "808", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U272", "Parent" : "644"},
	{"ID" : "809", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U273", "Parent" : "644"},
	{"ID" : "810", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U274", "Parent" : "644"},
	{"ID" : "811", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U275", "Parent" : "644"},
	{"ID" : "812", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U276", "Parent" : "644"},
	{"ID" : "813", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U277", "Parent" : "644"},
	{"ID" : "814", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U278", "Parent" : "644"},
	{"ID" : "815", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U279", "Parent" : "644"},
	{"ID" : "816", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U280", "Parent" : "644"},
	{"ID" : "817", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U281", "Parent" : "644"},
	{"ID" : "818", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U282", "Parent" : "644"},
	{"ID" : "819", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U283", "Parent" : "644"},
	{"ID" : "820", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U284", "Parent" : "644"},
	{"ID" : "821", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U285", "Parent" : "644"},
	{"ID" : "822", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U286", "Parent" : "644"},
	{"ID" : "823", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U287", "Parent" : "644"},
	{"ID" : "824", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U288", "Parent" : "644"},
	{"ID" : "825", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U289", "Parent" : "644"},
	{"ID" : "826", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U290", "Parent" : "644"},
	{"ID" : "827", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U291", "Parent" : "644"},
	{"ID" : "828", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U292", "Parent" : "644"},
	{"ID" : "829", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U293", "Parent" : "644"},
	{"ID" : "830", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U294", "Parent" : "644"},
	{"ID" : "831", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U295", "Parent" : "644"},
	{"ID" : "832", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U296", "Parent" : "644"},
	{"ID" : "833", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U297", "Parent" : "644"},
	{"ID" : "834", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U298", "Parent" : "644"},
	{"ID" : "835", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U299", "Parent" : "644"},
	{"ID" : "836", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U300", "Parent" : "644"},
	{"ID" : "837", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U301", "Parent" : "644"},
	{"ID" : "838", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U302", "Parent" : "644"},
	{"ID" : "839", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U303", "Parent" : "644"},
	{"ID" : "840", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U304", "Parent" : "644"},
	{"ID" : "841", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U305", "Parent" : "644"},
	{"ID" : "842", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U306", "Parent" : "644"},
	{"ID" : "843", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U307", "Parent" : "644"},
	{"ID" : "844", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U308", "Parent" : "644"},
	{"ID" : "845", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U309", "Parent" : "644"},
	{"ID" : "846", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U310", "Parent" : "644"},
	{"ID" : "847", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U311", "Parent" : "644"},
	{"ID" : "848", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U312", "Parent" : "644"},
	{"ID" : "849", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U313", "Parent" : "644"},
	{"ID" : "850", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U314", "Parent" : "644"},
	{"ID" : "851", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U315", "Parent" : "644"},
	{"ID" : "852", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U316", "Parent" : "644"},
	{"ID" : "853", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U317", "Parent" : "644"},
	{"ID" : "854", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U318", "Parent" : "644"},
	{"ID" : "855", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U319", "Parent" : "644"},
	{"ID" : "856", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U320", "Parent" : "644"},
	{"ID" : "857", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U321", "Parent" : "644"},
	{"ID" : "858", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U322", "Parent" : "644"},
	{"ID" : "859", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U323", "Parent" : "644"},
	{"ID" : "860", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U324", "Parent" : "644"},
	{"ID" : "861", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U325", "Parent" : "644"},
	{"ID" : "862", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U326", "Parent" : "644"},
	{"ID" : "863", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U327", "Parent" : "644"},
	{"ID" : "864", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U328", "Parent" : "644"},
	{"ID" : "865", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U329", "Parent" : "644"},
	{"ID" : "866", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U330", "Parent" : "644"},
	{"ID" : "867", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U331", "Parent" : "644"},
	{"ID" : "868", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U332", "Parent" : "644"},
	{"ID" : "869", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U333", "Parent" : "644"},
	{"ID" : "870", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U334", "Parent" : "644"},
	{"ID" : "871", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U335", "Parent" : "644"},
	{"ID" : "872", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U336", "Parent" : "644"},
	{"ID" : "873", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U337", "Parent" : "644"},
	{"ID" : "874", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U338", "Parent" : "644"},
	{"ID" : "875", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U339", "Parent" : "644"},
	{"ID" : "876", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U340", "Parent" : "644"},
	{"ID" : "877", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U341", "Parent" : "644"},
	{"ID" : "878", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U342", "Parent" : "644"},
	{"ID" : "879", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U343", "Parent" : "644"},
	{"ID" : "880", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U344", "Parent" : "644"},
	{"ID" : "881", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U345", "Parent" : "644"},
	{"ID" : "882", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U346", "Parent" : "644"},
	{"ID" : "883", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U347", "Parent" : "644"},
	{"ID" : "884", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U348", "Parent" : "644"},
	{"ID" : "885", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U349", "Parent" : "644"},
	{"ID" : "886", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U350", "Parent" : "644"},
	{"ID" : "887", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U351", "Parent" : "644"},
	{"ID" : "888", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U352", "Parent" : "644"},
	{"ID" : "889", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U353", "Parent" : "644"},
	{"ID" : "890", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U354", "Parent" : "644"},
	{"ID" : "891", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U355", "Parent" : "644"},
	{"ID" : "892", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U356", "Parent" : "644"},
	{"ID" : "893", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U357", "Parent" : "644"},
	{"ID" : "894", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U358", "Parent" : "644"},
	{"ID" : "895", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U359", "Parent" : "644"},
	{"ID" : "896", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U360", "Parent" : "644"},
	{"ID" : "897", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U361", "Parent" : "644"},
	{"ID" : "898", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U362", "Parent" : "644"},
	{"ID" : "899", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U363", "Parent" : "644"},
	{"ID" : "900", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_func_fu_460.grp_dpu_unit_fu_2782.mul_32s_32s_64_1_0_U364", "Parent" : "644"},
	{"ID" : "901", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_40_1_fu_562", "Parent" : "0", "Child" : ["902"],
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
	{"ID" : "902", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_40_1_fu_562.flow_control_loop_pipe_sequential_init_U", "Parent" : "901"},
	{"ID" : "903", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_41_2_fu_567", "Parent" : "0", "Child" : ["904"],
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
	{"ID" : "904", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_41_2_fu_567.flow_control_loop_pipe_sequential_init_U", "Parent" : "903"},
	{"ID" : "905", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_1_fu_572", "Parent" : "0", "Child" : ["906"],
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
	{"ID" : "906", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_1_fu_572.flow_control_loop_pipe_sequential_init_U", "Parent" : "905"},
	{"ID" : "907", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578", "Parent" : "0", "Child" : ["908"],
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
	{"ID" : "908", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_42_3_VITIS_LOOP_43_4_fu_578.flow_control_loop_pipe_sequential_init_U", "Parent" : "907"},
	{"ID" : "909", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585", "Parent" : "0", "Child" : ["910", "911", "913", "915", "917", "919", "921"],
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
					{"ID" : "911", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "913", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "915", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "this_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "911", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "913", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "919", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Port" : "seedbuf", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "915", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "910", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.t_U", "Parent" : "909"},
	{"ID" : "911", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Parent" : "909", "Child" : ["912"],
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
	{"ID" : "912", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "911"},
	{"ID" : "913", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Parent" : "909", "Child" : ["914"],
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
	{"ID" : "914", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "913"},
	{"ID" : "915", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_KeccakF1600_StatePermute_fu_164", "Parent" : "909", "Child" : ["916"],
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
	{"ID" : "916", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_KeccakF1600_StatePermute_fu_164.KeccakF_RoundConstants_U", "Parent" : "915"},
	{"ID" : "917", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172", "Parent" : "909", "Child" : ["918"],
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
	{"ID" : "918", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "917"},
	{"ID" : "919", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Parent" : "909", "Child" : ["920"],
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
	{"ID" : "920", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "919"},
	{"ID" : "921", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187", "Parent" : "909", "Child" : ["922"],
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
	{"ID" : "922", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_1_fu_585.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "921"},
	{"ID" : "923", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599", "Parent" : "0", "Child" : ["924"],
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
	{"ID" : "924", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_48_5_VITIS_LOOP_49_6_fu_599.flow_control_loop_pipe_sequential_init_U", "Parent" : "923"},
	{"ID" : "925", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_54_7_fu_606", "Parent" : "0", "Child" : ["926"],
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
	{"ID" : "926", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_54_7_fu_606.flow_control_loop_pipe_sequential_init_U", "Parent" : "925"},
	{"ID" : "927", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_8_fu_612", "Parent" : "0", "Child" : ["928"],
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
	{"ID" : "928", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_8_fu_612.flow_control_loop_pipe_sequential_init_U", "Parent" : "927"},
	{"ID" : "929", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_9_fu_619", "Parent" : "0", "Child" : ["930"],
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
	{"ID" : "930", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_56_9_fu_619.flow_control_loop_pipe_sequential_init_U", "Parent" : "929"},
	{"ID" : "931", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626", "Parent" : "0", "Child" : ["932"],
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
					{"ID" : "932", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "932", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_178", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "932", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626.grp_KeccakF1600_StatePermute_fu_178", "Parent" : "931", "Child" : ["933"],
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
	{"ID" : "933", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_2_fu_626.grp_KeccakF1600_StatePermute_fu_178.KeccakF_RoundConstants_U", "Parent" : "932"},
	{"ID" : "934", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_16_fu_635", "Parent" : "0", "Child" : ["935"],
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
	{"ID" : "935", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_16_fu_635.flow_control_loop_pipe_sequential_init_U", "Parent" : "934"},
	{"ID" : "936", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640", "Parent" : "0", "Child" : ["937", "938", "940", "942", "944", "946", "948", "950", "952", "954"],
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
					{"ID" : "948", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "15"},
					{"ID" : "942", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Port" : "this_s", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "946", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "944", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "this_s", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "944", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "937", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.t_U", "Parent" : "936"},
	{"ID" : "938", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241", "Parent" : "936", "Child" : ["939"],
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
	{"ID" : "939", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "938"},
	{"ID" : "940", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249", "Parent" : "936", "Child" : ["941"],
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
	{"ID" : "941", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "940"},
	{"ID" : "942", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Parent" : "936", "Child" : ["943"],
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
	{"ID" : "943", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "942"},
	{"ID" : "944", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_KeccakF1600_StatePermute_fu_265", "Parent" : "936", "Child" : ["945"],
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
	{"ID" : "945", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_KeccakF1600_StatePermute_fu_265.KeccakF_RoundConstants_U", "Parent" : "944"},
	{"ID" : "946", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Parent" : "936", "Child" : ["947"],
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
	{"ID" : "947", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "946"},
	{"ID" : "948", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Parent" : "936", "Child" : ["949"],
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
	{"ID" : "949", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "948"},
	{"ID" : "950", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293", "Parent" : "936", "Child" : ["951"],
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
	{"ID" : "951", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "950"},
	{"ID" : "952", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298", "Parent" : "936", "Child" : ["953"],
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
	{"ID" : "953", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "952"},
	{"ID" : "954", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308", "Parent" : "936", "Child" : ["955"],
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
	{"ID" : "955", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_fu_640.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "954"},
	{"ID" : "956", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_650", "Parent" : "0", "Child" : ["957"],
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
	{"ID" : "957", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_650.KeccakF_RoundConstants_U", "Parent" : "956"},
	{"ID" : "958", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_417_2_fu_657", "Parent" : "0", "Child" : ["959"],
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
	{"ID" : "959", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_417_2_fu_657.flow_control_loop_pipe_sequential_init_U", "Parent" : "958"},
	{"ID" : "960", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_503_2_fu_663", "Parent" : "0",
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
	{"ID" : "961", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_1_fu_671", "Parent" : "0", "Child" : ["962"],
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
	{"ID" : "962", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_1_fu_671.flow_control_loop_pipe_sequential_init_U", "Parent" : "961"},
	{"ID" : "963", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679", "Parent" : "0", "Child" : ["964", "965", "979", "999", "1001", "1003"],
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
					{"ID" : "965", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "999", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_165", "Port" : "this_s", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "979", "SubInstance" : "grp_shake_absorb_fu_153", "Port" : "this_s", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1001", "SubInstance" : "grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173", "Port" : "this_s", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "a", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1003", "SubInstance" : "grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180", "Port" : "a", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "965", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "seedbuf", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nonce", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "965", "SubInstance" : "grp_shake_absorb_1_fu_139", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "999", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_165", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "979", "SubInstance" : "grp_shake_absorb_fu_153", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_321_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_530_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "964", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.buf_U", "Parent" : "963"},
	{"ID" : "965", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139", "Parent" : "963", "Child" : ["966", "967", "969", "971", "973", "975", "977"],
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
					{"ID" : "967", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "969", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "this_s", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "971", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "this_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "seedbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "967", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "969", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Port" : "seedbuf", "Inst_start_state" : "3", "Inst_end_state" : "7"},
					{"ID" : "975", "SubInstance" : "grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Port" : "seedbuf", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "971", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_164", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "966", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.t_U", "Parent" : "965"},
	{"ID" : "967", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143", "Parent" : "965", "Child" : ["968"],
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
	{"ID" : "968", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_369_4_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "967"},
	{"ID" : "969", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154", "Parent" : "965", "Child" : ["970"],
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
	{"ID" : "970", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_376_5_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "969"},
	{"ID" : "971", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_KeccakF1600_StatePermute_fu_164", "Parent" : "965", "Child" : ["972"],
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
	{"ID" : "972", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_KeccakF1600_StatePermute_fu_164.KeccakF_RoundConstants_U", "Parent" : "971"},
	{"ID" : "973", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172", "Parent" : "965", "Child" : ["974"],
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
	{"ID" : "974", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_383_6_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "973"},
	{"ID" : "975", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177", "Parent" : "965", "Child" : ["976"],
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
	{"ID" : "976", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_385_7_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "975"},
	{"ID" : "977", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187", "Parent" : "965", "Child" : ["978"],
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
	{"ID" : "978", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_1_fu_139.grp_shake_absorb_1_Pipeline_VITIS_LOOP_12_1_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "977"},
	{"ID" : "979", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153", "Parent" : "963", "Child" : ["980", "981", "983", "985", "987", "989", "991", "993", "995", "997"],
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
					{"ID" : "991", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "15"},
					{"ID" : "985", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Port" : "this_s", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "989", "SubInstance" : "grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Port" : "this_s", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "987", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "this_s", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "987", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_265", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state6"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}},
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "980", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.t_U", "Parent" : "979"},
	{"ID" : "981", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241", "Parent" : "979", "Child" : ["982"],
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
	{"ID" : "982", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_351_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "981"},
	{"ID" : "983", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249", "Parent" : "979", "Child" : ["984"],
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
	{"ID" : "984", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "983"},
	{"ID" : "985", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255", "Parent" : "979", "Child" : ["986"],
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
	{"ID" : "986", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_360_2_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "985"},
	{"ID" : "987", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_KeccakF1600_StatePermute_fu_265", "Parent" : "979", "Child" : ["988"],
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
	{"ID" : "988", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_KeccakF1600_StatePermute_fu_265.KeccakF_RoundConstants_U", "Parent" : "987"},
	{"ID" : "989", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273", "Parent" : "979", "Child" : ["990"],
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
	{"ID" : "990", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_369_4_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "989"},
	{"ID" : "991", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282", "Parent" : "979", "Child" : ["992"],
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
	{"ID" : "992", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_376_5_fu_282.flow_control_loop_pipe_sequential_init_U", "Parent" : "991"},
	{"ID" : "993", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293", "Parent" : "979", "Child" : ["994"],
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
	{"ID" : "994", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_383_6_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "993"},
	{"ID" : "995", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298", "Parent" : "979", "Child" : ["996"],
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
	{"ID" : "996", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_385_7_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "995"},
	{"ID" : "997", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308", "Parent" : "979", "Child" : ["998"],
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
	{"ID" : "998", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_shake_absorb_fu_153.grp_shake_absorb_Pipeline_VITIS_LOOP_12_12_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "997"},
	{"ID" : "999", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_KeccakF1600_StatePermute_fu_165", "Parent" : "963", "Child" : ["1000"],
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
	{"ID" : "1000", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_KeccakF1600_StatePermute_fu_165.KeccakF_RoundConstants_U", "Parent" : "999"},
	{"ID" : "1001", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173", "Parent" : "963", "Child" : ["1002"],
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
	{"ID" : "1002", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_417_2_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "1001"},
	{"ID" : "1003", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sample_eta_fu_679.grp_sample_eta_Pipeline_VITIS_LOOP_533_2_fu_180", "Parent" : "963",
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
	{"ID" : "1004", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_17_fu_690", "Parent" : "0", "Child" : ["1005"],
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
	{"ID" : "1005", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_17_fu_690.flow_control_loop_pipe_sequential_init_U", "Parent" : "1004"},
	{"ID" : "1006", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_18_fu_698", "Parent" : "0", "Child" : ["1007"],
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
	{"ID" : "1007", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_18_fu_698.flow_control_loop_pipe_sequential_init_U", "Parent" : "1006"},
	{"ID" : "1008", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706", "Parent" : "0", "Child" : ["1009"],
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
	{"ID" : "1009", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_55_5_fu_706.flow_control_loop_pipe_sequential_init_U", "Parent" : "1008"},
	{"ID" : "1010", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_110_fu_714", "Parent" : "0", "Child" : ["1011"],
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
	{"ID" : "1011", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_321_110_fu_714.flow_control_loop_pipe_sequential_init_U", "Parent" : "1010"},
	{"ID" : "1012", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_19_fu_719", "Parent" : "0", "Child" : ["1013"],
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
	{"ID" : "1013", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_95_19_fu_719.flow_control_loop_pipe_sequential_init_U", "Parent" : "1012"},
	{"ID" : "1014", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727", "Parent" : "0", "Child" : ["1015"],
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
	{"ID" : "1015", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_60_6_fu_727.flow_control_loop_pipe_sequential_init_U", "Parent" : "1014"},
	{"ID" : "1016", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735", "Parent" : "0", "Child" : ["1017"],
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
	{"ID" : "1017", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_61_7_fu_735.flow_control_loop_pipe_sequential_init_U", "Parent" : "1016"},
	{"ID" : "1018", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743", "Parent" : "0", "Child" : ["1019", "1021"],
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
					{"ID" : "1021", "SubInstance" : "grp_dpu_pack_Pipeline_VITIS_LOOP_605_2_fu_87", "Port" : "pk", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1021", "SubInstance" : "grp_dpu_pack_Pipeline_VITIS_LOOP_605_2_fu_87", "Port" : "ptr", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_603_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1019", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_73_1_fu_79", "Parent" : "1018", "Child" : ["1020"],
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
	{"ID" : "1020", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_73_1_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "1019"},
	{"ID" : "1021", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_605_2_fu_87", "Parent" : "1018", "Child" : ["1022"],
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
	{"ID" : "1022", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_fu_743.grp_dpu_pack_Pipeline_VITIS_LOOP_605_2_fu_87.flow_control_loop_pipe_sequential_init_U", "Parent" : "1021"},
	{"ID" : "1023", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752", "Parent" : "0", "Child" : ["1024", "1026", "1028"],
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
					{"ID" : "1024", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1026", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Port" : "this_s", "Inst_start_state" : "2", "Inst_end_state" : "6"},
					{"ID" : "1028", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_67", "Port" : "this_s", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1024", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Port" : "pk", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1026", "SubInstance" : "grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Port" : "pk", "Inst_start_state" : "2", "Inst_end_state" : "6"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1028", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_67", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_368_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1024", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50", "Parent" : "1023", "Child" : ["1025"],
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
	{"ID" : "1025", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_369_4_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "1024"},
	{"ID" : "1026", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59", "Parent" : "1023", "Child" : ["1027"],
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
	{"ID" : "1027", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_shake_absorb_3_Pipeline_VITIS_LOOP_376_5_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "1026"},
	{"ID" : "1028", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_KeccakF1600_StatePermute_fu_67", "Parent" : "1023", "Child" : ["1029"],
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
	{"ID" : "1029", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_absorb_3_fu_752.grp_KeccakF1600_StatePermute_fu_67.KeccakF_RoundConstants_U", "Parent" : "1028"},
	{"ID" : "1030", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761", "Parent" : "0", "Child" : ["1031"],
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
					{"ID" : "1031", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_170", "Port" : "this_s", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1031", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_170", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "1031", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761.grp_KeccakF1600_StatePermute_fu_170", "Parent" : "1030", "Child" : ["1032"],
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
	{"ID" : "1032", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_shake_squeeze_fu_761.grp_KeccakF1600_StatePermute_fu_170.KeccakF_RoundConstants_U", "Parent" : "1031"},
	{"ID" : "1033", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769", "Parent" : "0", "Child" : ["1034"],
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
	{"ID" : "1034", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_keygen_Pipeline_VITIS_LOOP_62_8_fu_769.flow_control_loop_pipe_sequential_init_U", "Parent" : "1033"},
	{"ID" : "1035", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776", "Parent" : "0", "Child" : ["1036", "1038", "1040", "1042", "1044", "1046", "1048", "1050", "1052", "1054"],
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
					{"ID" : "1038", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_1_fu_244", "Port" : "this_0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1050", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_14_fu_296", "Port" : "this_0", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1048", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_709_12_fu_286", "Port" : "sk", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "1036", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_666_8_fu_234", "Port" : "sk", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1042", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_693_10_fu_260", "Port" : "sk", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "1046", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_723_14_fu_277", "Port" : "sk", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "1054", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_630_6_fu_312", "Port" : "sk", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "ptrs", "Type" : "None", "Direction" : "I"},
			{"Name" : "type_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "itr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ptr", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1048", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_709_12_fu_286", "Port" : "ptr", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "1036", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_666_8_fu_234", "Port" : "ptr", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1042", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_693_10_fu_260", "Port" : "ptr", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "1046", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_723_14_fu_277", "Port" : "ptr", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "1054", "SubInstance" : "grp_dpu_pack_4_Pipeline_VITIS_LOOP_630_6_fu_312", "Port" : "ptr", "Inst_start_state" : "23", "Inst_end_state" : "24"}]}],
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
	{"ID" : "1036", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_666_8_fu_234", "Parent" : "1035", "Child" : ["1037"],
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
	{"ID" : "1037", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_666_8_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "1036"},
	{"ID" : "1038", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_1_fu_244", "Parent" : "1035", "Child" : ["1039"],
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
	{"ID" : "1039", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_1_fu_244.flow_control_loop_pipe_sequential_init_U", "Parent" : "1038"},
	{"ID" : "1040", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_13_fu_252", "Parent" : "1035", "Child" : ["1041"],
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
	{"ID" : "1041", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_13_fu_252.flow_control_loop_pipe_sequential_init_U", "Parent" : "1040"},
	{"ID" : "1042", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_693_10_fu_260", "Parent" : "1035", "Child" : ["1043"],
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
	{"ID" : "1043", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_693_10_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "1042"},
	{"ID" : "1044", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_15_fu_269", "Parent" : "1035", "Child" : ["1045"],
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
	{"ID" : "1045", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_15_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "1044"},
	{"ID" : "1046", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_723_14_fu_277", "Parent" : "1035", "Child" : ["1047"],
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
	{"ID" : "1047", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_723_14_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "1046"},
	{"ID" : "1048", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_709_12_fu_286", "Parent" : "1035", "Child" : ["1049"],
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
	{"ID" : "1049", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_709_12_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "1048"},
	{"ID" : "1050", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_14_fu_296", "Parent" : "1035", "Child" : ["1051"],
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
	{"ID" : "1051", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_91_14_fu_296.flow_control_loop_pipe_sequential_init_U", "Parent" : "1050"},
	{"ID" : "1052", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_1_fu_304", "Parent" : "1035", "Child" : ["1053"],
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
	{"ID" : "1053", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_73_1_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "1052"},
	{"ID" : "1054", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_630_6_fu_312", "Parent" : "1035", "Child" : ["1055"],
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
	{"ID" : "1055", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dpu_pack_4_fu_776.grp_dpu_pack_4_Pipeline_VITIS_LOOP_630_6_fu_312.flow_control_loop_pipe_sequential_init_U", "Parent" : "1054"}]}


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
