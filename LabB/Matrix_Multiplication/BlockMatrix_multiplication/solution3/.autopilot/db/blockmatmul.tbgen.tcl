set moduleName blockmatmul
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {blockmatmul}
set C_modelType { void 0 }
set C_modelArgList {
	{ Arows_V_a_0 int 32 regular {fifo 0 volatile }  }
	{ Arows_V_a_1 int 32 regular {fifo 0 volatile }  }
	{ Arows_V_a_2 int 32 regular {fifo 0 volatile }  }
	{ Arows_V_a_3 int 32 regular {fifo 0 volatile }  }
	{ Bcols_V_a_0 int 32 regular {fifo 0 volatile }  }
	{ Bcols_V_a_1 int 32 regular {fifo 0 volatile }  }
	{ Bcols_V_a_2 int 32 regular {fifo 0 volatile }  }
	{ Bcols_V_a_3 int 32 regular {fifo 0 volatile }  }
	{ ABpartial_out int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ it int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Arows_V_a_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Arows.V.a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "Arows_V_a_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Arows.V.a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "Arows_V_a_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Arows.V.a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "Arows_V_a_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Arows.V.a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "Bcols_V_a_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Bcols.V.a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "Bcols_V_a_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Bcols.V.a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "Bcols_V_a_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Bcols.V.a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "Bcols_V_a_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Bcols.V.a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "ABpartial_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ABpartial.out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "it", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "it","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ Arows_V_a_0_dout sc_in sc_lv 32 signal 0 } 
	{ Arows_V_a_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ Arows_V_a_0_read sc_out sc_logic 1 signal 0 } 
	{ Arows_V_a_1_dout sc_in sc_lv 32 signal 1 } 
	{ Arows_V_a_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ Arows_V_a_1_read sc_out sc_logic 1 signal 1 } 
	{ Arows_V_a_2_dout sc_in sc_lv 32 signal 2 } 
	{ Arows_V_a_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ Arows_V_a_2_read sc_out sc_logic 1 signal 2 } 
	{ Arows_V_a_3_dout sc_in sc_lv 32 signal 3 } 
	{ Arows_V_a_3_empty_n sc_in sc_logic 1 signal 3 } 
	{ Arows_V_a_3_read sc_out sc_logic 1 signal 3 } 
	{ Bcols_V_a_0_dout sc_in sc_lv 32 signal 4 } 
	{ Bcols_V_a_0_empty_n sc_in sc_logic 1 signal 4 } 
	{ Bcols_V_a_0_read sc_out sc_logic 1 signal 4 } 
	{ Bcols_V_a_1_dout sc_in sc_lv 32 signal 5 } 
	{ Bcols_V_a_1_empty_n sc_in sc_logic 1 signal 5 } 
	{ Bcols_V_a_1_read sc_out sc_logic 1 signal 5 } 
	{ Bcols_V_a_2_dout sc_in sc_lv 32 signal 6 } 
	{ Bcols_V_a_2_empty_n sc_in sc_logic 1 signal 6 } 
	{ Bcols_V_a_2_read sc_out sc_logic 1 signal 6 } 
	{ Bcols_V_a_3_dout sc_in sc_lv 32 signal 7 } 
	{ Bcols_V_a_3_empty_n sc_in sc_logic 1 signal 7 } 
	{ Bcols_V_a_3_read sc_out sc_logic 1 signal 7 } 
	{ ABpartial_out_address0 sc_out sc_lv 4 signal 8 } 
	{ ABpartial_out_ce0 sc_out sc_logic 1 signal 8 } 
	{ ABpartial_out_d0 sc_out sc_lv 32 signal 8 } 
	{ ABpartial_out_q0 sc_in sc_lv 32 signal 8 } 
	{ ABpartial_out_we0 sc_out sc_logic 1 signal 8 } 
	{ ABpartial_out_address1 sc_out sc_lv 4 signal 8 } 
	{ ABpartial_out_ce1 sc_out sc_logic 1 signal 8 } 
	{ ABpartial_out_d1 sc_out sc_lv 32 signal 8 } 
	{ ABpartial_out_q1 sc_in sc_lv 32 signal 8 } 
	{ ABpartial_out_we1 sc_out sc_logic 1 signal 8 } 
	{ it sc_in sc_lv 32 signal 9 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "Arows_V_a_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Arows_V_a_0", "role": "dout" }} , 
 	{ "name": "Arows_V_a_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows_V_a_0", "role": "empty_n" }} , 
 	{ "name": "Arows_V_a_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows_V_a_0", "role": "read" }} , 
 	{ "name": "Arows_V_a_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Arows_V_a_1", "role": "dout" }} , 
 	{ "name": "Arows_V_a_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows_V_a_1", "role": "empty_n" }} , 
 	{ "name": "Arows_V_a_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows_V_a_1", "role": "read" }} , 
 	{ "name": "Arows_V_a_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Arows_V_a_2", "role": "dout" }} , 
 	{ "name": "Arows_V_a_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows_V_a_2", "role": "empty_n" }} , 
 	{ "name": "Arows_V_a_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows_V_a_2", "role": "read" }} , 
 	{ "name": "Arows_V_a_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Arows_V_a_3", "role": "dout" }} , 
 	{ "name": "Arows_V_a_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows_V_a_3", "role": "empty_n" }} , 
 	{ "name": "Arows_V_a_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows_V_a_3", "role": "read" }} , 
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
 	{ "name": "ABpartial_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "address0" }} , 
 	{ "name": "ABpartial_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "ce0" }} , 
 	{ "name": "ABpartial_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "d0" }} , 
 	{ "name": "ABpartial_out_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "q0" }} , 
 	{ "name": "ABpartial_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "we0" }} , 
 	{ "name": "ABpartial_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "address1" }} , 
 	{ "name": "ABpartial_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "ce1" }} , 
 	{ "name": "ABpartial_out_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "d1" }} , 
 	{ "name": "ABpartial_out_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "q1" }} , 
 	{ "name": "ABpartial_out_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ABpartial_out", "role": "we1" }} , 
 	{ "name": "it", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "it", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "blockmatmul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98", "EstimateLatencyMax" : "115",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "Loop_memset_AB_proc1_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "Loop_writeoutput_pro_U0"}],
		"Port" : [
			{"Name" : "Arows_V_a_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "Arows_V_a_0"}]},
			{"Name" : "Arows_V_a_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "Arows_V_a_1"}]},
			{"Name" : "Arows_V_a_2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "Arows_V_a_2"}]},
			{"Name" : "Arows_V_a_3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "Arows_V_a_3"}]},
			{"Name" : "Bcols_V_a_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "Bcols_V_a_0"}]},
			{"Name" : "Bcols_V_a_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "Bcols_V_a_1"}]},
			{"Name" : "Bcols_V_a_2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "Bcols_V_a_2"}]},
			{"Name" : "Bcols_V_a_3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "Bcols_V_a_3"}]},
			{"Name" : "ABpartial_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_writeoutput_pro_U0", "Port" : "ABpartial_out"}]},
			{"Name" : "it", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Loop_memset_AB_proc1_U0", "Port" : "A"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AB_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_memset_AB_proc1_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "Loop_memset_AB_proc1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98", "EstimateLatencyMax" : "115",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AB", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "4", "DependentChan" : "1"},
			{"Name" : "it", "Type" : "None", "Direction" : "I"},
			{"Name" : "Arows_V_a_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Arows_V_a_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Arows_V_a_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Arows_V_a_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Arows_V_a_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Arows_V_a_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Arows_V_a_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Arows_V_a_3_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_memset_AB_proc1_U0.A_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_writeoutput_pro_U0", "Parent" : "0",
		"CDFG" : "Loop_writeoutput_pro",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AB", "Type" : "Memory", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "1"},
			{"Name" : "ABpartial_out", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	blockmatmul {
		Arows_V_a_0 {Type I LastRead 5 FirstWrite -1}
		Arows_V_a_1 {Type I LastRead 5 FirstWrite -1}
		Arows_V_a_2 {Type I LastRead 5 FirstWrite -1}
		Arows_V_a_3 {Type I LastRead 5 FirstWrite -1}
		Bcols_V_a_0 {Type I LastRead 6 FirstWrite -1}
		Bcols_V_a_1 {Type I LastRead 6 FirstWrite -1}
		Bcols_V_a_2 {Type I LastRead 6 FirstWrite -1}
		Bcols_V_a_3 {Type I LastRead 6 FirstWrite -1}
		ABpartial_out {Type O LastRead -1 FirstWrite 2}
		it {Type I LastRead 0 FirstWrite -1}
		A {Type IO LastRead -1 FirstWrite -1}}
	Loop_memset_AB_proc1 {
		AB {Type IO LastRead 9 FirstWrite 3}
		it {Type I LastRead 0 FirstWrite -1}
		Arows_V_a_0 {Type I LastRead 5 FirstWrite -1}
		Arows_V_a_1 {Type I LastRead 5 FirstWrite -1}
		Arows_V_a_2 {Type I LastRead 5 FirstWrite -1}
		Arows_V_a_3 {Type I LastRead 5 FirstWrite -1}
		Bcols_V_a_0 {Type I LastRead 6 FirstWrite -1}
		Bcols_V_a_1 {Type I LastRead 6 FirstWrite -1}
		Bcols_V_a_2 {Type I LastRead 6 FirstWrite -1}
		Bcols_V_a_3 {Type I LastRead 6 FirstWrite -1}
		A {Type IO LastRead -1 FirstWrite -1}}
	Loop_writeoutput_pro {
		AB {Type I LastRead 1 FirstWrite -1}
		ABpartial_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "98", "Max" : "115"}
	, {"Name" : "Interval", "Min" : "99", "Max" : "116"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Arows_V_a_0 { ap_fifo {  { Arows_V_a_0_dout fifo_data 0 32 }  { Arows_V_a_0_empty_n fifo_status 0 1 }  { Arows_V_a_0_read fifo_update 1 1 } } }
	Arows_V_a_1 { ap_fifo {  { Arows_V_a_1_dout fifo_data 0 32 }  { Arows_V_a_1_empty_n fifo_status 0 1 }  { Arows_V_a_1_read fifo_update 1 1 } } }
	Arows_V_a_2 { ap_fifo {  { Arows_V_a_2_dout fifo_data 0 32 }  { Arows_V_a_2_empty_n fifo_status 0 1 }  { Arows_V_a_2_read fifo_update 1 1 } } }
	Arows_V_a_3 { ap_fifo {  { Arows_V_a_3_dout fifo_data 0 32 }  { Arows_V_a_3_empty_n fifo_status 0 1 }  { Arows_V_a_3_read fifo_update 1 1 } } }
	Bcols_V_a_0 { ap_fifo {  { Bcols_V_a_0_dout fifo_data 0 32 }  { Bcols_V_a_0_empty_n fifo_status 0 1 }  { Bcols_V_a_0_read fifo_update 1 1 } } }
	Bcols_V_a_1 { ap_fifo {  { Bcols_V_a_1_dout fifo_data 0 32 }  { Bcols_V_a_1_empty_n fifo_status 0 1 }  { Bcols_V_a_1_read fifo_update 1 1 } } }
	Bcols_V_a_2 { ap_fifo {  { Bcols_V_a_2_dout fifo_data 0 32 }  { Bcols_V_a_2_empty_n fifo_status 0 1 }  { Bcols_V_a_2_read fifo_update 1 1 } } }
	Bcols_V_a_3 { ap_fifo {  { Bcols_V_a_3_dout fifo_data 0 32 }  { Bcols_V_a_3_empty_n fifo_status 0 1 }  { Bcols_V_a_3_read fifo_update 1 1 } } }
	ABpartial_out { ap_memory {  { ABpartial_out_address0 mem_address 1 4 }  { ABpartial_out_ce0 mem_ce 1 1 }  { ABpartial_out_d0 mem_din 1 32 }  { ABpartial_out_q0 mem_dout 0 32 }  { ABpartial_out_we0 mem_we 1 1 }  { ABpartial_out_address1 MemPortADDR2 1 4 }  { ABpartial_out_ce1 MemPortCE2 1 1 }  { ABpartial_out_d1 MemPortDIN2 1 32 }  { ABpartial_out_q1 mem_dout 0 32 }  { ABpartial_out_we1 MemPortWE2 1 1 } } }
	it { ap_none {  { it in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	Arows_V_a_0 { fifo_read 1 no_conditional }
	Arows_V_a_1 { fifo_read 1 no_conditional }
	Arows_V_a_2 { fifo_read 1 no_conditional }
	Arows_V_a_3 { fifo_read 1 no_conditional }
	Bcols_V_a_0 { fifo_read 1 no_conditional }
	Bcols_V_a_1 { fifo_read 1 no_conditional }
	Bcols_V_a_2 { fifo_read 1 no_conditional }
	Bcols_V_a_3 { fifo_read 1 no_conditional }
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
