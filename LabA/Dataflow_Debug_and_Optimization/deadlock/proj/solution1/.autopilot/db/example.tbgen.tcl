set moduleName example
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
set C_modelName {example}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {fifo 0 volatile }  }
	{ B int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ A_dout sc_in sc_lv 32 signal 0 } 
	{ A_empty_n sc_in sc_logic 1 signal 0 } 
	{ A_read sc_out sc_logic 1 signal 0 } 
	{ B_din sc_out sc_lv 32 signal 1 } 
	{ B_full_n sc_in sc_logic 1 signal 1 } 
	{ B_write sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "A_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "dout" }} , 
 	{ "name": "A_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "empty_n" }} , 
 	{ "name": "A_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "read" }} , 
 	{ "name": "B_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "din" }} , 
 	{ "name": "B_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "full_n" }} , 
 	{ "name": "B_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "15", "26", "27", "28"],
		"CDFG" : "example",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "proc_1_U0"}],
		"OutputProcess" : [
			{"ID" : "15", "Name" : "proc_2_U0"}],
		"Port" : [
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "proc_1_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "proc_2_U0", "Port" : "B1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.proc_1_U0", "Parent" : "0", "Child" : ["2", "7", "12", "13", "14"],
		"CDFG" : "proc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "proc_1_1_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "proc_1_2_U0"}],
		"Port" : [
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "proc_1_1_U0", "Port" : "A"}]},
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15","16"], "DependentChan" : "26", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "proc_1_2_U0", "Port" : "data_channel12"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15","16"], "DependentChan" : "27", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "proc_1_2_U0", "Port" : "data_channel23"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_1_U0", "Parent" : "1", "Child" : ["3", "5"],
		"CDFG" : "proc_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_proc_1_1_Pipeline_VITIS_LOOP_42_1_fu_28", "Port" : "A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "12", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_proc_1_1_Pipeline_VITIS_LOOP_42_1_fu_28", "Port" : "data_channel12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "13", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_proc_1_1_Pipeline_VITIS_LOOP_46_2_fu_37", "Port" : "data_channel23", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_1_U0.grp_proc_1_1_Pipeline_VITIS_LOOP_42_1_fu_28", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "proc_1_1_Pipeline_VITIS_LOOP_42_1",
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
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_channel12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_1_U0.grp_proc_1_1_Pipeline_VITIS_LOOP_42_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_1_U0.grp_proc_1_1_Pipeline_VITIS_LOOP_46_2_fu_37", "Parent" : "2", "Child" : ["6"],
		"CDFG" : "proc_1_1_Pipeline_VITIS_LOOP_46_2",
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
			{"Name" : "p_phi_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_channel23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_1_U0.grp_proc_1_1_Pipeline_VITIS_LOOP_46_2_fu_37.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_2_U0", "Parent" : "1", "Child" : ["8", "10"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_proc_1_2_U0_U",
		"Port" : [
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15","16"], "DependentChan" : "26", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30", "Port" : "data_channel12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15","16"], "DependentChan" : "27", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_proc_1_2_Pipeline_VITIS_LOOP_59_2_fu_41", "Port" : "data_channel23", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "data_channel121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "12", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30", "Port" : "data_channel121", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel232", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "13", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30", "Port" : "data_channel232", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_2_U0.grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30", "Parent" : "7", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_2_U0.grp_proc_1_2_Pipeline_VITIS_LOOP_55_1_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_2_U0.grp_proc_1_2_Pipeline_VITIS_LOOP_59_2_fu_41", "Parent" : "7", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.proc_1_2_U0.grp_proc_1_2_Pipeline_VITIS_LOOP_59_2_fu_41.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.data_channel1_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.data_channel2_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_1_U0.start_for_proc_1_2_U0_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.proc_2_U0", "Parent" : "0", "Child" : ["16", "21", "23", "24", "25"],
		"CDFG" : "proc_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_proc_2_U0_U",
		"InputProcess" : [
			{"ID" : "16", "Name" : "proc_2_1_U0"}],
		"OutputProcess" : [
			{"ID" : "21", "Name" : "proc_2_2_U0"}],
		"Port" : [
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1","7"], "DependentChan" : "26", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "proc_2_1_U0", "Port" : "data_channel12"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1","7"], "DependentChan" : "27", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "proc_2_1_U0", "Port" : "data_channel23"}]},
			{"Name" : "B1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "proc_2_2_U0", "Port" : "B"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.proc_2_1_U0", "Parent" : "15", "Child" : ["17", "19"],
		"CDFG" : "proc_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1","7"], "DependentChan" : "26", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_proc_2_1_Pipeline_VITIS_LOOP_76_1_fu_30", "Port" : "data_channel12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1","7"], "DependentChan" : "27", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_proc_2_1_Pipeline_VITIS_LOOP_76_1_fu_30", "Port" : "data_channel23", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "23", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_proc_2_1_Pipeline_VITIS_LOOP_76_1_fu_30", "Port" : "data_channel121", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "24", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_proc_2_1_Pipeline_VITIS_LOOP_80_2_fu_41", "Port" : "data_channel232", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.proc_2_1_U0.grp_proc_2_1_Pipeline_VITIS_LOOP_76_1_fu_30", "Parent" : "16", "Child" : ["18"],
		"CDFG" : "proc_2_1_Pipeline_VITIS_LOOP_76_1",
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
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_channel12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_channel23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel121", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_channel121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.proc_2_1_U0.grp_proc_2_1_Pipeline_VITIS_LOOP_76_1_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.proc_2_1_U0.grp_proc_2_1_Pipeline_VITIS_LOOP_80_2_fu_41", "Parent" : "16", "Child" : ["20"],
		"CDFG" : "proc_2_1_Pipeline_VITIS_LOOP_80_2",
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
			{"Name" : "data_channel232", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_channel232_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.proc_2_1_U0.grp_proc_2_1_Pipeline_VITIS_LOOP_80_2_fu_41.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.proc_2_2_U0", "Parent" : "15", "Child" : ["22"],
		"CDFG" : "proc_2_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "16",
		"StartFifo" : "start_for_proc_2_2_U0_U",
		"Port" : [
			{"Name" : "B", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "23", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_channel12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "24", "DependentChanDepth" : "40", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_channel23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.proc_2_2_U0.flow_control_loop_pipe_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.data_channel1_U", "Parent" : "15"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.data_channel2_U", "Parent" : "15"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_2_U0.start_for_proc_2_2_U0_U", "Parent" : "15"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_channel1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_channel2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_proc_2_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	example {
		A {Type I LastRead 1 FirstWrite -1}
		B {Type O LastRead -1 FirstWrite 3}}
	proc_1 {
		A {Type I LastRead 1 FirstWrite -1}
		data_channel12 {Type O LastRead -1 FirstWrite 3}
		data_channel23 {Type O LastRead -1 FirstWrite 1}}
	proc_1_1 {
		A {Type I LastRead 1 FirstWrite -1}
		data_channel12 {Type O LastRead -1 FirstWrite 1}
		data_channel23 {Type O LastRead -1 FirstWrite 1}}
	proc_1_1_Pipeline_VITIS_LOOP_42_1 {
		A {Type I LastRead 1 FirstWrite -1}
		data_channel12 {Type O LastRead -1 FirstWrite 1}
		p_phi_out {Type O LastRead -1 FirstWrite 0}}
	proc_1_1_Pipeline_VITIS_LOOP_46_2 {
		p_phi_reload {Type I LastRead 0 FirstWrite -1}
		data_channel23 {Type O LastRead -1 FirstWrite 1}}
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
		data_channel23 {Type O LastRead -1 FirstWrite 1}}
	proc_2 {
		data_channel12 {Type I LastRead 1 FirstWrite -1}
		data_channel23 {Type I LastRead 1 FirstWrite -1}
		B1 {Type O LastRead -1 FirstWrite 3}}
	proc_2_1 {
		data_channel12 {Type I LastRead 1 FirstWrite -1}
		data_channel23 {Type I LastRead 1 FirstWrite -1}
		data_channel121 {Type O LastRead -1 FirstWrite 3}
		data_channel232 {Type O LastRead -1 FirstWrite 1}}
	proc_2_1_Pipeline_VITIS_LOOP_76_1 {
		data_channel12 {Type I LastRead 1 FirstWrite -1}
		data_channel23 {Type I LastRead 1 FirstWrite -1}
		data_channel121 {Type O LastRead -1 FirstWrite 3}
		add_phi_out {Type O LastRead -1 FirstWrite 2}}
	proc_2_1_Pipeline_VITIS_LOOP_80_2 {
		add_phi_reload {Type I LastRead 0 FirstWrite -1}
		data_channel232 {Type O LastRead -1 FirstWrite 1}}
	proc_2_2 {
		B {Type O LastRead -1 FirstWrite 3}
		data_channel12 {Type I LastRead 1 FirstWrite -1}
		data_channel23 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "36", "Max" : "36"}
	, {"Name" : "Interval", "Min" : "31", "Max" : "31"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A { ap_fifo {  { A_dout fifo_port_we 0 32 }  { A_empty_n fifo_status 0 1 }  { A_read fifo_data 1 1 } } }
	B { ap_fifo {  { B_din fifo_port_we 1 32 }  { B_full_n fifo_status 0 1 }  { B_write fifo_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	A { fifo_read 1 no_conditional }
	B { fifo_write 1 no_conditional }
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
