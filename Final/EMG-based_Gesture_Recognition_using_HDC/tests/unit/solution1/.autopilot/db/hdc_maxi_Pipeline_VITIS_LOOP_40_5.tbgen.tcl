set moduleName hdc_maxi_Pipeline_VITIS_LOOP_40_5
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
set C_modelName {hdc_maxi_Pipeline_VITIS_LOOP_40_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ test_data_V_data_V int 32 regular {axi_s 0 volatile  { test_data Data } }  }
	{ test_data_V_keep_V int 4 regular {axi_s 0 volatile  { test_data Keep } }  }
	{ test_data_V_strb_V int 4 regular {axi_s 0 volatile  { test_data Strb } }  }
	{ test_data_V_user_V int 1 regular {axi_s 0 volatile  { test_data User } }  }
	{ test_data_V_last_V int 1 regular {axi_s 0 volatile  { test_data Last } }  }
	{ test_data_V_id_V int 1 regular {axi_s 0 volatile  { test_data ID } }  }
	{ test_data_V_dest_V int 1 regular {axi_s 0 volatile  { test_data Dest } }  }
	{ test_data_d int 512 regular {array 20 { 0 3 } 0 1 }  }
	{ tmp_keep_V_out int 4 regular {pointer 1}  }
	{ tmp_strb_V_out int 4 regular {pointer 1}  }
	{ tmp_user_V_out int 1 regular {pointer 1}  }
	{ tmp_last_V_out int 1 regular {pointer 1}  }
	{ tmp_id_V_out int 1 regular {pointer 1}  }
	{ tmp_dest_V_out int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "test_data_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_d", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_keep_V_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_strb_V_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_user_V_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_last_V_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_id_V_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_dest_V_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ test_data_TVALID sc_in sc_logic 1 invld 0 } 
	{ test_data_TDATA sc_in sc_lv 32 signal 0 } 
	{ test_data_TREADY sc_out sc_logic 1 inacc 6 } 
	{ test_data_TKEEP sc_in sc_lv 4 signal 1 } 
	{ test_data_TSTRB sc_in sc_lv 4 signal 2 } 
	{ test_data_TUSER sc_in sc_lv 1 signal 3 } 
	{ test_data_TLAST sc_in sc_lv 1 signal 4 } 
	{ test_data_TID sc_in sc_lv 1 signal 5 } 
	{ test_data_TDEST sc_in sc_lv 1 signal 6 } 
	{ test_data_d_address0 sc_out sc_lv 5 signal 7 } 
	{ test_data_d_ce0 sc_out sc_logic 1 signal 7 } 
	{ test_data_d_we0 sc_out sc_lv 64 signal 7 } 
	{ test_data_d_d0 sc_out sc_lv 512 signal 7 } 
	{ tmp_keep_V_out sc_out sc_lv 4 signal 8 } 
	{ tmp_keep_V_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ tmp_strb_V_out sc_out sc_lv 4 signal 9 } 
	{ tmp_strb_V_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ tmp_user_V_out sc_out sc_lv 1 signal 10 } 
	{ tmp_user_V_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ tmp_last_V_out sc_out sc_lv 1 signal 11 } 
	{ tmp_last_V_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ tmp_id_V_out sc_out sc_lv 1 signal 12 } 
	{ tmp_id_V_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ tmp_dest_V_out sc_out sc_lv 1 signal 13 } 
	{ tmp_dest_V_out_ap_vld sc_out sc_logic 1 outvld 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "test_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "test_data_V_data_V", "role": "default" }} , 
 	{ "name": "test_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "test_data_V_data_V", "role": "default" }} , 
 	{ "name": "test_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "test_data_V_dest_V", "role": "default" }} , 
 	{ "name": "test_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "test_data_V_keep_V", "role": "default" }} , 
 	{ "name": "test_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "test_data_V_strb_V", "role": "default" }} , 
 	{ "name": "test_data_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_V_user_V", "role": "default" }} , 
 	{ "name": "test_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_V_last_V", "role": "default" }} , 
 	{ "name": "test_data_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_V_id_V", "role": "default" }} , 
 	{ "name": "test_data_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_V_dest_V", "role": "default" }} , 
 	{ "name": "test_data_d_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "test_data_d", "role": "address0" }} , 
 	{ "name": "test_data_d_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_d", "role": "ce0" }} , 
 	{ "name": "test_data_d_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "test_data_d", "role": "we0" }} , 
 	{ "name": "test_data_d_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "test_data_d", "role": "d0" }} , 
 	{ "name": "tmp_keep_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp_keep_V_out", "role": "default" }} , 
 	{ "name": "tmp_keep_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_keep_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_strb_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp_strb_V_out", "role": "default" }} , 
 	{ "name": "tmp_strb_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_strb_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_user_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_user_V_out", "role": "default" }} , 
 	{ "name": "tmp_user_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_user_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_last_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_last_V_out", "role": "default" }} , 
 	{ "name": "tmp_last_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_last_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_id_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_id_V_out", "role": "default" }} , 
 	{ "name": "tmp_id_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_id_V_out", "role": "ap_vld" }} , 
 	{ "name": "tmp_dest_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dest_V_out", "role": "default" }} , 
 	{ "name": "tmp_dest_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_dest_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_40_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "322", "EstimateLatencyMax" : "322",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "test_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "test_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "test_data_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_d", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_keep_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_strb_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_user_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_last_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_id_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_dest_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hdc_maxi_Pipeline_VITIS_LOOP_40_5 {
		test_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_user_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_id_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_dest_V {Type I LastRead 0 FirstWrite -1}
		test_data_d {Type O LastRead -1 FirstWrite 1}
		tmp_keep_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_strb_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_user_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_last_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_id_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_dest_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "322", "Max" : "322"}
	, {"Name" : "Interval", "Min" : "322", "Max" : "322"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	test_data_V_data_V { axis {  { test_data_TVALID in_vld 0 1 }  { test_data_TDATA in_data 0 32 } } }
	test_data_V_keep_V { axis {  { test_data_TKEEP in_data 0 4 } } }
	test_data_V_strb_V { axis {  { test_data_TSTRB in_data 0 4 } } }
	test_data_V_user_V { axis {  { test_data_TUSER in_data 0 1 } } }
	test_data_V_last_V { axis {  { test_data_TLAST in_data 0 1 } } }
	test_data_V_id_V { axis {  { test_data_TID in_data 0 1 } } }
	test_data_V_dest_V { axis {  { test_data_TREADY in_acc 1 1 }  { test_data_TDEST in_data 0 1 } } }
	test_data_d { ap_memory {  { test_data_d_address0 mem_address 1 5 }  { test_data_d_ce0 mem_ce 1 1 }  { test_data_d_we0 mem_we 1 64 }  { test_data_d_d0 mem_din 1 512 } } }
	tmp_keep_V_out { ap_vld {  { tmp_keep_V_out out_data 1 4 }  { tmp_keep_V_out_ap_vld out_vld 1 1 } } }
	tmp_strb_V_out { ap_vld {  { tmp_strb_V_out out_data 1 4 }  { tmp_strb_V_out_ap_vld out_vld 1 1 } } }
	tmp_user_V_out { ap_vld {  { tmp_user_V_out out_data 1 1 }  { tmp_user_V_out_ap_vld out_vld 1 1 } } }
	tmp_last_V_out { ap_vld {  { tmp_last_V_out out_data 1 1 }  { tmp_last_V_out_ap_vld out_vld 1 1 } } }
	tmp_id_V_out { ap_vld {  { tmp_id_V_out out_data 1 1 }  { tmp_id_V_out_ap_vld out_vld 1 1 } } }
	tmp_dest_V_out { ap_vld {  { tmp_dest_V_out out_data 1 1 }  { tmp_dest_V_out_ap_vld out_vld 1 1 } } }
}
