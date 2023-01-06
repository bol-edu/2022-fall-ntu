set moduleName array_io
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
set C_modelName {array_io}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_o_0 int 16 regular {fifo 1 volatile }  }
	{ d_o_1 int 16 regular {fifo 1 volatile }  }
	{ d_i_0 int 16 regular {array 16 { 1 1 } 1 1 }  }
	{ d_i_1 int 16 regular {array 16 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_o_0", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_1", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_i_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_o_0_din sc_out sc_lv 16 signal 0 } 
	{ d_o_0_full_n sc_in sc_logic 1 signal 0 } 
	{ d_o_0_write sc_out sc_logic 1 signal 0 } 
	{ d_o_1_din sc_out sc_lv 16 signal 1 } 
	{ d_o_1_full_n sc_in sc_logic 1 signal 1 } 
	{ d_o_1_write sc_out sc_logic 1 signal 1 } 
	{ d_i_0_address0 sc_out sc_lv 4 signal 2 } 
	{ d_i_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ d_i_0_q0 sc_in sc_lv 16 signal 2 } 
	{ d_i_0_address1 sc_out sc_lv 4 signal 2 } 
	{ d_i_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ d_i_0_q1 sc_in sc_lv 16 signal 2 } 
	{ d_i_1_address0 sc_out sc_lv 4 signal 3 } 
	{ d_i_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ d_i_1_q0 sc_in sc_lv 16 signal 3 } 
	{ d_i_1_address1 sc_out sc_lv 4 signal 3 } 
	{ d_i_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ d_i_1_q1 sc_in sc_lv 16 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_o_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_0", "role": "din" }} , 
 	{ "name": "d_o_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_0", "role": "full_n" }} , 
 	{ "name": "d_o_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_0", "role": "write" }} , 
 	{ "name": "d_o_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_1", "role": "din" }} , 
 	{ "name": "d_o_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_1", "role": "full_n" }} , 
 	{ "name": "d_o_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_1", "role": "write" }} , 
 	{ "name": "d_i_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_i_0", "role": "address0" }} , 
 	{ "name": "d_i_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_0", "role": "ce0" }} , 
 	{ "name": "d_i_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_0", "role": "q0" }} , 
 	{ "name": "d_i_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_i_0", "role": "address1" }} , 
 	{ "name": "d_i_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_0", "role": "ce1" }} , 
 	{ "name": "d_i_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_0", "role": "q1" }} , 
 	{ "name": "d_i_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_i_1", "role": "address0" }} , 
 	{ "name": "d_i_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_1", "role": "ce0" }} , 
 	{ "name": "d_i_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_1", "role": "q0" }} , 
 	{ "name": "d_i_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_i_1", "role": "address1" }} , 
 	{ "name": "d_i_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_1", "role": "ce1" }} , 
 	{ "name": "d_i_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "array_io",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_o_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_i_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	array_io {
		d_o_0 {Type O LastRead -1 FirstWrite 2}
		d_o_1 {Type O LastRead -1 FirstWrite 2}
		d_i_0 {Type I LastRead 8 FirstWrite -1}
		d_i_1 {Type I LastRead 8 FirstWrite -1}
		acc_0 {Type IO LastRead -1 FirstWrite -1}
		acc_1 {Type IO LastRead -1 FirstWrite -1}
		acc_2 {Type IO LastRead -1 FirstWrite -1}
		acc_3 {Type IO LastRead -1 FirstWrite -1}
		acc_4 {Type IO LastRead -1 FirstWrite -1}
		acc_5 {Type IO LastRead -1 FirstWrite -1}
		acc_6 {Type IO LastRead -1 FirstWrite -1}
		acc_7 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_o_0 { ap_fifo {  { d_o_0_din fifo_port_we 1 16 }  { d_o_0_full_n fifo_status 0 1 }  { d_o_0_write fifo_data 1 1 } } }
	d_o_1 { ap_fifo {  { d_o_1_din fifo_port_we 1 16 }  { d_o_1_full_n fifo_status 0 1 }  { d_o_1_write fifo_data 1 1 } } }
	d_i_0 { ap_memory {  { d_i_0_address0 mem_address 1 4 }  { d_i_0_ce0 mem_ce 1 1 }  { d_i_0_q0 in_data 0 16 }  { d_i_0_address1 MemPortADDR2 1 4 }  { d_i_0_ce1 MemPortCE2 1 1 }  { d_i_0_q1 in_data 0 16 } } }
	d_i_1 { ap_memory {  { d_i_1_address0 mem_address 1 4 }  { d_i_1_ce0 mem_ce 1 1 }  { d_i_1_q0 in_data 0 16 }  { d_i_1_address1 MemPortADDR2 1 4 }  { d_i_1_ce1 MemPortCE2 1 1 }  { d_i_1_q1 in_data 0 16 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	d_o_0 { fifo_write 16 no_conditional }
	d_o_1 { fifo_write 16 no_conditional }
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
