set moduleName write_p3
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {write_p3}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_pMem int 8192 regular {array 158 { 0 3 } 0 1 }  }
	{ p_read int 8192 regular  }
	{ addr uint 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_pMem", "interface" : "memory", "bitwidth" : 8192, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8192, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_pMem_address0 sc_out sc_lv 8 signal 0 } 
	{ this_pMem_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_pMem_we0 sc_out sc_lv 1024 signal 0 } 
	{ this_pMem_d0 sc_out sc_lv 8192 signal 0 } 
	{ p_read sc_in sc_lv 8192 signal 1 } 
	{ addr sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_pMem_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "this_pMem", "role": "address0" }} , 
 	{ "name": "this_pMem_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_pMem", "role": "ce0" }} , 
 	{ "name": "this_pMem_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "this_pMem", "role": "we0" }} , 
 	{ "name": "this_pMem_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "this_pMem", "role": "d0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8192, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "addr", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "addr", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "addr", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	write_p3 {
		this_pMem {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_pMem { ap_memory {  { this_pMem_address0 mem_address 1 8 }  { this_pMem_ce0 mem_ce 1 1 }  { this_pMem_we0 mem_we 1 1024 }  { this_pMem_d0 mem_din 1 8192 } } }
	p_read { ap_none {  { p_read in_data 0 8192 } } }
	addr { ap_none {  { addr in_data 0 8 } } }
}
