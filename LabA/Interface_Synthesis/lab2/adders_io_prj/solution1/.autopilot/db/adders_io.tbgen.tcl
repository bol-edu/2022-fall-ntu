set moduleName adders_io
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
set C_modelName {adders_io}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 32 regular  }
	{ in2 int 32 regular  }
	{ in_out1 int 32 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_out1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1 sc_in sc_lv 32 signal 0 } 
	{ in1_ap_vld sc_in sc_logic 1 invld 0 } 
	{ in2 sc_in sc_lv 32 signal 1 } 
	{ in2_ap_ack sc_out sc_logic 1 inacc 1 } 
	{ in_out1_i sc_in sc_lv 32 signal 2 } 
	{ in_out1_i_ap_vld sc_in sc_logic 1 invld 2 } 
	{ in_out1_i_ap_ack sc_out sc_logic 1 inacc 2 } 
	{ in_out1_o sc_out sc_lv 32 signal 2 } 
	{ in_out1_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ in_out1_o_ap_ack sc_in sc_logic 1 outacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1", "role": "default" }} , 
 	{ "name": "in1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in1", "role": "ap_vld" }} , 
 	{ "name": "in2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in2", "role": "default" }} , 
 	{ "name": "in2_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in2", "role": "ap_ack" }} , 
 	{ "name": "in_out1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_out1", "role": "i" }} , 
 	{ "name": "in_out1_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_out1", "role": "i_ap_vld" }} , 
 	{ "name": "in_out1_i_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_out1", "role": "i_ap_ack" }} , 
 	{ "name": "in_out1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_out1", "role": "o" }} , 
 	{ "name": "in_out1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_out1", "role": "o_ap_vld" }} , 
 	{ "name": "in_out1_o_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "in_out1", "role": "o_ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "adders_io",
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
			{"Name" : "in1", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2", "Type" : "Ack", "Direction" : "I"},
			{"Name" : "in_out1", "Type" : "HS", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "in_out1_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "in_out1_o_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_forward_in_out1_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_forward_in_out1_o_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	adders_io {
		in1 {Type I LastRead 0 FirstWrite -1}
		in2 {Type I LastRead 1 FirstWrite -1}
		in_out1 {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1 { ap_vld {  { in1 in_data 0 32 }  { in1_ap_vld in_vld 0 1 } } }
	in2 { ap_ack {  { in2 in_data 0 32 }  { in2_ap_ack in_acc 1 1 } } }
	in_out1 { ap_hs {  { in_out1_i in_data 0 32 }  { in_out1_i_ap_vld in_vld 0 1 }  { in_out1_i_ap_ack in_acc 1 1 }  { in_out1_o out_data 1 32 }  { in_out1_o_ap_vld out_vld 1 1 }  { in_out1_o_ap_ack out_acc 0 1 } } }
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
