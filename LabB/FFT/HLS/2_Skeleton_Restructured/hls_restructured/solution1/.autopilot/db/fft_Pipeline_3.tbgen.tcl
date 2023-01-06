set moduleName fft_Pipeline_3
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
set C_modelName {fft_Pipeline_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_1 int 32 regular {axi_master 1}  }
	{ sext_ln36 int 62 regular  }
	{ OUT_R_o_0 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ OUT_R_o_1 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ OUT_R_o_2 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ OUT_R_o_3 float 32 regular {array 256 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "OUT_R","offset": { "type": "dynamic","port_name": "OUT_R","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln36", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R_o_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R_o_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R_o_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R_o_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_output_1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_output_1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_1_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_output_1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_output_1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_output_1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_output_1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_output_1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_1_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_output_1_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_output_1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_1_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_output_1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_output_1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_output_1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_output_1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_output_1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_output_1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_output_1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_1_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_output_1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_output_1_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_output_1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_output_1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_output_1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_output_1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_output_1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_output_1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_output_1_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln36 sc_in sc_lv 62 signal 1 } 
	{ OUT_R_o_0_address0 sc_out sc_lv 8 signal 2 } 
	{ OUT_R_o_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ OUT_R_o_0_q0 sc_in sc_lv 32 signal 2 } 
	{ OUT_R_o_1_address0 sc_out sc_lv 8 signal 3 } 
	{ OUT_R_o_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ OUT_R_o_1_q0 sc_in sc_lv 32 signal 3 } 
	{ OUT_R_o_2_address0 sc_out sc_lv 8 signal 4 } 
	{ OUT_R_o_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ OUT_R_o_2_q0 sc_in sc_lv 32 signal 4 } 
	{ OUT_R_o_3_address0 sc_out sc_lv 8 signal 5 } 
	{ OUT_R_o_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ OUT_R_o_3_q0 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_output_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_output_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_output_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_output_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "AWID" }} , 
 	{ "name": "m_axi_output_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_output_1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_output_1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_output_1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_output_1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_output_1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_output_1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_output_1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_output_1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_output_1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "WVALID" }} , 
 	{ "name": "m_axi_output_1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "WREADY" }} , 
 	{ "name": "m_axi_output_1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "WDATA" }} , 
 	{ "name": "m_axi_output_1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_output_1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "WLAST" }} , 
 	{ "name": "m_axi_output_1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "WID" }} , 
 	{ "name": "m_axi_output_1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "WUSER" }} , 
 	{ "name": "m_axi_output_1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_output_1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_output_1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_output_1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ARID" }} , 
 	{ "name": "m_axi_output_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_output_1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_output_1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_output_1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_output_1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_output_1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_output_1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_output_1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_output_1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_output_1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "RVALID" }} , 
 	{ "name": "m_axi_output_1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "RREADY" }} , 
 	{ "name": "m_axi_output_1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "RDATA" }} , 
 	{ "name": "m_axi_output_1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "RLAST" }} , 
 	{ "name": "m_axi_output_1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "RID" }} , 
 	{ "name": "m_axi_output_1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_output_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_output_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_output_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_output_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_output_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_output_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "BID" }} , 
 	{ "name": "m_axi_output_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "BUSER" }} , 
 	{ "name": "sext_ln36", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln36", "role": "default" }} , 
 	{ "name": "OUT_R_o_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_o_0", "role": "address0" }} , 
 	{ "name": "OUT_R_o_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_o_0", "role": "ce0" }} , 
 	{ "name": "OUT_R_o_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_o_0", "role": "q0" }} , 
 	{ "name": "OUT_R_o_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_o_1", "role": "address0" }} , 
 	{ "name": "OUT_R_o_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_o_1", "role": "ce0" }} , 
 	{ "name": "OUT_R_o_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_o_1", "role": "q0" }} , 
 	{ "name": "OUT_R_o_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_o_2", "role": "address0" }} , 
 	{ "name": "OUT_R_o_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_o_2", "role": "ce0" }} , 
 	{ "name": "OUT_R_o_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_o_2", "role": "q0" }} , 
 	{ "name": "OUT_R_o_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_o_3", "role": "address0" }} , 
 	{ "name": "OUT_R_o_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_o_3", "role": "ce0" }} , 
 	{ "name": "OUT_R_o_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_o_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "fft_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_1_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_R_o_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R_o_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R_o_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R_o_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U655", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_Pipeline_3 {
		output_1 {Type O LastRead -1 FirstWrite 2}
		sext_ln36 {Type I LastRead 0 FirstWrite -1}
		OUT_R_o_0 {Type I LastRead 0 FirstWrite -1}
		OUT_R_o_1 {Type I LastRead 0 FirstWrite -1}
		OUT_R_o_2 {Type I LastRead 0 FirstWrite -1}
		OUT_R_o_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "1027", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_output_1_AWVALID VALID 1 1 }  { m_axi_output_1_AWREADY READY 0 1 }  { m_axi_output_1_AWADDR ADDR 1 64 }  { m_axi_output_1_AWID ID 1 1 }  { m_axi_output_1_AWLEN SIZE 1 32 }  { m_axi_output_1_AWSIZE BURST 1 3 }  { m_axi_output_1_AWBURST LOCK 1 2 }  { m_axi_output_1_AWLOCK CACHE 1 2 }  { m_axi_output_1_AWCACHE PROT 1 4 }  { m_axi_output_1_AWPROT QOS 1 3 }  { m_axi_output_1_AWQOS REGION 1 4 }  { m_axi_output_1_AWREGION USER 1 4 }  { m_axi_output_1_AWUSER DATA 1 1 }  { m_axi_output_1_WVALID VALID 1 1 }  { m_axi_output_1_WREADY READY 0 1 }  { m_axi_output_1_WDATA FIFONUM 1 32 }  { m_axi_output_1_WSTRB STRB 1 4 }  { m_axi_output_1_WLAST LAST 1 1 }  { m_axi_output_1_WID ID 1 1 }  { m_axi_output_1_WUSER DATA 1 1 }  { m_axi_output_1_ARVALID VALID 1 1 }  { m_axi_output_1_ARREADY READY 0 1 }  { m_axi_output_1_ARADDR ADDR 1 64 }  { m_axi_output_1_ARID ID 1 1 }  { m_axi_output_1_ARLEN SIZE 1 32 }  { m_axi_output_1_ARSIZE BURST 1 3 }  { m_axi_output_1_ARBURST LOCK 1 2 }  { m_axi_output_1_ARLOCK CACHE 1 2 }  { m_axi_output_1_ARCACHE PROT 1 4 }  { m_axi_output_1_ARPROT QOS 1 3 }  { m_axi_output_1_ARQOS REGION 1 4 }  { m_axi_output_1_ARREGION USER 1 4 }  { m_axi_output_1_ARUSER DATA 1 1 }  { m_axi_output_1_RVALID VALID 0 1 }  { m_axi_output_1_RREADY READY 1 1 }  { m_axi_output_1_RDATA FIFONUM 0 32 }  { m_axi_output_1_RLAST LAST 0 1 }  { m_axi_output_1_RID ID 0 1 }  { m_axi_output_1_RFIFONUM LEN 0 9 }  { m_axi_output_1_RUSER DATA 0 1 }  { m_axi_output_1_RRESP RESP 0 2 }  { m_axi_output_1_BVALID VALID 0 1 }  { m_axi_output_1_BREADY READY 1 1 }  { m_axi_output_1_BRESP RESP 0 2 }  { m_axi_output_1_BID ID 0 1 }  { m_axi_output_1_BUSER DATA 0 1 } } }
	sext_ln36 { ap_none {  { sext_ln36 in_data 0 62 } } }
	OUT_R_o_0 { ap_memory {  { OUT_R_o_0_address0 mem_address 1 8 }  { OUT_R_o_0_ce0 mem_ce 1 1 }  { OUT_R_o_0_q0 in_data 0 32 } } }
	OUT_R_o_1 { ap_memory {  { OUT_R_o_1_address0 mem_address 1 8 }  { OUT_R_o_1_ce0 mem_ce 1 1 }  { OUT_R_o_1_q0 in_data 0 32 } } }
	OUT_R_o_2 { ap_memory {  { OUT_R_o_2_address0 mem_address 1 8 }  { OUT_R_o_2_ce0 mem_ce 1 1 }  { OUT_R_o_2_q0 in_data 0 32 } } }
	OUT_R_o_3 { ap_memory {  { OUT_R_o_3_address0 mem_address 1 8 }  { OUT_R_o_3_ce0 mem_ce 1 1 }  { OUT_R_o_3_q0 in_data 0 32 } } }
}
