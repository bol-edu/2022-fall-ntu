set moduleName proc_1_2
set isTopModule 0
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
set C_modelName {proc_1_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_channel12 int 32 regular {fifo 1 volatile }  }
	{ data_channel23 int 32 regular {fifo 1 volatile }  }
	{ data_channel121 int 32 regular {fifo 0 volatile }  }
	{ data_channel232 int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_channel12", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_channel23", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_channel121", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_channel232", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_channel12_din sc_out sc_lv 32 signal 0 } 
	{ data_channel12_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ data_channel12_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ data_channel12_full_n sc_in sc_logic 1 signal 0 } 
	{ data_channel12_write sc_out sc_logic 1 signal 0 } 
	{ data_channel23_din sc_out sc_lv 32 signal 1 } 
	{ data_channel23_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ data_channel23_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ data_channel23_full_n sc_in sc_logic 1 signal 1 } 
	{ data_channel23_write sc_out sc_logic 1 signal 1 } 
	{ data_channel121_dout sc_in sc_lv 32 signal 2 } 
	{ data_channel121_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ data_channel121_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ data_channel121_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_channel121_read sc_out sc_logic 1 signal 2 } 
	{ data_channel232_dout sc_in sc_lv 32 signal 3 } 
	{ data_channel232_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ data_channel232_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ data_channel232_empty_n sc_in sc_logic 1 signal 3 } 
	{ data_channel232_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_channel12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel12", "role": "din" }} , 
 	{ "name": "data_channel12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_channel12", "role": "num_data_valid" }} , 
 	{ "name": "data_channel12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_channel12", "role": "fifo_cap" }} , 
 	{ "name": "data_channel12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel12", "role": "full_n" }} , 
 	{ "name": "data_channel12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel12", "role": "write" }} , 
 	{ "name": "data_channel23_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel23", "role": "din" }} , 
 	{ "name": "data_channel23_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_channel23", "role": "num_data_valid" }} , 
 	{ "name": "data_channel23_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_channel23", "role": "fifo_cap" }} , 
 	{ "name": "data_channel23_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel23", "role": "full_n" }} , 
 	{ "name": "data_channel23_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel23", "role": "write" }} , 
 	{ "name": "data_channel121_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel121", "role": "dout" }} , 
 	{ "name": "data_channel121_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_channel121", "role": "num_data_valid" }} , 
 	{ "name": "data_channel121_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_channel121", "role": "fifo_cap" }} , 
 	{ "name": "data_channel121_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel121", "role": "empty_n" }} , 
 	{ "name": "data_channel121_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel121", "role": "read" }} , 
 	{ "name": "data_channel232_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel232", "role": "dout" }} , 
 	{ "name": "data_channel232_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_channel232", "role": "num_data_valid" }} , 
 	{ "name": "data_channel232_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_channel232", "role": "fifo_cap" }} , 
 	{ "name": "data_channel232_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel232", "role": "empty_n" }} , 
 	{ "name": "data_channel232_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel232", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "proc_1_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30", "Port" : "data_channel12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_proc_1_2_Pipeline_VITIS_LOOP_59_2_fu_41", "Port" : "data_channel23", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "data_channel121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30", "Port" : "data_channel121", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30", "Port" : "data_channel232", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "proc_1_2_Pipeline_VITIS_LOOP_55_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_channel232", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_channel232_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel121", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_channel121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_channel12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_proc_1_2_Pipeline_VITIS_LOOP_59_2_fu_41", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "proc_1_2_Pipeline_VITIS_LOOP_59_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_phi_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_channel23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_59_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_proc_1_2_Pipeline_VITIS_LOOP_59_2_fu_41.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	proc_1_2 {
		data_channel12 {Type O LastRead -1 FirstWrite 3}
		data_channel23 {Type O LastRead -1 FirstWrite 1}
		data_channel121 {Type I LastRead 1 FirstWrite -1}
		data_channel232 {Type I LastRead 1 FirstWrite -1}}
	proc_1_2_Pipeline_VITIS_LOOP_55_1 {
		data_channel232 {Type I LastRead 1 FirstWrite -1}
		data_channel121 {Type I LastRead 1 FirstWrite -1}
		data_channel12 {Type O LastRead -1 FirstWrite 3}
		add_phi_out {Type O LastRead -1 FirstWrite 2}}
	proc_1_2_Pipeline_VITIS_LOOP_59_2 {
		add_phi_reload {Type I LastRead 0 FirstWrite -1}
		data_channel23 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30", "Max" : "30"}
	, {"Name" : "Interval", "Min" : "30", "Max" : "30"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_channel12 { ap_fifo {  { data_channel12_din fifo_port_we 1 32 }  { data_channel12_num_data_valid fifo_status_num_data_valid 0 7 }  { data_channel12_fifo_cap fifo_update 0 7 }  { data_channel12_full_n fifo_status 0 1 }  { data_channel12_write fifo_data 1 1 } } }
	data_channel23 { ap_fifo {  { data_channel23_din fifo_port_we 1 32 }  { data_channel23_num_data_valid fifo_status_num_data_valid 0 7 }  { data_channel23_fifo_cap fifo_update 0 7 }  { data_channel23_full_n fifo_status 0 1 }  { data_channel23_write fifo_data 1 1 } } }
	data_channel121 { ap_fifo {  { data_channel121_dout fifo_port_we 0 32 }  { data_channel121_num_data_valid fifo_status_num_data_valid 0 7 }  { data_channel121_fifo_cap fifo_update 0 7 }  { data_channel121_empty_n fifo_status 0 1 }  { data_channel121_read fifo_data 1 1 } } }
	data_channel232 { ap_fifo {  { data_channel232_dout fifo_port_we 0 32 }  { data_channel232_num_data_valid fifo_status_num_data_valid 0 7 }  { data_channel232_fifo_cap fifo_update 0 7 }  { data_channel232_empty_n fifo_status 0 1 }  { data_channel232_read fifo_data 1 1 } } }
}
