set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ upperThresh int 32 regular  }
	{ upperThresh_c int 32 regular {fifo 1}  }
	{ lowerThresh int 32 regular  }
	{ lowerThresh_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "upperThresh", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "upperThresh_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lowerThresh", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lowerThresh_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ upperThresh sc_in sc_lv 32 signal 0 } 
	{ upperThresh_c_din sc_out sc_lv 32 signal 1 } 
	{ upperThresh_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ upperThresh_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ upperThresh_c_full_n sc_in sc_logic 1 signal 1 } 
	{ upperThresh_c_write sc_out sc_logic 1 signal 1 } 
	{ lowerThresh sc_in sc_lv 32 signal 2 } 
	{ lowerThresh_c_din sc_out sc_lv 32 signal 3 } 
	{ lowerThresh_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ lowerThresh_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ lowerThresh_c_full_n sc_in sc_logic 1 signal 3 } 
	{ lowerThresh_c_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "upperThresh", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upperThresh", "role": "default" }} , 
 	{ "name": "upperThresh_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upperThresh_c", "role": "din" }} , 
 	{ "name": "upperThresh_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "upperThresh_c", "role": "num_data_valid" }} , 
 	{ "name": "upperThresh_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "upperThresh_c", "role": "fifo_cap" }} , 
 	{ "name": "upperThresh_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upperThresh_c", "role": "full_n" }} , 
 	{ "name": "upperThresh_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upperThresh_c", "role": "write" }} , 
 	{ "name": "lowerThresh", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lowerThresh", "role": "default" }} , 
 	{ "name": "lowerThresh_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lowerThresh_c", "role": "din" }} , 
 	{ "name": "lowerThresh_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lowerThresh_c", "role": "num_data_valid" }} , 
 	{ "name": "lowerThresh_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lowerThresh_c", "role": "fifo_cap" }} , 
 	{ "name": "lowerThresh_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lowerThresh_c", "role": "full_n" }} , 
 	{ "name": "lowerThresh_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lowerThresh_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "upperThresh", "Type" : "None", "Direction" : "I"},
			{"Name" : "upperThresh_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "upperThresh_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lowerThresh", "Type" : "None", "Direction" : "I"},
			{"Name" : "lowerThresh_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "lowerThresh_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		upperThresh {Type I LastRead 0 FirstWrite -1}
		upperThresh_c {Type O LastRead -1 FirstWrite 0}
		lowerThresh {Type I LastRead 0 FirstWrite -1}
		lowerThresh_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	upperThresh { ap_none {  { upperThresh in_data 0 32 } } }
	upperThresh_c { ap_fifo {  { upperThresh_c_din fifo_port_we 1 32 }  { upperThresh_c_num_data_valid fifo_status_num_data_valid 0 3 }  { upperThresh_c_fifo_cap fifo_update 0 3 }  { upperThresh_c_full_n fifo_status 0 1 }  { upperThresh_c_write fifo_data 1 1 } } }
	lowerThresh { ap_none {  { lowerThresh in_data 0 32 } } }
	lowerThresh_c { ap_fifo {  { lowerThresh_c_din fifo_port_we 1 32 }  { lowerThresh_c_num_data_valid fifo_status_num_data_valid 0 3 }  { lowerThresh_c_fifo_cap fifo_update 0 3 }  { lowerThresh_c_full_n fifo_status 0 1 }  { lowerThresh_c_write fifo_data 1 1 } } }
}
