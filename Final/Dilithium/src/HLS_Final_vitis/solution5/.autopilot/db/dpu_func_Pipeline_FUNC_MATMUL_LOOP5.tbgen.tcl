set moduleName dpu_func_Pipeline_FUNC_MATMUL_LOOP5
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
set C_modelName {dpu_func_Pipeline_FUNC_MATMUL_LOOP5}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_p1_14 int 8192 regular  }
	{ this_p2_8 int 8192 regular  }
	{ this_p3_14 int 8192 regular  }
	{ this_p4_14 int 8192 regular  }
	{ this_pMem int 8192 regular {array 158 { 2 1 } 1 1 }  }
	{ idxprom_i550 int 7 regular  }
	{ itr_cast int 3 regular  }
	{ this_p1_15_out int 8192 regular {pointer 1}  }
	{ this_p2_9_out int 8192 regular {pointer 1}  }
	{ this_p3_15_out int 8192 regular {pointer 2}  }
	{ this_p4_15_out int 8192 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_p1_14", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_p2_8", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_p3_14", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_p4_14", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "this_pMem", "interface" : "memory", "bitwidth" : 8192, "direction" : "READWRITE"} , 
 	{ "Name" : "idxprom_i550", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "itr_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "this_p1_15_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_p2_9_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_p3_15_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "READWRITE"} , 
 	{ "Name" : "this_p4_15_out", "interface" : "wire", "bitwidth" : 8192, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_p1_14 sc_in sc_lv 8192 signal 0 } 
	{ this_p2_8 sc_in sc_lv 8192 signal 1 } 
	{ this_p3_14 sc_in sc_lv 8192 signal 2 } 
	{ this_p4_14 sc_in sc_lv 8192 signal 3 } 
	{ this_pMem_address0 sc_out sc_lv 8 signal 4 } 
	{ this_pMem_ce0 sc_out sc_logic 1 signal 4 } 
	{ this_pMem_we0 sc_out sc_lv 1024 signal 4 } 
	{ this_pMem_d0 sc_out sc_lv 8192 signal 4 } 
	{ this_pMem_q0 sc_in sc_lv 8192 signal 4 } 
	{ this_pMem_address1 sc_out sc_lv 8 signal 4 } 
	{ this_pMem_ce1 sc_out sc_logic 1 signal 4 } 
	{ this_pMem_q1 sc_in sc_lv 8192 signal 4 } 
	{ idxprom_i550 sc_in sc_lv 7 signal 5 } 
	{ itr_cast sc_in sc_lv 3 signal 6 } 
	{ this_p1_15_out sc_out sc_lv 8192 signal 7 } 
	{ this_p1_15_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ this_p2_9_out sc_out sc_lv 8192 signal 8 } 
	{ this_p2_9_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ this_p3_15_out_i sc_in sc_lv 8192 signal 9 } 
	{ this_p3_15_out_o sc_out sc_lv 8192 signal 9 } 
	{ this_p3_15_out_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ this_p4_15_out_i sc_in sc_lv 8192 signal 10 } 
	{ this_p4_15_out_o sc_out sc_lv 8192 signal 10 } 
	{ this_p4_15_out_o_ap_vld sc_out sc_logic 1 outvld 10 } 
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
 	{ "name": "this_p1_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p1_14", "role": "default" }} , 
 	{ "name": "this_p2_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p2_8", "role": "default" }} , 
 	{ "name": "this_p3_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p3_14", "role": "default" }} , 
 	{ "name": "this_p4_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p4_14", "role": "default" }} , 
 	{ "name": "this_pMem_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_pMem", "role": "address0" }} , 
 	{ "name": "this_pMem_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_pMem", "role": "ce0" }} , 
 	{ "name": "this_pMem_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "this_pMem", "role": "we0" }} , 
 	{ "name": "this_pMem_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "d0" }} , 
 	{ "name": "this_pMem_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "q0" }} , 
 	{ "name": "this_pMem_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_pMem", "role": "address1" }} , 
 	{ "name": "this_pMem_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_pMem", "role": "ce1" }} , 
 	{ "name": "this_pMem_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "q1" }} , 
 	{ "name": "idxprom_i550", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "idxprom_i550", "role": "default" }} , 
 	{ "name": "itr_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "itr_cast", "role": "default" }} , 
 	{ "name": "this_p1_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p1_15_out", "role": "default" }} , 
 	{ "name": "this_p1_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_p1_15_out", "role": "ap_vld" }} , 
 	{ "name": "this_p2_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p2_9_out", "role": "default" }} , 
 	{ "name": "this_p2_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_p2_9_out", "role": "ap_vld" }} , 
 	{ "name": "this_p3_15_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p3_15_out", "role": "i" }} , 
 	{ "name": "this_p3_15_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p3_15_out", "role": "o" }} , 
 	{ "name": "this_p3_15_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_p3_15_out", "role": "o_ap_vld" }} , 
 	{ "name": "this_p4_15_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p4_15_out", "role": "i" }} , 
 	{ "name": "this_p4_15_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_p4_15_out", "role": "o" }} , 
 	{ "name": "this_p4_15_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_p4_15_out", "role": "o_ap_vld" }} , 
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		this_p4_15_out {Type IO LastRead 1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_p1_14 { ap_none {  { this_p1_14 in_data 0 8192 } } }
	this_p2_8 { ap_none {  { this_p2_8 in_data 0 8192 } } }
	this_p3_14 { ap_none {  { this_p3_14 in_data 0 8192 } } }
	this_p4_14 { ap_none {  { this_p4_14 in_data 0 8192 } } }
	this_pMem { ap_memory {  { this_pMem_address0 mem_address 1 8 }  { this_pMem_ce0 mem_ce 1 1 }  { this_pMem_we0 mem_we 1 1024 }  { this_pMem_d0 mem_din 1 8192 }  { this_pMem_q0 in_data 0 8192 }  { this_pMem_address1 MemPortADDR2 1 8 }  { this_pMem_ce1 MemPortCE2 1 1 }  { this_pMem_q1 in_data 0 8192 } } }
	idxprom_i550 { ap_none {  { idxprom_i550 in_data 0 7 } } }
	itr_cast { ap_none {  { itr_cast in_data 0 3 } } }
	this_p1_15_out { ap_vld {  { this_p1_15_out out_data 1 8192 }  { this_p1_15_out_ap_vld out_vld 1 1 } } }
	this_p2_9_out { ap_vld {  { this_p2_9_out out_data 1 8192 }  { this_p2_9_out_ap_vld out_vld 1 1 } } }
	this_p3_15_out { ap_ovld {  { this_p3_15_out_i in_data 0 8192 }  { this_p3_15_out_o out_data 1 8192 }  { this_p3_15_out_o_ap_vld out_vld 1 1 } } }
	this_p4_15_out { ap_ovld {  { this_p4_15_out_i in_data 0 8192 }  { this_p4_15_out_o out_data 1 8192 }  { this_p4_15_out_o_ap_vld out_vld 1 1 } } }
}
