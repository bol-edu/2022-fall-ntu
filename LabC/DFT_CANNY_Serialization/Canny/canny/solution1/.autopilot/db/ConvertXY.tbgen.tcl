set moduleName ConvertXY
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
set C_modelName {ConvertXY}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_sobel int 13 regular {fifo 0 volatile }  }
	{ y_sobel int 13 regular {fifo 0 volatile }  }
	{ y_sobel_7 int 20 regular {fifo 0 volatile }  }
	{ magnitude int 26 regular {fifo 1 volatile }  }
	{ tangent_y int 32 regular {fifo 1 volatile }  }
	{ tangent_x_225 int 32 regular {fifo 1 volatile }  }
	{ tangent_x_675 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_sobel", "interface" : "fifo", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "y_sobel", "interface" : "fifo", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "y_sobel_7", "interface" : "fifo", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "magnitude", "interface" : "fifo", "bitwidth" : 26, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tangent_y", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tangent_x_225", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tangent_x_675", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_sobel_dout sc_in sc_lv 13 signal 0 } 
	{ x_sobel_num_data_valid sc_in sc_lv 15 signal 0 } 
	{ x_sobel_fifo_cap sc_in sc_lv 15 signal 0 } 
	{ x_sobel_empty_n sc_in sc_logic 1 signal 0 } 
	{ x_sobel_read sc_out sc_logic 1 signal 0 } 
	{ y_sobel_dout sc_in sc_lv 13 signal 1 } 
	{ y_sobel_num_data_valid sc_in sc_lv 15 signal 1 } 
	{ y_sobel_fifo_cap sc_in sc_lv 15 signal 1 } 
	{ y_sobel_empty_n sc_in sc_logic 1 signal 1 } 
	{ y_sobel_read sc_out sc_logic 1 signal 1 } 
	{ y_sobel_7_dout sc_in sc_lv 20 signal 2 } 
	{ y_sobel_7_num_data_valid sc_in sc_lv 16 signal 2 } 
	{ y_sobel_7_fifo_cap sc_in sc_lv 16 signal 2 } 
	{ y_sobel_7_empty_n sc_in sc_logic 1 signal 2 } 
	{ y_sobel_7_read sc_out sc_logic 1 signal 2 } 
	{ magnitude_din sc_out sc_lv 26 signal 3 } 
	{ magnitude_num_data_valid sc_in sc_lv 15 signal 3 } 
	{ magnitude_fifo_cap sc_in sc_lv 15 signal 3 } 
	{ magnitude_full_n sc_in sc_logic 1 signal 3 } 
	{ magnitude_write sc_out sc_logic 1 signal 3 } 
	{ tangent_y_din sc_out sc_lv 32 signal 4 } 
	{ tangent_y_num_data_valid sc_in sc_lv 15 signal 4 } 
	{ tangent_y_fifo_cap sc_in sc_lv 15 signal 4 } 
	{ tangent_y_full_n sc_in sc_logic 1 signal 4 } 
	{ tangent_y_write sc_out sc_logic 1 signal 4 } 
	{ tangent_x_225_din sc_out sc_lv 32 signal 5 } 
	{ tangent_x_225_num_data_valid sc_in sc_lv 15 signal 5 } 
	{ tangent_x_225_fifo_cap sc_in sc_lv 15 signal 5 } 
	{ tangent_x_225_full_n sc_in sc_logic 1 signal 5 } 
	{ tangent_x_225_write sc_out sc_logic 1 signal 5 } 
	{ tangent_x_675_din sc_out sc_lv 32 signal 6 } 
	{ tangent_x_675_num_data_valid sc_in sc_lv 15 signal 6 } 
	{ tangent_x_675_fifo_cap sc_in sc_lv 15 signal 6 } 
	{ tangent_x_675_full_n sc_in sc_logic 1 signal 6 } 
	{ tangent_x_675_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_sobel_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "x_sobel", "role": "dout" }} , 
 	{ "name": "x_sobel_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "x_sobel", "role": "num_data_valid" }} , 
 	{ "name": "x_sobel_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "x_sobel", "role": "fifo_cap" }} , 
 	{ "name": "x_sobel_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_sobel", "role": "empty_n" }} , 
 	{ "name": "x_sobel_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_sobel", "role": "read" }} , 
 	{ "name": "y_sobel_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "y_sobel", "role": "dout" }} , 
 	{ "name": "y_sobel_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "y_sobel", "role": "num_data_valid" }} , 
 	{ "name": "y_sobel_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "y_sobel", "role": "fifo_cap" }} , 
 	{ "name": "y_sobel_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_sobel", "role": "empty_n" }} , 
 	{ "name": "y_sobel_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_sobel", "role": "read" }} , 
 	{ "name": "y_sobel_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "y_sobel_7", "role": "dout" }} , 
 	{ "name": "y_sobel_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_sobel_7", "role": "num_data_valid" }} , 
 	{ "name": "y_sobel_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_sobel_7", "role": "fifo_cap" }} , 
 	{ "name": "y_sobel_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_sobel_7", "role": "empty_n" }} , 
 	{ "name": "y_sobel_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_sobel_7", "role": "read" }} , 
 	{ "name": "magnitude_din", "direction": "out", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "magnitude", "role": "din" }} , 
 	{ "name": "magnitude_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "magnitude", "role": "num_data_valid" }} , 
 	{ "name": "magnitude_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "magnitude", "role": "fifo_cap" }} , 
 	{ "name": "magnitude_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude", "role": "full_n" }} , 
 	{ "name": "magnitude_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude", "role": "write" }} , 
 	{ "name": "tangent_y_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tangent_y", "role": "din" }} , 
 	{ "name": "tangent_y_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_y", "role": "num_data_valid" }} , 
 	{ "name": "tangent_y_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_y", "role": "fifo_cap" }} , 
 	{ "name": "tangent_y_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_y", "role": "full_n" }} , 
 	{ "name": "tangent_y_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_y", "role": "write" }} , 
 	{ "name": "tangent_x_225_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "din" }} , 
 	{ "name": "tangent_x_225_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "num_data_valid" }} , 
 	{ "name": "tangent_x_225_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "fifo_cap" }} , 
 	{ "name": "tangent_x_225_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "full_n" }} , 
 	{ "name": "tangent_x_225_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "write" }} , 
 	{ "name": "tangent_x_675_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "din" }} , 
 	{ "name": "tangent_x_675_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "num_data_valid" }} , 
 	{ "name": "tangent_x_675_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "fifo_cap" }} , 
 	{ "name": "tangent_x_675_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "full_n" }} , 
 	{ "name": "tangent_x_675_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
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
		"Port" : [
			{"Name" : "x_sobel", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x_sobel_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_sobel", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y_sobel_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_sobel_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "21846", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y_sobel_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "magnitude", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "magnitude_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_y", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tangent_y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_x_225", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tangent_x_225_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tangent_x_675", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "tangent_x_675_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_141_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_13s_13s_26_4_1_U68", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_20s_13s_32_4_1_U69", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_13s_13s_26s_26_4_1_U70", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_26s_6ns_32_4_1_U71", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_26s_9ns_32_4_1_U72", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ConvertXY {
		x_sobel {Type I LastRead 1 FirstWrite -1}
		y_sobel {Type I LastRead 1 FirstWrite -1}
		y_sobel_7 {Type I LastRead 1 FirstWrite -1}
		magnitude {Type O LastRead -1 FirstWrite 10}
		tangent_y {Type O LastRead -1 FirstWrite 10}
		tangent_x_225 {Type O LastRead -1 FirstWrite 10}
		tangent_x_675 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16395", "Max" : "16395"}
	, {"Name" : "Interval", "Min" : "16395", "Max" : "16395"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_sobel { ap_fifo {  { x_sobel_dout fifo_port_we 0 13 }  { x_sobel_num_data_valid fifo_status_num_data_valid 0 15 }  { x_sobel_fifo_cap fifo_update 0 15 }  { x_sobel_empty_n fifo_status 0 1 }  { x_sobel_read fifo_data 1 1 } } }
	y_sobel { ap_fifo {  { y_sobel_dout fifo_port_we 0 13 }  { y_sobel_num_data_valid fifo_status_num_data_valid 0 15 }  { y_sobel_fifo_cap fifo_update 0 15 }  { y_sobel_empty_n fifo_status 0 1 }  { y_sobel_read fifo_data 1 1 } } }
	y_sobel_7 { ap_fifo {  { y_sobel_7_dout fifo_port_we 0 20 }  { y_sobel_7_num_data_valid fifo_status_num_data_valid 0 16 }  { y_sobel_7_fifo_cap fifo_update 0 16 }  { y_sobel_7_empty_n fifo_status 0 1 }  { y_sobel_7_read fifo_data 1 1 } } }
	magnitude { ap_fifo {  { magnitude_din fifo_port_we 1 26 }  { magnitude_num_data_valid fifo_status_num_data_valid 0 15 }  { magnitude_fifo_cap fifo_update 0 15 }  { magnitude_full_n fifo_status 0 1 }  { magnitude_write fifo_data 1 1 } } }
	tangent_y { ap_fifo {  { tangent_y_din fifo_port_we 1 32 }  { tangent_y_num_data_valid fifo_status_num_data_valid 0 15 }  { tangent_y_fifo_cap fifo_update 0 15 }  { tangent_y_full_n fifo_status 0 1 }  { tangent_y_write fifo_data 1 1 } } }
	tangent_x_225 { ap_fifo {  { tangent_x_225_din fifo_port_we 1 32 }  { tangent_x_225_num_data_valid fifo_status_num_data_valid 0 15 }  { tangent_x_225_fifo_cap fifo_update 0 15 }  { tangent_x_225_full_n fifo_status 0 1 }  { tangent_x_225_write fifo_data 1 1 } } }
	tangent_x_675 { ap_fifo {  { tangent_x_675_din fifo_port_we 1 32 }  { tangent_x_675_num_data_valid fifo_status_num_data_valid 0 15 }  { tangent_x_675_fifo_cap fifo_update 0 15 }  { tangent_x_675_full_n fifo_status 0 1 }  { tangent_x_675_write fifo_data 1 1 } } }
}
