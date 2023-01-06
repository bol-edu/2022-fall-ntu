set moduleName hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3
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
set C_modelName {hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ AM_out_V_data_V int 32 regular {axi_s 0 volatile  { AM_out Data } }  }
	{ AM_out_V_keep_V int 4 regular {axi_s 0 volatile  { AM_out Keep } }  }
	{ AM_out_V_strb_V int 4 regular {axi_s 0 volatile  { AM_out Strb } }  }
	{ AM_out_V_user_V int 1 regular {axi_s 0 volatile  { AM_out User } }  }
	{ AM_out_V_last_V int 1 regular {axi_s 0 volatile  { AM_out Last } }  }
	{ AM_out_V_id_V int 1 regular {axi_s 0 volatile  { AM_out ID } }  }
	{ AM_out_V_dest_V int 1 regular {axi_s 0 volatile  { AM_out Dest } }  }
	{ AM int 128 regular {array 1250 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AM_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AM", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AM_out_TVALID sc_in sc_logic 1 invld 0 } 
	{ AM_out_TDATA sc_in sc_lv 32 signal 0 } 
	{ AM_out_TREADY sc_out sc_logic 1 inacc 6 } 
	{ AM_out_TKEEP sc_in sc_lv 4 signal 1 } 
	{ AM_out_TSTRB sc_in sc_lv 4 signal 2 } 
	{ AM_out_TUSER sc_in sc_lv 1 signal 3 } 
	{ AM_out_TLAST sc_in sc_lv 1 signal 4 } 
	{ AM_out_TID sc_in sc_lv 1 signal 5 } 
	{ AM_out_TDEST sc_in sc_lv 1 signal 6 } 
	{ AM_address0 sc_out sc_lv 11 signal 7 } 
	{ AM_ce0 sc_out sc_logic 1 signal 7 } 
	{ AM_we0 sc_out sc_lv 16 signal 7 } 
	{ AM_d0 sc_out sc_lv 128 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "AM_out_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "AM_out_V_data_V", "role": "default" }} , 
 	{ "name": "AM_out_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AM_out_V_data_V", "role": "default" }} , 
 	{ "name": "AM_out_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "AM_out_V_dest_V", "role": "default" }} , 
 	{ "name": "AM_out_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AM_out_V_keep_V", "role": "default" }} , 
 	{ "name": "AM_out_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AM_out_V_strb_V", "role": "default" }} , 
 	{ "name": "AM_out_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AM_out_V_user_V", "role": "default" }} , 
 	{ "name": "AM_out_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AM_out_V_last_V", "role": "default" }} , 
 	{ "name": "AM_out_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AM_out_V_id_V", "role": "default" }} , 
 	{ "name": "AM_out_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AM_out_V_dest_V", "role": "default" }} , 
 	{ "name": "AM_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "AM", "role": "address0" }} , 
 	{ "name": "AM_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AM", "role": "ce0" }} , 
 	{ "name": "AM_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "AM", "role": "we0" }} , 
 	{ "name": "AM_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "AM", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5004", "EstimateLatencyMax" : "5004",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AM_out_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AM_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AM_out_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_2_VITIS_LOOP_22_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3ns_8ns_8ns_11_4_1_U12", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3 {
		AM_out_V_data_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_keep_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_strb_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_user_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_last_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_id_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_dest_V {Type I LastRead 0 FirstWrite -1}
		AM {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5004", "Max" : "5004"}
	, {"Name" : "Interval", "Min" : "5004", "Max" : "5004"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AM_out_V_data_V { axis {  { AM_out_TVALID in_vld 0 1 }  { AM_out_TDATA in_data 0 32 } } }
	AM_out_V_keep_V { axis {  { AM_out_TKEEP in_data 0 4 } } }
	AM_out_V_strb_V { axis {  { AM_out_TSTRB in_data 0 4 } } }
	AM_out_V_user_V { axis {  { AM_out_TUSER in_data 0 1 } } }
	AM_out_V_last_V { axis {  { AM_out_TLAST in_data 0 1 } } }
	AM_out_V_id_V { axis {  { AM_out_TID in_data 0 1 } } }
	AM_out_V_dest_V { axis {  { AM_out_TREADY in_acc 1 1 }  { AM_out_TDEST in_data 0 1 } } }
	AM { ap_memory {  { AM_address0 mem_address 1 11 }  { AM_ce0 mem_ce 1 1 }  { AM_we0 mem_we 1 16 }  { AM_d0 mem_din 1 128 } } }
}
