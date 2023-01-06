set moduleName hdc_maxi_Pipeline_VITIS_LOOP_15_1
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
set C_modelName {hdc_maxi_Pipeline_VITIS_LOOP_15_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ IM_V_data_V int 32 regular {axi_s 0 volatile  { IM Data } }  }
	{ IM_V_keep_V int 4 regular {axi_s 0 volatile  { IM Keep } }  }
	{ IM_V_strb_V int 4 regular {axi_s 0 volatile  { IM Strb } }  }
	{ IM_V_user_V int 1 regular {axi_s 0 volatile  { IM User } }  }
	{ IM_V_last_V int 1 regular {axi_s 0 volatile  { IM Last } }  }
	{ IM_V_id_V int 1 regular {axi_s 0 volatile  { IM ID } }  }
	{ IM_V_dest_V int 1 regular {axi_s 0 volatile  { IM Dest } }  }
	{ new_IM_1_02_out int 8192 regular {pointer 1}  }
	{ new_IM_0_01_out int 8192 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "IM_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "new_IM_1_02_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "new_IM_0_01_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ IM_TVALID sc_in sc_logic 1 invld 0 } 
	{ IM_TDATA sc_in sc_lv 32 signal 0 } 
	{ IM_TREADY sc_out sc_logic 1 inacc 6 } 
	{ IM_TKEEP sc_in sc_lv 4 signal 1 } 
	{ IM_TSTRB sc_in sc_lv 4 signal 2 } 
	{ IM_TUSER sc_in sc_lv 1 signal 3 } 
	{ IM_TLAST sc_in sc_lv 1 signal 4 } 
	{ IM_TID sc_in sc_lv 1 signal 5 } 
	{ IM_TDEST sc_in sc_lv 1 signal 6 } 
	{ new_IM_1_02_out sc_out sc_lv 8192 signal 7 } 
	{ new_IM_1_02_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ new_IM_0_01_out sc_out sc_lv 8192 signal 8 } 
	{ new_IM_0_01_out_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "IM_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "IM_V_data_V", "role": "default" }} , 
 	{ "name": "IM_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IM_V_data_V", "role": "default" }} , 
 	{ "name": "IM_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "IM_V_dest_V", "role": "default" }} , 
 	{ "name": "IM_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IM_V_keep_V", "role": "default" }} , 
 	{ "name": "IM_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IM_V_strb_V", "role": "default" }} , 
 	{ "name": "IM_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IM_V_user_V", "role": "default" }} , 
 	{ "name": "IM_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IM_V_last_V", "role": "default" }} , 
 	{ "name": "IM_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IM_V_id_V", "role": "default" }} , 
 	{ "name": "IM_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IM_V_dest_V", "role": "default" }} , 
 	{ "name": "new_IM_1_02_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "new_IM_1_02_out", "role": "default" }} , 
 	{ "name": "new_IM_1_02_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "new_IM_1_02_out", "role": "ap_vld" }} , 
 	{ "name": "new_IM_0_01_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "new_IM_0_01_out", "role": "default" }} , 
 	{ "name": "new_IM_0_01_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "new_IM_0_01_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_15_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1002", "EstimateLatencyMax" : "1002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "IM_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IM_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "new_IM_1_02_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "new_IM_0_01_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8192_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hdc_maxi_Pipeline_VITIS_LOOP_15_1 {
		IM_V_data_V {Type I LastRead 0 FirstWrite -1}
		IM_V_keep_V {Type I LastRead 0 FirstWrite -1}
		IM_V_strb_V {Type I LastRead 0 FirstWrite -1}
		IM_V_user_V {Type I LastRead 0 FirstWrite -1}
		IM_V_last_V {Type I LastRead 0 FirstWrite -1}
		IM_V_id_V {Type I LastRead 0 FirstWrite -1}
		IM_V_dest_V {Type I LastRead 0 FirstWrite -1}
		new_IM_1_02_out {Type O LastRead -1 FirstWrite 0}
		new_IM_0_01_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1002", "Max" : "1002"}
	, {"Name" : "Interval", "Min" : "1002", "Max" : "1002"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	IM_V_data_V { axis {  { IM_TVALID in_vld 0 1 }  { IM_TDATA in_data 0 32 } } }
	IM_V_keep_V { axis {  { IM_TKEEP in_data 0 4 } } }
	IM_V_strb_V { axis {  { IM_TSTRB in_data 0 4 } } }
	IM_V_user_V { axis {  { IM_TUSER in_data 0 1 } } }
	IM_V_last_V { axis {  { IM_TLAST in_data 0 1 } } }
	IM_V_id_V { axis {  { IM_TID in_data 0 1 } } }
	IM_V_dest_V { axis {  { IM_TREADY in_acc 1 1 }  { IM_TDEST in_data 0 1 } } }
	new_IM_1_02_out { ap_vld {  { new_IM_1_02_out out_data 1 8192 }  { new_IM_1_02_out_ap_vld out_vld 1 1 } } }
	new_IM_0_01_out { ap_vld {  { new_IM_0_01_out out_data 1 8192 }  { new_IM_0_01_out_ap_vld out_vld 1 1 } } }
}
