set moduleName canny
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {canny}
set C_modelType { void 0 }
set C_modelArgList {
	{ src int 32 regular {array 16384 { 1 3 } 1 1 }  }
	{ dst int 32 regular {array 16384 { 0 3 } 0 1 }  }
	{ upperThresh int 32 regular  }
	{ lowerThresh int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dst", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upperThresh", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lowerThresh", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ src_address0 sc_out sc_lv 14 signal 0 } 
	{ src_ce0 sc_out sc_logic 1 signal 0 } 
	{ src_d0 sc_out sc_lv 32 signal 0 } 
	{ src_q0 sc_in sc_lv 32 signal 0 } 
	{ src_we0 sc_out sc_logic 1 signal 0 } 
	{ src_address1 sc_out sc_lv 14 signal 0 } 
	{ src_ce1 sc_out sc_logic 1 signal 0 } 
	{ src_d1 sc_out sc_lv 32 signal 0 } 
	{ src_q1 sc_in sc_lv 32 signal 0 } 
	{ src_we1 sc_out sc_logic 1 signal 0 } 
	{ dst_address0 sc_out sc_lv 14 signal 1 } 
	{ dst_ce0 sc_out sc_logic 1 signal 1 } 
	{ dst_d0 sc_out sc_lv 32 signal 1 } 
	{ dst_q0 sc_in sc_lv 32 signal 1 } 
	{ dst_we0 sc_out sc_logic 1 signal 1 } 
	{ dst_address1 sc_out sc_lv 14 signal 1 } 
	{ dst_ce1 sc_out sc_logic 1 signal 1 } 
	{ dst_d1 sc_out sc_lv 32 signal 1 } 
	{ dst_q1 sc_in sc_lv 32 signal 1 } 
	{ dst_we1 sc_out sc_logic 1 signal 1 } 
	{ upperThresh sc_in sc_lv 32 signal 2 } 
	{ lowerThresh sc_in sc_lv 32 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "src_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "src", "role": "address0" }} , 
 	{ "name": "src_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "ce0" }} , 
 	{ "name": "src_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src", "role": "d0" }} , 
 	{ "name": "src_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src", "role": "q0" }} , 
 	{ "name": "src_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "we0" }} , 
 	{ "name": "src_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "src", "role": "address1" }} , 
 	{ "name": "src_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "ce1" }} , 
 	{ "name": "src_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src", "role": "d1" }} , 
 	{ "name": "src_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src", "role": "q1" }} , 
 	{ "name": "src_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "we1" }} , 
 	{ "name": "dst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "dst", "role": "address0" }} , 
 	{ "name": "dst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce0" }} , 
 	{ "name": "dst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst", "role": "d0" }} , 
 	{ "name": "dst_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst", "role": "q0" }} , 
 	{ "name": "dst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we0" }} , 
 	{ "name": "dst_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "dst", "role": "address1" }} , 
 	{ "name": "dst_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce1" }} , 
 	{ "name": "dst_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst", "role": "d1" }} , 
 	{ "name": "dst_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst", "role": "q1" }} , 
 	{ "name": "dst_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we1" }} , 
 	{ "name": "upperThresh", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upperThresh", "role": "default" }} , 
 	{ "name": "lowerThresh", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lowerThresh", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "41", "48", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "canny",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17453", "EstimateLatencyMax" : "17453",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "MergeFilter_U0"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "NonMaximumSuppression_U0"}],
		"Port" : [
			{"Name" : "src", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "MergeFilter_U0", "Port" : "src"}]},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "NonMaximumSuppression_U0", "Port" : "dst"}]},
			{"Name" : "upperThresh", "Type" : "None", "Direction" : "I"},
			{"Name" : "lowerThresh", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "upperThresh_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "57", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "upperThresh_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lowerThresh", "Type" : "None", "Direction" : "I"},
			{"Name" : "lowerThresh_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "58", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "lowerThresh_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "MergeFilter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17443", "EstimateLatencyMax" : "17443",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_97", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_104", "FromFinalSV" : "3", "FromAddress" : "LineBuff_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_120", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_120", "ToFinalSV" : "4", "ToAddress" : "LineBuff_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(canny/canny.cpp:45:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_120", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_120", "FromFinalSV" : "4", "FromAddress" : "LineBuff_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_97", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_104", "ToFinalSV" : "3", "ToAddress" : "LineBuff_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(canny/canny.cpp:45:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0"]}],
		"Port" : [
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_sobel", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "59", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x_sobel_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_sobel", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "60", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y_sobel_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_sobel_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "61", "DependentChanDepth" : "21846", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y_sobel_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.LineBuff_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_8s_16_3_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_10ns_17_3_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_10ns_17_3_1_U7", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_10s_18_3_1_U8", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_10s_18_3_1_U9", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_10ns_17_3_1_U10", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_8s_16_3_1_U11", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_10ns_17_3_1_U12", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_8s_16_3_1_U13", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_10s_18_3_1_U14", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_8ns_15_3_1_U15", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_8ns_10s_18_3_1_U16", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_7ns_16ns_16_4_1_U17", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_9ns_17ns_18_4_1_U18", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_8s_16s_17_4_1_U19", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_7ns_17ns_17_4_1_U20", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_9ns_18ns_19_4_1_U21", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_10s_18s_19_4_1_U22", "Parent" : "2"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mul_mul_8ns_11s_19_4_1_U23", "Parent" : "2"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_9ns_18ns_18_4_1_U24", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_8s_16s_17_4_1_U25", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_9ns_17ns_18_4_1_U26", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_7ns_17ns_18_4_1_U27", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_10ns_19ns_20_4_1_U28", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_8s_16s_17_4_1_U29", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_10s_18s_19_4_1_U30", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_7ns_15ns_16_4_1_U31", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_8s_16s_17_4_1_U32", "Parent" : "2"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_10s_19s_19_4_1_U33", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_11s_19s_20_4_1_U34", "Parent" : "2"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_10ns_18s_19_4_1_U35", "Parent" : "2"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_7ns_15ns_16_4_1_U36", "Parent" : "2"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_10s_17s_19_4_1_U37", "Parent" : "2"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_10s_18ns_19_4_1_U38", "Parent" : "2"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_7ns_16ns_17_4_1_U39", "Parent" : "2"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.mac_muladd_8ns_9ns_17s_18_4_1_U40", "Parent" : "2"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MergeFilter_U0.flow_control_loop_pipe_U", "Parent" : "2"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ConvertXY_U0", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46", "47"],
		"CDFG" : "ConvertXY",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16395", "EstimateLatencyMax" : "16395",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_ConvertXY_U0_U",
		"Port" : [
			{"Name" : "x_sobel", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "59", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x_sobel_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_sobel", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "60", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y_sobel_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_sobel_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "61", "DependentChanDepth" : "21846", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y_sobel_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "magnitude", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "62", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "magnitude_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_y", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "63", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tangent_y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_x_225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "64", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tangent_x_225_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_x_675", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "65", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tangent_x_675_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_141_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertXY_U0.mul_mul_13s_13s_26_4_1_U68", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertXY_U0.mul_mul_20s_13s_32_4_1_U69", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertXY_U0.mac_muladd_13s_13s_26s_26_4_1_U70", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertXY_U0.mul_mul_26s_6ns_32_4_1_U71", "Parent" : "41"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertXY_U0.mul_mul_26s_9ns_32_4_1_U72", "Parent" : "41"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ConvertXY_U0.flow_control_loop_pipe_U", "Parent" : "41"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0", "Parent" : "0", "Child" : ["49", "50", "51", "52", "53", "55", "56"],
		"CDFG" : "NonMaximumSuppression",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16397", "EstimateLatencyMax" : "16397",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_NonMaximumSuppression_U0_U",
		"Port" : [
			{"Name" : "magnitude", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "62", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74", "Port" : "magnitude", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "tangent_y", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "63", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74", "Port" : "tangent_y", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "tangent_x_225", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "64", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74", "Port" : "tangent_x_225", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "tangent_x_675", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "65", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74", "Port" : "tangent_x_675", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "upperThresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "57", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "upperThresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lowerThresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "58", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "lowerThresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74", "Port" : "dst", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0.LineBuff_mag_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0.LineBuff_tan_y_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0.LineBuff_tan_x_225_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0.LineBuff_tan_x_675_U", "Parent" : "48"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74", "Parent" : "48", "Child" : ["54"],
		"CDFG" : "NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16391", "EstimateLatencyMax" : "16391",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_62", "FromFinalSV" : "2", "FromAddress" : "LineBuff_mag_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "3", "ToAddress" : "LineBuff_mag_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(canny/canny.cpp:183:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_64", "FromFinalSV" : "2", "FromAddress" : "LineBuff_tan_y_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_105", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_105", "ToFinalSV" : "3", "ToAddress" : "LineBuff_tan_y_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(canny/canny.cpp:185:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "2", "FromAddress" : "LineBuff_tan_x_225_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_107", "ToFinalSV" : "3", "ToAddress" : "LineBuff_tan_x_225_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(canny/canny.cpp:187:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_46", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_66", "FromFinalSV" : "2", "FromAddress" : "LineBuff_tan_x_675_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_109", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_109", "ToFinalSV" : "3", "ToAddress" : "LineBuff_tan_x_675_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(canny/canny.cpp:189:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "3", "FromAddress" : "LineBuff_mag_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_62", "ToFinalSV" : "2", "ToAddress" : "LineBuff_mag_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(canny/canny.cpp:183:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_105", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_105", "FromFinalSV" : "3", "FromAddress" : "LineBuff_tan_y_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_64", "ToFinalSV" : "2", "ToAddress" : "LineBuff_tan_y_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(canny/canny.cpp:185:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_107", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_107", "FromFinalSV" : "3", "FromAddress" : "LineBuff_tan_x_225_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "2", "ToAddress" : "LineBuff_tan_x_225_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(canny/canny.cpp:187:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_109", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_109", "FromFinalSV" : "3", "FromAddress" : "LineBuff_tan_x_675_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_46", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_66", "ToFinalSV" : "2", "ToAddress" : "LineBuff_tan_x_675_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(canny/canny.cpp:189:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "LineBuff_mag", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuff_tan_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuff_tan_x_225", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuff_tan_x_675", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "magnitude", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "magnitude_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_y", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tangent_y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_x_225", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tangent_x_225_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_x_675", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tangent_x_675_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "upperThresh_scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "lowerThresh_scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0.grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0.mul_32s_32s_32_5_1_U96", "Parent" : "48"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaximumSuppression_U0.mul_32s_32s_32_5_1_U97", "Parent" : "48"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.upperThresh_c_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lowerThresh_c_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_sobel_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_sobel_V_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_sobel_7_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.magnitude_V_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tangent_y_V_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tangent_x_225_V_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tangent_x_675_V_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_NonMaximumSuppression_U0_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ConvertXY_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	canny {
		src {Type I LastRead 2 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 7}
		upperThresh {Type I LastRead 3 FirstWrite -1}
		lowerThresh {Type I LastRead 3 FirstWrite -1}}
	entry_proc {
		upperThresh {Type I LastRead 0 FirstWrite -1}
		upperThresh_c {Type O LastRead -1 FirstWrite 0}
		lowerThresh {Type I LastRead 0 FirstWrite -1}
		lowerThresh_c {Type O LastRead -1 FirstWrite 0}}
	MergeFilter {
		src {Type I LastRead 2 FirstWrite -1}
		x_sobel {Type O LastRead -1 FirstWrite 18}
		y_sobel {Type O LastRead -1 FirstWrite 18}
		y_sobel_7 {Type O LastRead -1 FirstWrite 18}}
	ConvertXY {
		x_sobel {Type I LastRead 1 FirstWrite -1}
		y_sobel {Type I LastRead 1 FirstWrite -1}
		y_sobel_7 {Type I LastRead 1 FirstWrite -1}
		magnitude {Type O LastRead -1 FirstWrite 10}
		tangent_y {Type O LastRead -1 FirstWrite 10}
		tangent_x_225 {Type O LastRead -1 FirstWrite 10}
		tangent_x_675 {Type O LastRead -1 FirstWrite 10}}
	NonMaximumSuppression {
		magnitude {Type I LastRead 2 FirstWrite -1}
		tangent_y {Type I LastRead 2 FirstWrite -1}
		tangent_x_225 {Type I LastRead 2 FirstWrite -1}
		tangent_x_675 {Type I LastRead 2 FirstWrite -1}
		upperThresh {Type I LastRead 0 FirstWrite -1}
		lowerThresh {Type I LastRead 0 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 7}}
	NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1 {
		LineBuff_mag {Type IO LastRead 1 FirstWrite 3}
		LineBuff_tan_y {Type IO LastRead 1 FirstWrite 3}
		LineBuff_tan_x_225 {Type IO LastRead 1 FirstWrite 3}
		LineBuff_tan_x_675 {Type IO LastRead 1 FirstWrite 3}
		magnitude {Type I LastRead 2 FirstWrite -1}
		tangent_y {Type I LastRead 2 FirstWrite -1}
		tangent_x_225 {Type I LastRead 2 FirstWrite -1}
		tangent_x_675 {Type I LastRead 2 FirstWrite -1}
		upperThresh_scale {Type I LastRead 0 FirstWrite -1}
		lowerThresh_scale {Type I LastRead 0 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17453", "Max" : "17453"}
	, {"Name" : "Interval", "Min" : "17444", "Max" : "17444"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src { ap_memory {  { src_address0 mem_address 1 14 }  { src_ce0 mem_ce 1 1 }  { src_d0 mem_din 1 32 }  { src_q0 mem_dout 0 32 }  { src_we0 mem_we 1 1 }  { src_address1 mem_address 1 14 }  { src_ce1 mem_ce 1 1 }  { src_d1 mem_din 1 32 }  { src_q1 mem_dout 0 32 }  { src_we1 mem_we 1 1 } } }
	dst { ap_memory {  { dst_address0 mem_address 1 14 }  { dst_ce0 mem_ce 1 1 }  { dst_d0 mem_din 1 32 }  { dst_q0 mem_dout 0 32 }  { dst_we0 mem_we 1 1 }  { dst_address1 mem_address 1 14 }  { dst_ce1 mem_ce 1 1 }  { dst_d1 mem_din 1 32 }  { dst_q1 mem_dout 0 32 }  { dst_we1 mem_we 1 1 } } }
	upperThresh { ap_none {  { upperThresh in_data 0 32 } } }
	lowerThresh { ap_none {  { lowerThresh in_data 0 32 } } }
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
