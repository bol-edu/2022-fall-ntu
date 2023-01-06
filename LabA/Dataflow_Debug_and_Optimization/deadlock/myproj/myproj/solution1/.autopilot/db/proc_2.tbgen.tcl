set moduleName proc_2
set isTopModule 0
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
set C_modelName {proc_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_channel12 int 32 regular {fifo 0 volatile }  }
	{ data_channel23 int 32 regular {fifo 0 volatile }  }
	{ B1 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_channel12", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_channel23", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ data_channel12_dout sc_in sc_lv 32 signal 0 } 
	{ data_channel12_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_channel12_read sc_out sc_logic 1 signal 0 } 
	{ data_channel23_dout sc_in sc_lv 32 signal 1 } 
	{ data_channel23_empty_n sc_in sc_logic 1 signal 1 } 
	{ data_channel23_read sc_out sc_logic 1 signal 1 } 
	{ B1_din sc_out sc_lv 32 signal 2 } 
	{ B1_full_n sc_in sc_logic 1 signal 2 } 
	{ B1_write sc_out sc_logic 1 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "data_channel12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel12", "role": "dout" }} , 
 	{ "name": "data_channel12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel12", "role": "empty_n" }} , 
 	{ "name": "data_channel12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel12", "role": "read" }} , 
 	{ "name": "data_channel23_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_channel23", "role": "dout" }} , 
 	{ "name": "data_channel23_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel23", "role": "empty_n" }} , 
 	{ "name": "data_channel23_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_channel23", "role": "read" }} , 
 	{ "name": "B1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B1", "role": "din" }} , 
 	{ "name": "B1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1", "role": "full_n" }} , 
 	{ "name": "B1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "8", "9", "10"],
		"CDFG" : "proc_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "proc_2_1_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "proc_2_2_U0"}],
		"Port" : [
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "proc_2_1_U0", "Port" : "data_channel12"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "proc_2_1_U0", "Port" : "data_channel23"}]},
			{"Name" : "B1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "proc_2_2_U0", "Port" : "B"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.proc_2_1_U0", "Parent" : "0", "Child" : ["2", "4"],
		"CDFG" : "proc_2_1",
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
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_proc_2_1_Pipeline_VITIS_LOOP_75_1_fu_30", "Port" : "data_channel12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_proc_2_1_Pipeline_VITIS_LOOP_75_1_fu_30", "Port" : "data_channel23", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel121", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_proc_2_1_Pipeline_VITIS_LOOP_75_1_fu_30", "Port" : "data_channel121", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_channel232", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_proc_2_1_Pipeline_VITIS_LOOP_79_2_fu_41", "Port" : "data_channel232", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_2_1_U0.grp_proc_2_1_Pipeline_VITIS_LOOP_75_1_fu_30", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "proc_2_1_Pipeline_VITIS_LOOP_75_1",
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
			{"Name" : "VITIS_LOOP_75_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_2_1_U0.grp_proc_2_1_Pipeline_VITIS_LOOP_75_1_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_2_1_U0.grp_proc_2_1_Pipeline_VITIS_LOOP_79_2_fu_41", "Parent" : "1", "Child" : ["5"],
		"CDFG" : "proc_2_1_Pipeline_VITIS_LOOP_79_2",
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
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.proc_2_1_U0.grp_proc_2_1_Pipeline_VITIS_LOOP_79_2_fu_41.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.proc_2_2_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "proc_2_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_proc_2_2_U0_U",
		"Port" : [
			{"Name" : "B", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_channel12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_channel23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_channel23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.proc_2_2_U0.flow_control_loop_pipe_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_channel1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_channel2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_proc_2_2_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	proc_2 {
		data_channel12 {Type I LastRead 1 FirstWrite -1}
		data_channel23 {Type I LastRead 1 FirstWrite -1}
		B1 {Type O LastRead -1 FirstWrite 1}}
	proc_2_1 {
		data_channel12 {Type I LastRead 1 FirstWrite -1}
		data_channel23 {Type I LastRead 1 FirstWrite -1}
		data_channel121 {Type O LastRead -1 FirstWrite 1}
		data_channel232 {Type O LastRead -1 FirstWrite 1}}
	proc_2_1_Pipeline_VITIS_LOOP_75_1 {
		data_channel12 {Type I LastRead 1 FirstWrite -1}
		data_channel23 {Type I LastRead 1 FirstWrite -1}
		data_channel121 {Type O LastRead -1 FirstWrite 1}
		add_phi_out {Type O LastRead -1 FirstWrite 0}}
	proc_2_1_Pipeline_VITIS_LOOP_79_2 {
		add_phi_reload {Type I LastRead 0 FirstWrite -1}
		data_channel232 {Type O LastRead -1 FirstWrite 1}}
	proc_2_2 {
		B {Type O LastRead -1 FirstWrite 1}
		data_channel12 {Type I LastRead 1 FirstWrite -1}
		data_channel23 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "28"}
	, {"Name" : "Interval", "Min" : "29", "Max" : "29"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_channel12 { ap_fifo {  { data_channel12_dout fifo_port_we 0 32 }  { data_channel12_empty_n fifo_status 0 1 }  { data_channel12_read fifo_data 1 1 } } }
	data_channel23 { ap_fifo {  { data_channel23_dout fifo_port_we 0 32 }  { data_channel23_empty_n fifo_status 0 1 }  { data_channel23_read fifo_data 1 1 } } }
	B1 { ap_fifo {  { B1_din fifo_port_we 1 32 }  { B1_full_n fifo_status 0 1 }  { B1_write fifo_data 1 1 } } }
}
