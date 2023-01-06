set moduleName Loop_partialsum_proc
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Loop_partialsum_proc}
set C_modelType { int 512 }
set C_modelArgList {
	{ Bcols_V_a_0 int 32 regular {fifo 0 volatile }  }
	{ Bcols_V_a_1 int 32 regular {fifo 0 volatile }  }
	{ Bcols_V_a_2 int 32 regular {fifo 0 volatile }  }
	{ Bcols_V_a_3 int 32 regular {fifo 0 volatile }  }
	{ A_0 int 32 regular {fifo 0 volatile } {global 0}  }
	{ A_1 int 32 regular {fifo 0 volatile } {global 0}  }
	{ A_2 int 32 regular {fifo 0 volatile } {global 0}  }
	{ A_3 int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Bcols_V_a_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Bcols_V_a_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Bcols_V_a_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Bcols_V_a_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "A_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "A_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "A_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Bcols_V_a_0_dout sc_in sc_lv 32 signal 0 } 
	{ Bcols_V_a_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ Bcols_V_a_0_read sc_out sc_logic 1 signal 0 } 
	{ Bcols_V_a_1_dout sc_in sc_lv 32 signal 1 } 
	{ Bcols_V_a_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ Bcols_V_a_1_read sc_out sc_logic 1 signal 1 } 
	{ Bcols_V_a_2_dout sc_in sc_lv 32 signal 2 } 
	{ Bcols_V_a_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ Bcols_V_a_2_read sc_out sc_logic 1 signal 2 } 
	{ Bcols_V_a_3_dout sc_in sc_lv 32 signal 3 } 
	{ Bcols_V_a_3_empty_n sc_in sc_logic 1 signal 3 } 
	{ Bcols_V_a_3_read sc_out sc_logic 1 signal 3 } 
	{ A_0_dout sc_in sc_lv 32 signal 4 } 
	{ A_0_empty_n sc_in sc_logic 1 signal 4 } 
	{ A_0_read sc_out sc_logic 1 signal 4 } 
	{ A_1_dout sc_in sc_lv 32 signal 5 } 
	{ A_1_empty_n sc_in sc_logic 1 signal 5 } 
	{ A_1_read sc_out sc_logic 1 signal 5 } 
	{ A_2_dout sc_in sc_lv 32 signal 6 } 
	{ A_2_empty_n sc_in sc_logic 1 signal 6 } 
	{ A_2_read sc_out sc_logic 1 signal 6 } 
	{ A_3_dout sc_in sc_lv 32 signal 7 } 
	{ A_3_empty_n sc_in sc_logic 1 signal 7 } 
	{ A_3_read sc_out sc_logic 1 signal 7 } 
	{ ap_return sc_out sc_lv 512 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Bcols_V_a_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Bcols_V_a_0", "role": "dout" }} , 
 	{ "name": "Bcols_V_a_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols_V_a_0", "role": "empty_n" }} , 
 	{ "name": "Bcols_V_a_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols_V_a_0", "role": "read" }} , 
 	{ "name": "Bcols_V_a_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Bcols_V_a_1", "role": "dout" }} , 
 	{ "name": "Bcols_V_a_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols_V_a_1", "role": "empty_n" }} , 
 	{ "name": "Bcols_V_a_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols_V_a_1", "role": "read" }} , 
 	{ "name": "Bcols_V_a_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Bcols_V_a_2", "role": "dout" }} , 
 	{ "name": "Bcols_V_a_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols_V_a_2", "role": "empty_n" }} , 
 	{ "name": "Bcols_V_a_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols_V_a_2", "role": "read" }} , 
 	{ "name": "Bcols_V_a_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Bcols_V_a_3", "role": "dout" }} , 
 	{ "name": "Bcols_V_a_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols_V_a_3", "role": "empty_n" }} , 
 	{ "name": "Bcols_V_a_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols_V_a_3", "role": "read" }} , 
 	{ "name": "A_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "dout" }} , 
 	{ "name": "A_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "empty_n" }} , 
 	{ "name": "A_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "read" }} , 
 	{ "name": "A_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "dout" }} , 
 	{ "name": "A_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "empty_n" }} , 
 	{ "name": "A_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "read" }} , 
 	{ "name": "A_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "dout" }} , 
 	{ "name": "A_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "empty_n" }} , 
 	{ "name": "A_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "read" }} , 
 	{ "name": "A_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "dout" }} , 
 	{ "name": "A_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "empty_n" }} , 
 	{ "name": "A_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "read" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_partialsum_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Bcols_V_a_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_V_a_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Bcols_V_a_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_V_a_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Bcols_V_a_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_V_a_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Bcols_V_a_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_V_a_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "A_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "A_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "A_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "A_3_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_partialsum_proc {
		Bcols_V_a_0 {Type I LastRead 2 FirstWrite -1}
		Bcols_V_a_1 {Type I LastRead 2 FirstWrite -1}
		Bcols_V_a_2 {Type I LastRead 2 FirstWrite -1}
		Bcols_V_a_3 {Type I LastRead 2 FirstWrite -1}
		A_0 {Type I LastRead 2 FirstWrite -1}
		A_1 {Type I LastRead 2 FirstWrite -1}
		A_2 {Type I LastRead 2 FirstWrite -1}
		A_3 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Bcols_V_a_0 { ap_fifo {  { Bcols_V_a_0_dout fifo_data 0 32 }  { Bcols_V_a_0_empty_n fifo_status 0 1 }  { Bcols_V_a_0_read fifo_update 1 1 } } }
	Bcols_V_a_1 { ap_fifo {  { Bcols_V_a_1_dout fifo_data 0 32 }  { Bcols_V_a_1_empty_n fifo_status 0 1 }  { Bcols_V_a_1_read fifo_update 1 1 } } }
	Bcols_V_a_2 { ap_fifo {  { Bcols_V_a_2_dout fifo_data 0 32 }  { Bcols_V_a_2_empty_n fifo_status 0 1 }  { Bcols_V_a_2_read fifo_update 1 1 } } }
	Bcols_V_a_3 { ap_fifo {  { Bcols_V_a_3_dout fifo_data 0 32 }  { Bcols_V_a_3_empty_n fifo_status 0 1 }  { Bcols_V_a_3_read fifo_update 1 1 } } }
	A_0 { ap_fifo {  { A_0_dout fifo_data 0 32 }  { A_0_empty_n fifo_status 0 1 }  { A_0_read fifo_update 1 1 } } }
	A_1 { ap_fifo {  { A_1_dout fifo_data 0 32 }  { A_1_empty_n fifo_status 0 1 }  { A_1_read fifo_update 1 1 } } }
	A_2 { ap_fifo {  { A_2_dout fifo_data 0 32 }  { A_2_empty_n fifo_status 0 1 }  { A_2_read fifo_update 1 1 } } }
	A_3 { ap_fifo {  { A_3_dout fifo_data 0 32 }  { A_3_empty_n fifo_status 0 1 }  { A_3_read fifo_update 1 1 } } }
}
