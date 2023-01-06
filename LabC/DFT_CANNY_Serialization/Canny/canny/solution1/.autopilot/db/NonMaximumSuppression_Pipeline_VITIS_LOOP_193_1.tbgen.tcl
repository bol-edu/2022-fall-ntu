set moduleName NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1
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
set C_modelName {NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ LineBuff_mag int 90 regular {array 128 { 0 1 } 1 1 }  }
	{ LineBuff_tan_y int 96 regular {array 128 { 0 1 } 1 1 }  }
	{ LineBuff_tan_x_225 int 96 regular {array 128 { 0 1 } 1 1 }  }
	{ LineBuff_tan_x_675 int 96 regular {array 128 { 0 1 } 1 1 }  }
	{ magnitude int 26 regular {fifo 0 volatile }  }
	{ tangent_y int 32 regular {fifo 0 volatile }  }
	{ tangent_x_225 int 32 regular {fifo 0 volatile }  }
	{ tangent_x_675 int 32 regular {fifo 0 volatile }  }
	{ upperThresh_scale int 32 regular  }
	{ lowerThresh_scale int 32 regular  }
	{ dst int 32 regular {array 16384 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "LineBuff_mag", "interface" : "memory", "bitwidth" : 90, "direction" : "READWRITE"} , 
 	{ "Name" : "LineBuff_tan_y", "interface" : "memory", "bitwidth" : 96, "direction" : "READWRITE"} , 
 	{ "Name" : "LineBuff_tan_x_225", "interface" : "memory", "bitwidth" : 96, "direction" : "READWRITE"} , 
 	{ "Name" : "LineBuff_tan_x_675", "interface" : "memory", "bitwidth" : 96, "direction" : "READWRITE"} , 
 	{ "Name" : "magnitude", "interface" : "fifo", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "tangent_y", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tangent_x_225", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tangent_x_675", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "upperThresh_scale", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lowerThresh_scale", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dst", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ magnitude_dout sc_in sc_lv 26 signal 4 } 
	{ magnitude_num_data_valid sc_in sc_lv 15 signal 4 } 
	{ magnitude_fifo_cap sc_in sc_lv 15 signal 4 } 
	{ magnitude_empty_n sc_in sc_logic 1 signal 4 } 
	{ magnitude_read sc_out sc_logic 1 signal 4 } 
	{ tangent_y_dout sc_in sc_lv 32 signal 5 } 
	{ tangent_y_num_data_valid sc_in sc_lv 15 signal 5 } 
	{ tangent_y_fifo_cap sc_in sc_lv 15 signal 5 } 
	{ tangent_y_empty_n sc_in sc_logic 1 signal 5 } 
	{ tangent_y_read sc_out sc_logic 1 signal 5 } 
	{ tangent_x_225_dout sc_in sc_lv 32 signal 6 } 
	{ tangent_x_225_num_data_valid sc_in sc_lv 15 signal 6 } 
	{ tangent_x_225_fifo_cap sc_in sc_lv 15 signal 6 } 
	{ tangent_x_225_empty_n sc_in sc_logic 1 signal 6 } 
	{ tangent_x_225_read sc_out sc_logic 1 signal 6 } 
	{ tangent_x_675_dout sc_in sc_lv 32 signal 7 } 
	{ tangent_x_675_num_data_valid sc_in sc_lv 15 signal 7 } 
	{ tangent_x_675_fifo_cap sc_in sc_lv 15 signal 7 } 
	{ tangent_x_675_empty_n sc_in sc_logic 1 signal 7 } 
	{ tangent_x_675_read sc_out sc_logic 1 signal 7 } 
	{ LineBuff_mag_address0 sc_out sc_lv 7 signal 0 } 
	{ LineBuff_mag_ce0 sc_out sc_logic 1 signal 0 } 
	{ LineBuff_mag_we0 sc_out sc_logic 1 signal 0 } 
	{ LineBuff_mag_d0 sc_out sc_lv 90 signal 0 } 
	{ LineBuff_mag_address1 sc_out sc_lv 7 signal 0 } 
	{ LineBuff_mag_ce1 sc_out sc_logic 1 signal 0 } 
	{ LineBuff_mag_q1 sc_in sc_lv 90 signal 0 } 
	{ LineBuff_tan_y_address0 sc_out sc_lv 7 signal 1 } 
	{ LineBuff_tan_y_ce0 sc_out sc_logic 1 signal 1 } 
	{ LineBuff_tan_y_we0 sc_out sc_logic 1 signal 1 } 
	{ LineBuff_tan_y_d0 sc_out sc_lv 96 signal 1 } 
	{ LineBuff_tan_y_address1 sc_out sc_lv 7 signal 1 } 
	{ LineBuff_tan_y_ce1 sc_out sc_logic 1 signal 1 } 
	{ LineBuff_tan_y_q1 sc_in sc_lv 96 signal 1 } 
	{ LineBuff_tan_x_225_address0 sc_out sc_lv 7 signal 2 } 
	{ LineBuff_tan_x_225_ce0 sc_out sc_logic 1 signal 2 } 
	{ LineBuff_tan_x_225_we0 sc_out sc_logic 1 signal 2 } 
	{ LineBuff_tan_x_225_d0 sc_out sc_lv 96 signal 2 } 
	{ LineBuff_tan_x_225_address1 sc_out sc_lv 7 signal 2 } 
	{ LineBuff_tan_x_225_ce1 sc_out sc_logic 1 signal 2 } 
	{ LineBuff_tan_x_225_q1 sc_in sc_lv 96 signal 2 } 
	{ LineBuff_tan_x_675_address0 sc_out sc_lv 7 signal 3 } 
	{ LineBuff_tan_x_675_ce0 sc_out sc_logic 1 signal 3 } 
	{ LineBuff_tan_x_675_we0 sc_out sc_logic 1 signal 3 } 
	{ LineBuff_tan_x_675_d0 sc_out sc_lv 96 signal 3 } 
	{ LineBuff_tan_x_675_address1 sc_out sc_lv 7 signal 3 } 
	{ LineBuff_tan_x_675_ce1 sc_out sc_logic 1 signal 3 } 
	{ LineBuff_tan_x_675_q1 sc_in sc_lv 96 signal 3 } 
	{ upperThresh_scale sc_in sc_lv 32 signal 8 } 
	{ lowerThresh_scale sc_in sc_lv 32 signal 9 } 
	{ dst_address0 sc_out sc_lv 14 signal 10 } 
	{ dst_ce0 sc_out sc_logic 1 signal 10 } 
	{ dst_we0 sc_out sc_logic 1 signal 10 } 
	{ dst_d0 sc_out sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "magnitude_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "magnitude", "role": "dout" }} , 
 	{ "name": "magnitude_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "magnitude", "role": "num_data_valid" }} , 
 	{ "name": "magnitude_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "magnitude", "role": "fifo_cap" }} , 
 	{ "name": "magnitude_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude", "role": "empty_n" }} , 
 	{ "name": "magnitude_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude", "role": "read" }} , 
 	{ "name": "tangent_y_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tangent_y", "role": "dout" }} , 
 	{ "name": "tangent_y_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_y", "role": "num_data_valid" }} , 
 	{ "name": "tangent_y_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_y", "role": "fifo_cap" }} , 
 	{ "name": "tangent_y_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_y", "role": "empty_n" }} , 
 	{ "name": "tangent_y_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_y", "role": "read" }} , 
 	{ "name": "tangent_x_225_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "dout" }} , 
 	{ "name": "tangent_x_225_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "num_data_valid" }} , 
 	{ "name": "tangent_x_225_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "fifo_cap" }} , 
 	{ "name": "tangent_x_225_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "empty_n" }} , 
 	{ "name": "tangent_x_225_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_x_225", "role": "read" }} , 
 	{ "name": "tangent_x_675_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "dout" }} , 
 	{ "name": "tangent_x_675_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "num_data_valid" }} , 
 	{ "name": "tangent_x_675_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "fifo_cap" }} , 
 	{ "name": "tangent_x_675_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "empty_n" }} , 
 	{ "name": "tangent_x_675_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tangent_x_675", "role": "read" }} , 
 	{ "name": "LineBuff_mag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LineBuff_mag", "role": "address0" }} , 
 	{ "name": "LineBuff_mag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_mag", "role": "ce0" }} , 
 	{ "name": "LineBuff_mag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_mag", "role": "we0" }} , 
 	{ "name": "LineBuff_mag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":90, "type": "signal", "bundle":{"name": "LineBuff_mag", "role": "d0" }} , 
 	{ "name": "LineBuff_mag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LineBuff_mag", "role": "address1" }} , 
 	{ "name": "LineBuff_mag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_mag", "role": "ce1" }} , 
 	{ "name": "LineBuff_mag_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":90, "type": "signal", "bundle":{"name": "LineBuff_mag", "role": "q1" }} , 
 	{ "name": "LineBuff_tan_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LineBuff_tan_y", "role": "address0" }} , 
 	{ "name": "LineBuff_tan_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_y", "role": "ce0" }} , 
 	{ "name": "LineBuff_tan_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_y", "role": "we0" }} , 
 	{ "name": "LineBuff_tan_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "LineBuff_tan_y", "role": "d0" }} , 
 	{ "name": "LineBuff_tan_y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LineBuff_tan_y", "role": "address1" }} , 
 	{ "name": "LineBuff_tan_y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_y", "role": "ce1" }} , 
 	{ "name": "LineBuff_tan_y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "LineBuff_tan_y", "role": "q1" }} , 
 	{ "name": "LineBuff_tan_x_225_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LineBuff_tan_x_225", "role": "address0" }} , 
 	{ "name": "LineBuff_tan_x_225_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_x_225", "role": "ce0" }} , 
 	{ "name": "LineBuff_tan_x_225_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_x_225", "role": "we0" }} , 
 	{ "name": "LineBuff_tan_x_225_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "LineBuff_tan_x_225", "role": "d0" }} , 
 	{ "name": "LineBuff_tan_x_225_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LineBuff_tan_x_225", "role": "address1" }} , 
 	{ "name": "LineBuff_tan_x_225_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_x_225", "role": "ce1" }} , 
 	{ "name": "LineBuff_tan_x_225_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "LineBuff_tan_x_225", "role": "q1" }} , 
 	{ "name": "LineBuff_tan_x_675_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LineBuff_tan_x_675", "role": "address0" }} , 
 	{ "name": "LineBuff_tan_x_675_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_x_675", "role": "ce0" }} , 
 	{ "name": "LineBuff_tan_x_675_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_x_675", "role": "we0" }} , 
 	{ "name": "LineBuff_tan_x_675_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "LineBuff_tan_x_675", "role": "d0" }} , 
 	{ "name": "LineBuff_tan_x_675_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "LineBuff_tan_x_675", "role": "address1" }} , 
 	{ "name": "LineBuff_tan_x_675_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuff_tan_x_675", "role": "ce1" }} , 
 	{ "name": "LineBuff_tan_x_675_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "LineBuff_tan_x_675", "role": "q1" }} , 
 	{ "name": "upperThresh_scale", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "upperThresh_scale", "role": "default" }} , 
 	{ "name": "lowerThresh_scale", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lowerThresh_scale", "role": "default" }} , 
 	{ "name": "dst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "dst", "role": "address0" }} , 
 	{ "name": "dst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce0" }} , 
 	{ "name": "dst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we0" }} , 
 	{ "name": "dst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "16391", "Max" : "16391"}
	, {"Name" : "Interval", "Min" : "16391", "Max" : "16391"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	LineBuff_mag { ap_memory {  { LineBuff_mag_address0 mem_address 1 7 }  { LineBuff_mag_ce0 mem_ce 1 1 }  { LineBuff_mag_we0 mem_we 1 1 }  { LineBuff_mag_d0 mem_din 1 90 }  { LineBuff_mag_address1 MemPortADDR2 1 7 }  { LineBuff_mag_ce1 MemPortCE2 1 1 }  { LineBuff_mag_q1 in_data 0 90 } } }
	LineBuff_tan_y { ap_memory {  { LineBuff_tan_y_address0 mem_address 1 7 }  { LineBuff_tan_y_ce0 mem_ce 1 1 }  { LineBuff_tan_y_we0 mem_we 1 1 }  { LineBuff_tan_y_d0 mem_din 1 96 }  { LineBuff_tan_y_address1 MemPortADDR2 1 7 }  { LineBuff_tan_y_ce1 MemPortCE2 1 1 }  { LineBuff_tan_y_q1 in_data 0 96 } } }
	LineBuff_tan_x_225 { ap_memory {  { LineBuff_tan_x_225_address0 mem_address 1 7 }  { LineBuff_tan_x_225_ce0 mem_ce 1 1 }  { LineBuff_tan_x_225_we0 mem_we 1 1 }  { LineBuff_tan_x_225_d0 mem_din 1 96 }  { LineBuff_tan_x_225_address1 MemPortADDR2 1 7 }  { LineBuff_tan_x_225_ce1 MemPortCE2 1 1 }  { LineBuff_tan_x_225_q1 in_data 0 96 } } }
	LineBuff_tan_x_675 { ap_memory {  { LineBuff_tan_x_675_address0 mem_address 1 7 }  { LineBuff_tan_x_675_ce0 mem_ce 1 1 }  { LineBuff_tan_x_675_we0 mem_we 1 1 }  { LineBuff_tan_x_675_d0 mem_din 1 96 }  { LineBuff_tan_x_675_address1 MemPortADDR2 1 7 }  { LineBuff_tan_x_675_ce1 MemPortCE2 1 1 }  { LineBuff_tan_x_675_q1 in_data 0 96 } } }
	magnitude { ap_fifo {  { magnitude_dout fifo_port_we 0 26 }  { magnitude_num_data_valid fifo_status_num_data_valid 0 15 }  { magnitude_fifo_cap fifo_update 0 15 }  { magnitude_empty_n fifo_status 0 1 }  { magnitude_read fifo_data 1 1 } } }
	tangent_y { ap_fifo {  { tangent_y_dout fifo_port_we 0 32 }  { tangent_y_num_data_valid fifo_status_num_data_valid 0 15 }  { tangent_y_fifo_cap fifo_update 0 15 }  { tangent_y_empty_n fifo_status 0 1 }  { tangent_y_read fifo_data 1 1 } } }
	tangent_x_225 { ap_fifo {  { tangent_x_225_dout fifo_port_we 0 32 }  { tangent_x_225_num_data_valid fifo_status_num_data_valid 0 15 }  { tangent_x_225_fifo_cap fifo_update 0 15 }  { tangent_x_225_empty_n fifo_status 0 1 }  { tangent_x_225_read fifo_data 1 1 } } }
	tangent_x_675 { ap_fifo {  { tangent_x_675_dout fifo_port_we 0 32 }  { tangent_x_675_num_data_valid fifo_status_num_data_valid 0 15 }  { tangent_x_675_fifo_cap fifo_update 0 15 }  { tangent_x_675_empty_n fifo_status 0 1 }  { tangent_x_675_read fifo_data 1 1 } } }
	upperThresh_scale { ap_none {  { upperThresh_scale in_data 0 32 } } }
	lowerThresh_scale { ap_none {  { lowerThresh_scale in_data 0 32 } } }
	dst { ap_memory {  { dst_address0 mem_address 1 14 }  { dst_ce0 mem_ce 1 1 }  { dst_we0 mem_we 1 1 }  { dst_d0 mem_din 1 32 } } }
}
