set moduleName fft
set isTopModule 1
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
set C_modelName {fft}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_1 int 32 regular {axi_master 0}  }
	{ input_0 int 32 regular {axi_master 0}  }
	{ output_1 int 32 regular {axi_master 1}  }
	{ output_0 int 32 regular {axi_master 1}  }
	{ X_R int 64 regular {axi_slave 0}  }
	{ X_I int 64 regular {axi_slave 0}  }
	{ OUT_R int 64 regular {axi_slave 0}  }
	{ OUT_I int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "X_R","offset": { "type": "dynamic","port_name": "X_R","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "input_0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "X_I","offset": { "type": "dynamic","port_name": "X_I","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "output_1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "OUT_R","offset": { "type": "dynamic","port_name": "OUT_R","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "output_0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "OUT_I","offset": { "type": "dynamic","port_name": "OUT_I","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "X_R", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "X_I", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "OUT_R", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "OUT_I", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_input_1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_input_1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_1_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_input_1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_input_1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_input_1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_input_1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_input_1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_1_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_input_1_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_input_1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_1_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_input_1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_input_1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_input_1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_input_1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_input_1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_input_1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_input_1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_1_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_input_1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_input_1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_input_1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_input_1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_input_1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_input_1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_input_1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_input_1_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_input_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_input_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_input_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_input_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_input_0_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_input_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_input_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_input_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_input_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_input_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_input_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_input_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_input_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_input_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_input_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_input_0_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_input_0_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_input_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_input_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_input_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_input_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_input_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_input_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_input_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_input_0_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_input_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_input_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_input_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_input_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_input_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_input_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_input_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_input_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_input_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_input_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_input_0_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_input_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_input_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_input_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_input_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_input_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_input_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_input_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_input_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_input_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_output_1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_output_1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_output_1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_output_1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_output_1_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_output_1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_output_1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_output_1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_output_1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_output_1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_output_1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_output_1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_output_1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_output_1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_output_1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_output_1_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_output_1_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_output_1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_output_1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_output_1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_output_1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_output_1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_output_1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_output_1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_output_1_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_output_1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_output_1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_output_1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_output_1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_output_1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_output_1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_output_1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_output_1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_output_1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_output_1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_output_1_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_output_1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_output_1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_output_1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_output_1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_output_1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_output_1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_output_1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_output_1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_output_1_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_output_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_output_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_output_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_output_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_output_0_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_output_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_output_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_output_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_output_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_output_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_output_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_output_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_output_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_output_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_output_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_output_0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_output_0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_output_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_output_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_output_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_output_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_output_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_output_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_output_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_output_0_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_output_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_output_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_output_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_output_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_output_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_output_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_output_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_output_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_output_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_output_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_output_0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_output_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_output_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_output_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_output_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_output_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_output_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_output_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_output_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_output_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"fft","role":"start","value":"0","valid_bit":"0"},{"name":"fft","role":"continue","value":"0","valid_bit":"4"},{"name":"fft","role":"auto_start","value":"0","valid_bit":"7"},{"name":"X_R","role":"data","value":"16"},{"name":"X_I","role":"data","value":"28"},{"name":"OUT_R","role":"data","value":"40"},{"name":"OUT_I","role":"data","value":"52"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"fft","role":"start","value":"0","valid_bit":"0"},{"name":"fft","role":"done","value":"0","valid_bit":"1"},{"name":"fft","role":"idle","value":"0","valid_bit":"2"},{"name":"fft","role":"ready","value":"0","valid_bit":"3"},{"name":"fft","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_input_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_input_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_input_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_input_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "AWID" }} , 
 	{ "name": "m_axi_input_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_input_1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_input_1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_input_1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_input_1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_input_1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_input_1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_input_1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_input_1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_input_1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "WVALID" }} , 
 	{ "name": "m_axi_input_1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "WREADY" }} , 
 	{ "name": "m_axi_input_1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_1", "role": "WDATA" }} , 
 	{ "name": "m_axi_input_1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_input_1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "WLAST" }} , 
 	{ "name": "m_axi_input_1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "WID" }} , 
 	{ "name": "m_axi_input_1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "WUSER" }} , 
 	{ "name": "m_axi_input_1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_input_1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_input_1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_input_1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ARID" }} , 
 	{ "name": "m_axi_input_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_input_1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_input_1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_input_1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_input_1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_input_1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_input_1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_input_1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_input_1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_input_1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "RVALID" }} , 
 	{ "name": "m_axi_input_1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "RREADY" }} , 
 	{ "name": "m_axi_input_1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_1", "role": "RDATA" }} , 
 	{ "name": "m_axi_input_1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "RLAST" }} , 
 	{ "name": "m_axi_input_1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "RID" }} , 
 	{ "name": "m_axi_input_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_input_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_input_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_input_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_input_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_input_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "BID" }} , 
 	{ "name": "m_axi_input_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_1", "role": "BUSER" }} , 
 	{ "name": "m_axi_input_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_input_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_input_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_input_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "AWID" }} , 
 	{ "name": "m_axi_input_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_input_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_input_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_input_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_input_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_input_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_input_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_input_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_input_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_input_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_input_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_input_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_input_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_input_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_input_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "WID" }} , 
 	{ "name": "m_axi_input_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_input_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_input_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_input_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_input_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ARID" }} , 
 	{ "name": "m_axi_input_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_input_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_input_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_input_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_input_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_input_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_input_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_input_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_input_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_input_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_input_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_input_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_input_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_input_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "RID" }} , 
 	{ "name": "m_axi_input_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_input_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_input_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_input_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_input_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "input_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_input_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "BID" }} , 
 	{ "name": "m_axi_input_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_0", "role": "BUSER" }} , 
 	{ "name": "m_axi_output_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_output_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_output_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_output_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "AWID" }} , 
 	{ "name": "m_axi_output_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_output_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_output_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_output_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_output_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_output_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_output_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_output_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "BID" }} , 
 	{ "name": "m_axi_output_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "BUSER" }} , 
 	{ "name": "m_axi_output_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_output_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_output_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_output_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "AWID" }} , 
 	{ "name": "m_axi_output_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_output_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_output_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_output_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_output_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_output_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_output_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_output_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_output_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_output_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_output_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_output_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_output_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_output_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_output_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "WID" }} , 
 	{ "name": "m_axi_output_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_output_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_output_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_output_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_output_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ARID" }} , 
 	{ "name": "m_axi_output_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_output_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_output_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_output_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_output_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_output_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_output_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_output_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_output_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_output_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_output_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_output_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_output_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_output_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "RID" }} , 
 	{ "name": "m_axi_output_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_output_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_output_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_output_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_output_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "output_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_output_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "BID" }} , 
 	{ "name": "m_axi_output_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "13", "15", "160", "163", "166", "167", "168", "169", "170"],
		"CDFG" : "fft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4577", "EstimateLatencyMax" : "4577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_fft_Pipeline_1_fu_186", "Port" : "input_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "input_0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_fft_Pipeline_2_fu_194", "Port" : "input_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "output_1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "output_1_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_fft_Pipeline_3_fu_220", "Port" : "output_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "output_0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "output_0_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_fft_Pipeline_4_fu_231", "Port" : "output_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "X_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "X_I", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_I", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fft_exec_fu_202", "Port" : "W_real", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fft_exec_fu_202", "Port" : "W_imag", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.X_R_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.X_I_i_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OUT_R_o_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OUT_R_o_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OUT_R_o_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OUT_R_o_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OUT_I_o_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OUT_I_o_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OUT_I_o_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OUT_I_o_3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_1_fu_186", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "fft_Pipeline_1",
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
			{"Name" : "input_1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln33", "Type" : "None", "Direction" : "I"},
			{"Name" : "X_R_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_1_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_2_fu_194", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "fft_Pipeline_2",
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
			{"Name" : "input_0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln34", "Type" : "None", "Direction" : "I"},
			{"Name" : "X_I_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_2_fu_194.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202", "Parent" : "0", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "100", "102", "104", "106", "108", "110", "112", "114", "116", "118", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159"],
		"CDFG" : "fft_exec",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2505", "EstimateLatencyMax" : "2505",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_fft_exec_Pipeline_All_Loop_fu_368", "Port" : "X_R", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_fft_exec_Pipeline_All_Loop_fu_368", "Port" : "X_I", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_R_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "OUT_R_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_R_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "OUT_R_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_R_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "OUT_R_2", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_R_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "OUT_R_3", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_I_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "OUT_I_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_I_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "OUT_I_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_I_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "OUT_I_2", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_I_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "OUT_I_3", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop16_fu_572", "Port" : "W_real", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "114", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop15_fu_548", "Port" : "W_real", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "W_real", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "106", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop11_fu_452", "Port" : "W_real", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "108", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop12_fu_476", "Port" : "W_real", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "112", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop14_fu_524", "Port" : "W_real", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "110", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop13_fu_500", "Port" : "W_real", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop16_fu_572", "Port" : "W_imag", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "114", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop15_fu_548", "Port" : "W_imag", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "118", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Port" : "W_imag", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "106", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop11_fu_452", "Port" : "W_imag", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "108", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop12_fu_476", "Port" : "W_imag", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "112", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop14_fu_524", "Port" : "W_imag", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "110", "SubInstance" : "grp_fft_exec_Pipeline_DFT_Loop13_fu_500", "Port" : "W_imag", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.W_real_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.W_imag_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage0_R_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage0_R_1_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage0_R_2_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage0_R_3_U", "Parent" : "15"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage0_I_U", "Parent" : "15"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage0_I_1_U", "Parent" : "15"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage0_I_2_U", "Parent" : "15"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage0_I_3_U", "Parent" : "15"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage1_R_U", "Parent" : "15"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage1_R_1_U", "Parent" : "15"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage1_R_2_U", "Parent" : "15"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage1_R_3_U", "Parent" : "15"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage1_I_U", "Parent" : "15"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage1_I_1_U", "Parent" : "15"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage1_I_2_U", "Parent" : "15"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage1_I_3_U", "Parent" : "15"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage2_R_U", "Parent" : "15"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage2_R_1_U", "Parent" : "15"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage2_R_2_U", "Parent" : "15"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage2_R_3_U", "Parent" : "15"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage2_I_U", "Parent" : "15"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage2_I_1_U", "Parent" : "15"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage2_I_2_U", "Parent" : "15"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage2_I_3_U", "Parent" : "15"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage3_R_U", "Parent" : "15"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage3_R_1_U", "Parent" : "15"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage3_R_2_U", "Parent" : "15"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage3_R_3_U", "Parent" : "15"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage3_I_U", "Parent" : "15"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage3_I_1_U", "Parent" : "15"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage3_I_2_U", "Parent" : "15"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage3_I_3_U", "Parent" : "15"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage4_R_U", "Parent" : "15"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage4_R_1_U", "Parent" : "15"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage4_R_2_U", "Parent" : "15"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage4_R_3_U", "Parent" : "15"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage4_I_U", "Parent" : "15"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage4_I_1_U", "Parent" : "15"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage4_I_2_U", "Parent" : "15"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage4_I_3_U", "Parent" : "15"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage5_R_U", "Parent" : "15"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage5_R_1_U", "Parent" : "15"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage5_R_2_U", "Parent" : "15"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage5_R_3_U", "Parent" : "15"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage5_I_U", "Parent" : "15"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage5_I_1_U", "Parent" : "15"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage5_I_2_U", "Parent" : "15"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage5_I_3_U", "Parent" : "15"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage6_R_U", "Parent" : "15"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage6_R_1_U", "Parent" : "15"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage6_R_2_U", "Parent" : "15"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage6_R_3_U", "Parent" : "15"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage6_I_U", "Parent" : "15"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage6_I_1_U", "Parent" : "15"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage6_I_2_U", "Parent" : "15"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage6_I_3_U", "Parent" : "15"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage7_R_U", "Parent" : "15"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage7_R_1_U", "Parent" : "15"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage7_R_2_U", "Parent" : "15"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage7_R_3_U", "Parent" : "15"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage7_I_U", "Parent" : "15"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage7_I_1_U", "Parent" : "15"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage7_I_2_U", "Parent" : "15"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage7_I_3_U", "Parent" : "15"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage8_R_U", "Parent" : "15"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage8_R_1_U", "Parent" : "15"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage8_R_2_U", "Parent" : "15"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage8_R_3_U", "Parent" : "15"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage8_I_U", "Parent" : "15"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage8_I_1_U", "Parent" : "15"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage8_I_2_U", "Parent" : "15"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage8_I_3_U", "Parent" : "15"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage9_R_U", "Parent" : "15"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage9_R_1_U", "Parent" : "15"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage9_R_2_U", "Parent" : "15"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage9_R_3_U", "Parent" : "15"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage9_I_U", "Parent" : "15"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage9_I_1_U", "Parent" : "15"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage9_I_2_U", "Parent" : "15"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.Stage9_I_3_U", "Parent" : "15"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_All_Loop_fu_368", "Parent" : "15", "Child" : ["99"],
		"CDFG" : "fft_exec_Pipeline_All_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Stage0_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_I_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "All_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_All_Loop_fu_368.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop_fu_392", "Parent" : "15", "Child" : ["101"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_236", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_236", "FromFinalSV" : "16", "FromAddress" : "Stage1_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_252", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_252", "ToFinalSV" : "16", "ToAddress" : "Stage1_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_238", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_238", "FromFinalSV" : "16", "FromAddress" : "Stage1_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_254", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_254", "ToFinalSV" : "16", "ToAddress" : "Stage1_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_240", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_240", "FromFinalSV" : "16", "FromAddress" : "Stage1_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_256", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_256", "ToFinalSV" : "16", "ToAddress" : "Stage1_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_242", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_242", "FromFinalSV" : "16", "FromAddress" : "Stage1_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_258", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_258", "ToFinalSV" : "16", "ToAddress" : "Stage1_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_244", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_244", "FromFinalSV" : "16", "FromAddress" : "Stage1_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_260", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_260", "ToFinalSV" : "16", "ToAddress" : "Stage1_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_246", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_246", "FromFinalSV" : "16", "FromAddress" : "Stage1_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_262", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_262", "ToFinalSV" : "16", "ToAddress" : "Stage1_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_248", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_248", "FromFinalSV" : "16", "FromAddress" : "Stage1_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_264", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_264", "ToFinalSV" : "16", "ToAddress" : "Stage1_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_250", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_250", "FromFinalSV" : "16", "FromAddress" : "Stage1_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_266", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_266", "ToFinalSV" : "16", "ToAddress" : "Stage1_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_252", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_252", "FromFinalSV" : "16", "FromAddress" : "Stage1_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_236", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_236", "ToFinalSV" : "16", "ToAddress" : "Stage1_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_254", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_254", "FromFinalSV" : "16", "FromAddress" : "Stage1_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_238", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_238", "ToFinalSV" : "16", "ToAddress" : "Stage1_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_256", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_256", "FromFinalSV" : "16", "FromAddress" : "Stage1_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_240", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_240", "ToFinalSV" : "16", "ToAddress" : "Stage1_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_258", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_258", "FromFinalSV" : "16", "FromAddress" : "Stage1_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_242", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_242", "ToFinalSV" : "16", "ToAddress" : "Stage1_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_260", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_260", "FromFinalSV" : "16", "FromAddress" : "Stage1_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_244", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_244", "ToFinalSV" : "16", "ToAddress" : "Stage1_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_262", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_262", "FromFinalSV" : "16", "FromAddress" : "Stage1_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_246", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_246", "ToFinalSV" : "16", "ToAddress" : "Stage1_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_264", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_264", "FromFinalSV" : "16", "FromAddress" : "Stage1_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_248", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_248", "ToFinalSV" : "16", "ToAddress" : "Stage1_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_266", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_266", "FromFinalSV" : "16", "FromAddress" : "Stage1_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_250", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_250", "ToFinalSV" : "16", "ToAddress" : "Stage1_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:112:17)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "Stage1_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_I_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop_fu_392.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop9_fu_412", "Parent" : "15", "Child" : ["103"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_260", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_260", "FromFinalSV" : "16", "FromAddress" : "Stage2_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_276", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_276", "ToFinalSV" : "16", "ToAddress" : "Stage2_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_262", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_262", "FromFinalSV" : "16", "FromAddress" : "Stage2_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_278", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_278", "ToFinalSV" : "16", "ToAddress" : "Stage2_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_264", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_264", "FromFinalSV" : "16", "FromAddress" : "Stage2_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_280", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_280", "ToFinalSV" : "16", "ToAddress" : "Stage2_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_266", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_266", "FromFinalSV" : "16", "FromAddress" : "Stage2_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_282", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_282", "ToFinalSV" : "16", "ToAddress" : "Stage2_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_268", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_268", "FromFinalSV" : "16", "FromAddress" : "Stage2_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_290", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_290", "ToFinalSV" : "17", "ToAddress" : "Stage2_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_270", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_270", "FromFinalSV" : "16", "FromAddress" : "Stage2_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_292", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_292", "ToFinalSV" : "17", "ToAddress" : "Stage2_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_272", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_272", "FromFinalSV" : "16", "FromAddress" : "Stage2_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_294", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_294", "ToFinalSV" : "17", "ToAddress" : "Stage2_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_274", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_274", "FromFinalSV" : "16", "FromAddress" : "Stage2_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_296", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_296", "ToFinalSV" : "17", "ToAddress" : "Stage2_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_276", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_276", "FromFinalSV" : "16", "FromAddress" : "Stage2_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_260", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_260", "ToFinalSV" : "16", "ToAddress" : "Stage2_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_278", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_278", "FromFinalSV" : "16", "FromAddress" : "Stage2_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_262", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_262", "ToFinalSV" : "16", "ToAddress" : "Stage2_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_280", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_280", "FromFinalSV" : "16", "FromAddress" : "Stage2_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_264", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_264", "ToFinalSV" : "16", "ToAddress" : "Stage2_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_282", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_282", "FromFinalSV" : "16", "FromAddress" : "Stage2_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_266", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_266", "ToFinalSV" : "16", "ToAddress" : "Stage2_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_290", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_290", "FromFinalSV" : "17", "FromAddress" : "Stage2_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_268", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_268", "ToFinalSV" : "16", "ToAddress" : "Stage2_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_292", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_292", "FromFinalSV" : "17", "FromAddress" : "Stage2_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_270", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_270", "ToFinalSV" : "16", "ToAddress" : "Stage2_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_294", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_294", "FromFinalSV" : "17", "FromAddress" : "Stage2_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_272", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_272", "ToFinalSV" : "16", "ToAddress" : "Stage2_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_296", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_296", "FromFinalSV" : "17", "FromAddress" : "Stage2_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_274", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_274", "ToFinalSV" : "16", "ToAddress" : "Stage2_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]}],
		"Port" : [
			{"Name" : "Stage2_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage2_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage2_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage2_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage2_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage2_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage2_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage2_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_I_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop9_fu_412.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop10_fu_432", "Parent" : "15", "Child" : ["105"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_274", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_274", "FromFinalSV" : "16", "FromAddress" : "Stage3_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_278", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_278", "ToFinalSV" : "16", "ToAddress" : "Stage3_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_276", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_276", "FromFinalSV" : "16", "FromAddress" : "Stage3_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_280", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_280", "ToFinalSV" : "16", "ToAddress" : "Stage3_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_278", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_278", "FromFinalSV" : "16", "FromAddress" : "Stage3_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_274", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_274", "ToFinalSV" : "16", "ToAddress" : "Stage3_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_280", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_280", "FromFinalSV" : "16", "FromAddress" : "Stage3_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_276", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_276", "ToFinalSV" : "16", "ToAddress" : "Stage3_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_282", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_282", "FromFinalSV" : "16", "FromAddress" : "Stage3_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_296", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_296", "ToFinalSV" : "17", "ToAddress" : "Stage3_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_284", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_284", "FromFinalSV" : "16", "FromAddress" : "Stage3_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_298", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_298", "ToFinalSV" : "17", "ToAddress" : "Stage3_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_286", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_286", "FromFinalSV" : "16", "FromAddress" : "Stage3_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_300", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_300", "ToFinalSV" : "17", "ToAddress" : "Stage3_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_288", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_288", "FromFinalSV" : "16", "FromAddress" : "Stage3_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_302", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_302", "ToFinalSV" : "17", "ToAddress" : "Stage3_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_290", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_290", "FromFinalSV" : "16", "FromAddress" : "Stage3_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_304", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_304", "ToFinalSV" : "17", "ToAddress" : "Stage3_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_292", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_292", "FromFinalSV" : "16", "FromAddress" : "Stage3_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_306", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_306", "ToFinalSV" : "17", "ToAddress" : "Stage3_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_296", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_296", "FromFinalSV" : "17", "FromAddress" : "Stage3_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_282", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_282", "ToFinalSV" : "16", "ToAddress" : "Stage3_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_298", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_298", "FromFinalSV" : "17", "FromAddress" : "Stage3_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_284", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_284", "ToFinalSV" : "16", "ToAddress" : "Stage3_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_300", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_300", "FromFinalSV" : "17", "FromAddress" : "Stage3_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_286", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_286", "ToFinalSV" : "16", "ToAddress" : "Stage3_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_302", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_302", "FromFinalSV" : "17", "FromAddress" : "Stage3_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_288", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_288", "ToFinalSV" : "16", "ToAddress" : "Stage3_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_304", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_304", "FromFinalSV" : "17", "FromAddress" : "Stage3_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_290", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_290", "ToFinalSV" : "16", "ToAddress" : "Stage3_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_306", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_306", "FromFinalSV" : "17", "FromAddress" : "Stage3_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_292", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_292", "ToFinalSV" : "16", "ToAddress" : "Stage3_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]}],
		"Port" : [
			{"Name" : "Stage3_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage3_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage3_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage3_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage3_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage3_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage3_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage3_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage2_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage2_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage2_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage2_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage2_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage2_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage2_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage2_I_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop10_fu_432.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop11_fu_452", "Parent" : "15", "Child" : ["107"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_333", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_333", "FromFinalSV" : "16", "FromAddress" : "Stage4_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_351", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_351", "ToFinalSV" : "17", "ToAddress" : "Stage4_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_335", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "16", "FromAddress" : "Stage4_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_353", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_353", "ToFinalSV" : "17", "ToAddress" : "Stage4_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_337", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_337", "FromFinalSV" : "16", "FromAddress" : "Stage4_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_355", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_355", "ToFinalSV" : "17", "ToAddress" : "Stage4_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_339", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_339", "FromFinalSV" : "16", "FromAddress" : "Stage4_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_357", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_357", "ToFinalSV" : "17", "ToAddress" : "Stage4_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_341", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_341", "FromFinalSV" : "16", "FromAddress" : "Stage4_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_359", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_359", "ToFinalSV" : "17", "ToAddress" : "Stage4_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_343", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_343", "FromFinalSV" : "16", "FromAddress" : "Stage4_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_361", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_361", "ToFinalSV" : "17", "ToAddress" : "Stage4_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_345", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_345", "FromFinalSV" : "16", "FromAddress" : "Stage4_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_363", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_363", "ToFinalSV" : "17", "ToAddress" : "Stage4_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_347", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_347", "FromFinalSV" : "16", "FromAddress" : "Stage4_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_365", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_365", "ToFinalSV" : "17", "ToAddress" : "Stage4_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_351", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_351", "FromFinalSV" : "17", "FromAddress" : "Stage4_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_333", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_333", "ToFinalSV" : "16", "ToAddress" : "Stage4_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_353", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_353", "FromFinalSV" : "17", "FromAddress" : "Stage4_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_335", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "16", "ToAddress" : "Stage4_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_355", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_355", "FromFinalSV" : "17", "FromAddress" : "Stage4_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_337", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_337", "ToFinalSV" : "16", "ToAddress" : "Stage4_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_357", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_357", "FromFinalSV" : "17", "FromAddress" : "Stage4_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_339", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_339", "ToFinalSV" : "16", "ToAddress" : "Stage4_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_359", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_359", "FromFinalSV" : "17", "FromAddress" : "Stage4_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_341", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_341", "ToFinalSV" : "16", "ToAddress" : "Stage4_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_361", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_361", "FromFinalSV" : "17", "FromAddress" : "Stage4_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_343", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_343", "ToFinalSV" : "16", "ToAddress" : "Stage4_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_363", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_363", "FromFinalSV" : "17", "FromAddress" : "Stage4_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_345", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_345", "ToFinalSV" : "16", "ToAddress" : "Stage4_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_365", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_365", "FromFinalSV" : "17", "FromAddress" : "Stage4_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_347", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_347", "ToFinalSV" : "16", "ToAddress" : "Stage4_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]}],
		"Port" : [
			{"Name" : "Stage4_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage4_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage4_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage4_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage4_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage4_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage4_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage4_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage3_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage3_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage3_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage3_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage3_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage3_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage3_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage3_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop11_fu_452.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop12_fu_476", "Parent" : "15", "Child" : ["109"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_333", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_333", "FromFinalSV" : "16", "FromAddress" : "Stage5_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_351", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_351", "ToFinalSV" : "17", "ToAddress" : "Stage5_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_335", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "16", "FromAddress" : "Stage5_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_353", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_353", "ToFinalSV" : "17", "ToAddress" : "Stage5_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_337", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_337", "FromFinalSV" : "16", "FromAddress" : "Stage5_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_355", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_355", "ToFinalSV" : "17", "ToAddress" : "Stage5_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_339", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_339", "FromFinalSV" : "16", "FromAddress" : "Stage5_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_357", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_357", "ToFinalSV" : "17", "ToAddress" : "Stage5_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_341", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_341", "FromFinalSV" : "16", "FromAddress" : "Stage5_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_359", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_359", "ToFinalSV" : "17", "ToAddress" : "Stage5_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_343", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_343", "FromFinalSV" : "16", "FromAddress" : "Stage5_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_361", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_361", "ToFinalSV" : "17", "ToAddress" : "Stage5_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_345", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_345", "FromFinalSV" : "16", "FromAddress" : "Stage5_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_363", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_363", "ToFinalSV" : "17", "ToAddress" : "Stage5_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_347", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_347", "FromFinalSV" : "16", "FromAddress" : "Stage5_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_365", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_365", "ToFinalSV" : "17", "ToAddress" : "Stage5_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_351", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_351", "FromFinalSV" : "17", "FromAddress" : "Stage5_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_333", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_333", "ToFinalSV" : "16", "ToAddress" : "Stage5_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_353", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_353", "FromFinalSV" : "17", "FromAddress" : "Stage5_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_335", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "16", "ToAddress" : "Stage5_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_355", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_355", "FromFinalSV" : "17", "FromAddress" : "Stage5_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_337", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_337", "ToFinalSV" : "16", "ToAddress" : "Stage5_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_357", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_357", "FromFinalSV" : "17", "FromAddress" : "Stage5_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_339", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_339", "ToFinalSV" : "16", "ToAddress" : "Stage5_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_359", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_359", "FromFinalSV" : "17", "FromAddress" : "Stage5_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_341", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_341", "ToFinalSV" : "16", "ToAddress" : "Stage5_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_361", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_361", "FromFinalSV" : "17", "FromAddress" : "Stage5_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_343", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_343", "ToFinalSV" : "16", "ToAddress" : "Stage5_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_363", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_363", "FromFinalSV" : "17", "FromAddress" : "Stage5_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_345", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_345", "ToFinalSV" : "16", "ToAddress" : "Stage5_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_365", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_365", "FromFinalSV" : "17", "FromAddress" : "Stage5_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_347", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_347", "ToFinalSV" : "16", "ToAddress" : "Stage5_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]}],
		"Port" : [
			{"Name" : "Stage5_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage5_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage5_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage5_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage5_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage5_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage5_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage5_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage4_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage4_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage4_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage4_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage4_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage4_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage4_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage4_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop12_fu_476.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop13_fu_500", "Parent" : "15", "Child" : ["111"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_333", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_333", "FromFinalSV" : "16", "FromAddress" : "Stage6_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_351", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_351", "ToFinalSV" : "17", "ToAddress" : "Stage6_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_335", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "16", "FromAddress" : "Stage6_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_353", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_353", "ToFinalSV" : "17", "ToAddress" : "Stage6_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_337", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_337", "FromFinalSV" : "16", "FromAddress" : "Stage6_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_355", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_355", "ToFinalSV" : "17", "ToAddress" : "Stage6_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_339", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_339", "FromFinalSV" : "16", "FromAddress" : "Stage6_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_357", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_357", "ToFinalSV" : "17", "ToAddress" : "Stage6_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_341", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_341", "FromFinalSV" : "16", "FromAddress" : "Stage6_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_359", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_359", "ToFinalSV" : "17", "ToAddress" : "Stage6_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_343", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_343", "FromFinalSV" : "16", "FromAddress" : "Stage6_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_361", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_361", "ToFinalSV" : "17", "ToAddress" : "Stage6_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_345", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_345", "FromFinalSV" : "16", "FromAddress" : "Stage6_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_363", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_363", "ToFinalSV" : "17", "ToAddress" : "Stage6_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_347", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_347", "FromFinalSV" : "16", "FromAddress" : "Stage6_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_365", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_365", "ToFinalSV" : "17", "ToAddress" : "Stage6_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_351", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_351", "FromFinalSV" : "17", "FromAddress" : "Stage6_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_333", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_333", "ToFinalSV" : "16", "ToAddress" : "Stage6_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_353", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_353", "FromFinalSV" : "17", "FromAddress" : "Stage6_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_335", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "16", "ToAddress" : "Stage6_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_355", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_355", "FromFinalSV" : "17", "FromAddress" : "Stage6_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_337", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_337", "ToFinalSV" : "16", "ToAddress" : "Stage6_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_357", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_357", "FromFinalSV" : "17", "FromAddress" : "Stage6_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_339", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_339", "ToFinalSV" : "16", "ToAddress" : "Stage6_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_359", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_359", "FromFinalSV" : "17", "FromAddress" : "Stage6_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_341", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_341", "ToFinalSV" : "16", "ToAddress" : "Stage6_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_361", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_361", "FromFinalSV" : "17", "FromAddress" : "Stage6_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_343", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_343", "ToFinalSV" : "16", "ToAddress" : "Stage6_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_363", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_363", "FromFinalSV" : "17", "FromAddress" : "Stage6_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_345", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_345", "ToFinalSV" : "16", "ToAddress" : "Stage6_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_365", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_365", "FromFinalSV" : "17", "FromAddress" : "Stage6_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_347", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_347", "ToFinalSV" : "16", "ToAddress" : "Stage6_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]}],
		"Port" : [
			{"Name" : "Stage6_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage6_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage6_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage6_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage6_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage6_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage6_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage6_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage5_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage5_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage5_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage5_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage5_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage5_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage5_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage5_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop13_fu_500.flow_control_loop_pipe_sequential_init_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop14_fu_524", "Parent" : "15", "Child" : ["113"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_333", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_333", "FromFinalSV" : "16", "FromAddress" : "Stage7_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_351", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_351", "ToFinalSV" : "17", "ToAddress" : "Stage7_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_335", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "16", "FromAddress" : "Stage7_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_353", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_353", "ToFinalSV" : "17", "ToAddress" : "Stage7_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_337", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_337", "FromFinalSV" : "16", "FromAddress" : "Stage7_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_355", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_355", "ToFinalSV" : "17", "ToAddress" : "Stage7_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_339", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_339", "FromFinalSV" : "16", "FromAddress" : "Stage7_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_357", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_357", "ToFinalSV" : "17", "ToAddress" : "Stage7_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_341", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_341", "FromFinalSV" : "16", "FromAddress" : "Stage7_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_359", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_359", "ToFinalSV" : "17", "ToAddress" : "Stage7_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_343", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_343", "FromFinalSV" : "16", "FromAddress" : "Stage7_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_361", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_361", "ToFinalSV" : "17", "ToAddress" : "Stage7_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_345", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_345", "FromFinalSV" : "16", "FromAddress" : "Stage7_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_363", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_363", "ToFinalSV" : "17", "ToAddress" : "Stage7_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_347", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_347", "FromFinalSV" : "16", "FromAddress" : "Stage7_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_365", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_365", "ToFinalSV" : "17", "ToAddress" : "Stage7_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_351", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_351", "FromFinalSV" : "17", "FromAddress" : "Stage7_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_333", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_333", "ToFinalSV" : "16", "ToAddress" : "Stage7_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_353", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_353", "FromFinalSV" : "17", "FromAddress" : "Stage7_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_335", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "16", "ToAddress" : "Stage7_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_355", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_355", "FromFinalSV" : "17", "FromAddress" : "Stage7_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_337", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_337", "ToFinalSV" : "16", "ToAddress" : "Stage7_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_357", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_357", "FromFinalSV" : "17", "FromAddress" : "Stage7_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_339", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_339", "ToFinalSV" : "16", "ToAddress" : "Stage7_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_359", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_359", "FromFinalSV" : "17", "FromAddress" : "Stage7_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_341", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_341", "ToFinalSV" : "16", "ToAddress" : "Stage7_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_361", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_361", "FromFinalSV" : "17", "FromAddress" : "Stage7_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_343", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_343", "ToFinalSV" : "16", "ToAddress" : "Stage7_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_363", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_363", "FromFinalSV" : "17", "FromAddress" : "Stage7_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_345", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_345", "ToFinalSV" : "16", "ToAddress" : "Stage7_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_365", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_365", "FromFinalSV" : "17", "FromAddress" : "Stage7_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_347", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_347", "ToFinalSV" : "16", "ToAddress" : "Stage7_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]}],
		"Port" : [
			{"Name" : "Stage7_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage7_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage7_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage7_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage7_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage7_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage7_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage7_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage6_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage6_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage6_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage6_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage6_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage6_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage6_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage6_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop14_fu_524.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop15_fu_548", "Parent" : "15", "Child" : ["115"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_333", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_333", "FromFinalSV" : "16", "FromAddress" : "Stage8_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_351", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_351", "ToFinalSV" : "17", "ToAddress" : "Stage8_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_335", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "16", "FromAddress" : "Stage8_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_353", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_353", "ToFinalSV" : "17", "ToAddress" : "Stage8_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_337", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_337", "FromFinalSV" : "16", "FromAddress" : "Stage8_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_355", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_355", "ToFinalSV" : "17", "ToAddress" : "Stage8_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_339", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_339", "FromFinalSV" : "16", "FromAddress" : "Stage8_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_357", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_357", "ToFinalSV" : "17", "ToAddress" : "Stage8_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_341", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_341", "FromFinalSV" : "16", "FromAddress" : "Stage8_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_359", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_359", "ToFinalSV" : "17", "ToAddress" : "Stage8_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_343", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_343", "FromFinalSV" : "16", "FromAddress" : "Stage8_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_361", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_361", "ToFinalSV" : "17", "ToAddress" : "Stage8_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_345", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_345", "FromFinalSV" : "16", "FromAddress" : "Stage8_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_363", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_363", "ToFinalSV" : "17", "ToAddress" : "Stage8_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_347", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_347", "FromFinalSV" : "16", "FromAddress" : "Stage8_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_365", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_365", "ToFinalSV" : "17", "ToAddress" : "Stage8_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_351", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_351", "FromFinalSV" : "17", "FromAddress" : "Stage8_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_333", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_333", "ToFinalSV" : "16", "ToAddress" : "Stage8_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_353", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_353", "FromFinalSV" : "17", "FromAddress" : "Stage8_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_335", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "16", "ToAddress" : "Stage8_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_355", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_355", "FromFinalSV" : "17", "FromAddress" : "Stage8_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_337", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_337", "ToFinalSV" : "16", "ToAddress" : "Stage8_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_357", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_357", "FromFinalSV" : "17", "FromAddress" : "Stage8_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_339", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_339", "ToFinalSV" : "16", "ToAddress" : "Stage8_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_359", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_359", "FromFinalSV" : "17", "FromAddress" : "Stage8_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_341", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_341", "ToFinalSV" : "16", "ToAddress" : "Stage8_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_361", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_361", "FromFinalSV" : "17", "FromAddress" : "Stage8_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_343", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_343", "ToFinalSV" : "16", "ToAddress" : "Stage8_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_363", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_363", "FromFinalSV" : "17", "FromAddress" : "Stage8_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_345", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_345", "ToFinalSV" : "16", "ToAddress" : "Stage8_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_365", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_365", "FromFinalSV" : "17", "FromAddress" : "Stage8_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_347", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_347", "ToFinalSV" : "16", "ToAddress" : "Stage8_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]}],
		"Port" : [
			{"Name" : "Stage8_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage8_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage8_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage8_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage8_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage8_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage8_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage8_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage7_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage7_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage7_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage7_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage7_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage7_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage7_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage7_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop15_fu_548.flow_control_loop_pipe_sequential_init_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop16_fu_572", "Parent" : "15", "Child" : ["117"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_333", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_333", "FromFinalSV" : "16", "FromAddress" : "Stage9_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_351", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_351", "ToFinalSV" : "17", "ToAddress" : "Stage9_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_335", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "16", "FromAddress" : "Stage9_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_353", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_353", "ToFinalSV" : "17", "ToAddress" : "Stage9_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_337", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_337", "FromFinalSV" : "16", "FromAddress" : "Stage9_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_355", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_355", "ToFinalSV" : "17", "ToAddress" : "Stage9_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_339", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_339", "FromFinalSV" : "16", "FromAddress" : "Stage9_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_357", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_357", "ToFinalSV" : "17", "ToAddress" : "Stage9_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_341", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_341", "FromFinalSV" : "16", "FromAddress" : "Stage9_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_359", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_359", "ToFinalSV" : "17", "ToAddress" : "Stage9_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_343", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_343", "FromFinalSV" : "16", "FromAddress" : "Stage9_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_361", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_361", "ToFinalSV" : "17", "ToAddress" : "Stage9_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_345", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_345", "FromFinalSV" : "16", "FromAddress" : "Stage9_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_363", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_363", "ToFinalSV" : "17", "ToAddress" : "Stage9_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_347", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_347", "FromFinalSV" : "16", "FromAddress" : "Stage9_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter17_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter17", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_365", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter17_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter17", "ToFinalOperation" : "ap_enable_operation_365", "ToFinalSV" : "17", "ToAddress" : "Stage9_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_351", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_351", "FromFinalSV" : "17", "FromAddress" : "Stage9_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_333", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_333", "ToFinalSV" : "16", "ToAddress" : "Stage9_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_353", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_353", "FromFinalSV" : "17", "FromAddress" : "Stage9_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_335", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "16", "ToAddress" : "Stage9_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_355", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_355", "FromFinalSV" : "17", "FromAddress" : "Stage9_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_337", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_337", "ToFinalSV" : "16", "ToAddress" : "Stage9_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_357", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_357", "FromFinalSV" : "17", "FromAddress" : "Stage9_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_339", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_339", "ToFinalSV" : "16", "ToAddress" : "Stage9_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_359", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_359", "FromFinalSV" : "17", "FromAddress" : "Stage9_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_341", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_341", "ToFinalSV" : "16", "ToAddress" : "Stage9_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_361", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_361", "FromFinalSV" : "17", "FromAddress" : "Stage9_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_343", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_343", "ToFinalSV" : "16", "ToAddress" : "Stage9_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_363", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_363", "FromFinalSV" : "17", "FromAddress" : "Stage9_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_345", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_345", "ToFinalSV" : "16", "ToAddress" : "Stage9_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter17_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter17", "FromInitialOperation" : "ap_enable_operation_365", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter17_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter17", "FromFinalOperation" : "ap_enable_operation_365", "FromFinalSV" : "17", "FromAddress" : "Stage9_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter17", "ToInitialOperation" : "ap_enable_operation_347", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_347", "ToFinalSV" : "16", "ToAddress" : "Stage9_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp0_iter16_stage0", "ap_enable_state18_pp0_iter17_stage0"]}],
		"Port" : [
			{"Name" : "Stage9_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage8_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage8_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage8_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage8_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage8_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage8_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage8_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage8_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop16_fu_572.flow_control_loop_pipe_sequential_init_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop17_fu_596", "Parent" : "15", "Child" : ["119"],
		"CDFG" : "fft_exec_Pipeline_DFT_Loop17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_304", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_304", "FromFinalSV" : "16", "FromAddress" : "OUT_R_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_308", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_308", "ToFinalSV" : "16", "ToAddress" : "OUT_R_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_306", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_306", "FromFinalSV" : "16", "FromAddress" : "OUT_I_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_310", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_310", "ToFinalSV" : "16", "ToAddress" : "OUT_I_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_308", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_308", "FromFinalSV" : "16", "FromAddress" : "OUT_R_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_304", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_304", "ToFinalSV" : "16", "ToAddress" : "OUT_R_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_310", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_310", "FromFinalSV" : "16", "FromAddress" : "OUT_I_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_306", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_306", "ToFinalSV" : "16", "ToAddress" : "OUT_I_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_312", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_312", "FromFinalSV" : "16", "FromAddress" : "OUT_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_316", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_316", "ToFinalSV" : "16", "ToAddress" : "OUT_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_314", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_314", "FromFinalSV" : "16", "FromAddress" : "OUT_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_318", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_318", "ToFinalSV" : "16", "ToAddress" : "OUT_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_316", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_316", "FromFinalSV" : "16", "FromAddress" : "OUT_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_312", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_312", "ToFinalSV" : "16", "ToAddress" : "OUT_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_318", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_318", "FromFinalSV" : "16", "FromAddress" : "OUT_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_314", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_314", "ToFinalSV" : "16", "ToAddress" : "OUT_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_320", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_320", "FromFinalSV" : "16", "FromAddress" : "OUT_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_324", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_324", "ToFinalSV" : "16", "ToAddress" : "OUT_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_322", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_322", "FromFinalSV" : "16", "FromAddress" : "OUT_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_326", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_326", "ToFinalSV" : "16", "ToAddress" : "OUT_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_324", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_324", "FromFinalSV" : "16", "FromAddress" : "OUT_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_320", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_320", "ToFinalSV" : "16", "ToAddress" : "OUT_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_326", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_326", "FromFinalSV" : "16", "FromAddress" : "OUT_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_322", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_322", "ToFinalSV" : "16", "ToAddress" : "OUT_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_328", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_328", "FromFinalSV" : "16", "FromAddress" : "OUT_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_332", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_332", "ToFinalSV" : "16", "ToAddress" : "OUT_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_330", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_330", "FromFinalSV" : "16", "FromAddress" : "OUT_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_334", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_334", "ToFinalSV" : "16", "ToAddress" : "OUT_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_332", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_332", "FromFinalSV" : "16", "FromAddress" : "OUT_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_328", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_328", "ToFinalSV" : "16", "ToAddress" : "OUT_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_334", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_334", "FromFinalSV" : "16", "FromAddress" : "OUT_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_330", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_330", "ToFinalSV" : "16", "ToAddress" : "OUT_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:109:32)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "OUT_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.grp_fft_exec_Pipeline_DFT_Loop17_fu_596.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U569", "Parent" : "15"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U570", "Parent" : "15"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U571", "Parent" : "15"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U572", "Parent" : "15"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U573", "Parent" : "15"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U574", "Parent" : "15"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U575", "Parent" : "15"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U576", "Parent" : "15"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U577", "Parent" : "15"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U578", "Parent" : "15"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U579", "Parent" : "15"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U580", "Parent" : "15"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U581", "Parent" : "15"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U582", "Parent" : "15"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U583", "Parent" : "15"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U584", "Parent" : "15"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U585", "Parent" : "15"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U586", "Parent" : "15"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U587", "Parent" : "15"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U588", "Parent" : "15"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U589", "Parent" : "15"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fsub_32ns_32ns_32_5_full_dsp_1_U590", "Parent" : "15"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U591", "Parent" : "15"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fadd_32ns_32ns_32_5_full_dsp_1_U592", "Parent" : "15"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U593", "Parent" : "15"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U594", "Parent" : "15"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U595", "Parent" : "15"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U596", "Parent" : "15"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U597", "Parent" : "15"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U598", "Parent" : "15"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U599", "Parent" : "15"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U600", "Parent" : "15"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U601", "Parent" : "15"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U602", "Parent" : "15"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U603", "Parent" : "15"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U604", "Parent" : "15"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U605", "Parent" : "15"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U606", "Parent" : "15"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U607", "Parent" : "15"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_exec_fu_202.fmul_32ns_32ns_32_4_max_dsp_1_U608", "Parent" : "15"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_3_fu_220", "Parent" : "0", "Child" : ["161", "162"],
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
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_3_fu_220.mux_42_32_1_1_U655", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_3_fu_220.flow_control_loop_pipe_sequential_init_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_4_fu_231", "Parent" : "0", "Child" : ["164", "165"],
		"CDFG" : "fft_Pipeline_4",
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
			{"Name" : "output_0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_0_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln37", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_I_o_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_I_o_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_I_o_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_I_o_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_4_fu_231.mux_42_32_1_1_U663", "Parent" : "163"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_4_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "163"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_0_m_axi_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_1_m_axi_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_0_m_axi_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_1_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft {
		input_1 {Type I LastRead 1 FirstWrite -1}
		input_0 {Type I LastRead 1 FirstWrite -1}
		output_1 {Type O LastRead 14 FirstWrite 2}
		output_0 {Type O LastRead 14 FirstWrite 2}
		X_R {Type I LastRead 0 FirstWrite -1}
		X_I {Type I LastRead 0 FirstWrite -1}
		OUT_R {Type I LastRead 0 FirstWrite -1}
		OUT_I {Type I LastRead 0 FirstWrite -1}
		W_real {Type I LastRead -1 FirstWrite -1}
		W_imag {Type I LastRead -1 FirstWrite -1}}
	fft_Pipeline_1 {
		input_1 {Type I LastRead 1 FirstWrite -1}
		sext_ln33 {Type I LastRead 0 FirstWrite -1}
		X_R_i {Type O LastRead -1 FirstWrite 2}}
	fft_Pipeline_2 {
		input_0 {Type I LastRead 1 FirstWrite -1}
		sext_ln34 {Type I LastRead 0 FirstWrite -1}
		X_I_i {Type O LastRead -1 FirstWrite 2}}
	fft_exec {
		X_R {Type I LastRead 0 FirstWrite -1}
		X_I {Type I LastRead 0 FirstWrite -1}
		OUT_R_0 {Type O LastRead -1 FirstWrite 16}
		OUT_R_1 {Type O LastRead -1 FirstWrite 16}
		OUT_R_2 {Type O LastRead -1 FirstWrite 16}
		OUT_R_3 {Type O LastRead -1 FirstWrite 16}
		OUT_I_0 {Type O LastRead -1 FirstWrite 16}
		OUT_I_1 {Type O LastRead -1 FirstWrite 16}
		OUT_I_2 {Type O LastRead -1 FirstWrite 16}
		OUT_I_3 {Type O LastRead -1 FirstWrite 16}
		W_real {Type I LastRead -1 FirstWrite -1}
		W_imag {Type I LastRead -1 FirstWrite -1}}
	fft_exec_Pipeline_All_Loop {
		Stage0_I {Type O LastRead -1 FirstWrite 1}
		X_R {Type I LastRead 0 FirstWrite -1}
		Stage0_R {Type O LastRead -1 FirstWrite 1}
		Stage0_R_1 {Type O LastRead -1 FirstWrite 1}
		Stage0_R_2 {Type O LastRead -1 FirstWrite 1}
		Stage0_R_3 {Type O LastRead -1 FirstWrite 1}
		X_I {Type I LastRead 0 FirstWrite -1}
		Stage0_I_1 {Type O LastRead -1 FirstWrite 1}
		Stage0_I_2 {Type O LastRead -1 FirstWrite 1}
		Stage0_I_3 {Type O LastRead -1 FirstWrite 1}}
	fft_exec_Pipeline_DFT_Loop {
		Stage1_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage1_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage1_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage1_I {Type O LastRead -1 FirstWrite 16}
		Stage1_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage1_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage1_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage1_R {Type O LastRead -1 FirstWrite 16}
		Stage0_R {Type I LastRead 10 FirstWrite -1}
		Stage0_R_1 {Type I LastRead 1 FirstWrite -1}
		Stage0_R_2 {Type I LastRead 10 FirstWrite -1}
		Stage0_R_3 {Type I LastRead 1 FirstWrite -1}
		Stage0_I {Type I LastRead 10 FirstWrite -1}
		Stage0_I_1 {Type I LastRead 1 FirstWrite -1}
		Stage0_I_2 {Type I LastRead 10 FirstWrite -1}
		Stage0_I_3 {Type I LastRead 1 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop9 {
		Stage2_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage2_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage2_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage2_I {Type O LastRead -1 FirstWrite 16}
		Stage2_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage2_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage2_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage2_R {Type O LastRead -1 FirstWrite 16}
		Stage1_R {Type I LastRead 10 FirstWrite -1}
		Stage1_R_2 {Type I LastRead 1 FirstWrite -1}
		Stage1_I {Type I LastRead 10 FirstWrite -1}
		Stage1_I_2 {Type I LastRead 1 FirstWrite -1}
		Stage1_R_1 {Type I LastRead 10 FirstWrite -1}
		Stage1_R_3 {Type I LastRead 1 FirstWrite -1}
		Stage1_I_1 {Type I LastRead 10 FirstWrite -1}
		Stage1_I_3 {Type I LastRead 1 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop10 {
		Stage3_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage3_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage3_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage3_I {Type O LastRead -1 FirstWrite 16}
		Stage3_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage3_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage3_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage3_R {Type O LastRead -1 FirstWrite 16}
		Stage2_R {Type I LastRead 9 FirstWrite -1}
		Stage2_I {Type I LastRead 9 FirstWrite -1}
		Stage2_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage2_I_1 {Type I LastRead 9 FirstWrite -1}
		Stage2_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage2_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage2_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage2_I_3 {Type I LastRead 9 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop11 {
		Stage4_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage4_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage4_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage4_I {Type O LastRead -1 FirstWrite 16}
		Stage4_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage4_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage4_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage4_R {Type O LastRead -1 FirstWrite 16}
		Stage3_R {Type I LastRead 9 FirstWrite -1}
		Stage3_I {Type I LastRead 9 FirstWrite -1}
		Stage3_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage3_I_1 {Type I LastRead 9 FirstWrite -1}
		Stage3_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage3_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage3_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage3_I_3 {Type I LastRead 9 FirstWrite -1}
		W_real {Type I LastRead 1 FirstWrite -1}
		W_imag {Type I LastRead 1 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop12 {
		Stage5_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage5_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage5_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage5_I {Type O LastRead -1 FirstWrite 16}
		Stage5_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage5_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage5_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage5_R {Type O LastRead -1 FirstWrite 16}
		Stage4_R {Type I LastRead 9 FirstWrite -1}
		Stage4_I {Type I LastRead 9 FirstWrite -1}
		Stage4_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage4_I_1 {Type I LastRead 9 FirstWrite -1}
		Stage4_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage4_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage4_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage4_I_3 {Type I LastRead 9 FirstWrite -1}
		W_real {Type I LastRead 1 FirstWrite -1}
		W_imag {Type I LastRead 1 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop13 {
		Stage6_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage6_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage6_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage6_I {Type O LastRead -1 FirstWrite 16}
		Stage6_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage6_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage6_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage6_R {Type O LastRead -1 FirstWrite 16}
		Stage5_R {Type I LastRead 9 FirstWrite -1}
		Stage5_I {Type I LastRead 9 FirstWrite -1}
		Stage5_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage5_I_1 {Type I LastRead 9 FirstWrite -1}
		Stage5_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage5_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage5_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage5_I_3 {Type I LastRead 9 FirstWrite -1}
		W_real {Type I LastRead 1 FirstWrite -1}
		W_imag {Type I LastRead 1 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop14 {
		Stage7_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage7_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage7_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage7_I {Type O LastRead -1 FirstWrite 16}
		Stage7_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage7_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage7_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage7_R {Type O LastRead -1 FirstWrite 16}
		Stage6_R {Type I LastRead 9 FirstWrite -1}
		Stage6_I {Type I LastRead 9 FirstWrite -1}
		Stage6_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage6_I_1 {Type I LastRead 9 FirstWrite -1}
		Stage6_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage6_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage6_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage6_I_3 {Type I LastRead 9 FirstWrite -1}
		W_real {Type I LastRead 1 FirstWrite -1}
		W_imag {Type I LastRead 1 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop15 {
		Stage8_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage8_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage8_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage8_I {Type O LastRead -1 FirstWrite 16}
		Stage8_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage8_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage8_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage8_R {Type O LastRead -1 FirstWrite 16}
		Stage7_R {Type I LastRead 9 FirstWrite -1}
		Stage7_I {Type I LastRead 9 FirstWrite -1}
		Stage7_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage7_I_1 {Type I LastRead 9 FirstWrite -1}
		Stage7_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage7_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage7_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage7_I_3 {Type I LastRead 9 FirstWrite -1}
		W_real {Type I LastRead 1 FirstWrite -1}
		W_imag {Type I LastRead 1 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop16 {
		Stage9_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage9_I_2 {Type O LastRead -1 FirstWrite 16}
		Stage9_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage9_I {Type O LastRead -1 FirstWrite 16}
		Stage9_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage9_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage9_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage9_R {Type O LastRead -1 FirstWrite 16}
		Stage8_R {Type I LastRead 9 FirstWrite -1}
		Stage8_I {Type I LastRead 9 FirstWrite -1}
		Stage8_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage8_I_1 {Type I LastRead 9 FirstWrite -1}
		Stage8_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage8_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage8_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage8_I_3 {Type I LastRead 9 FirstWrite -1}
		W_real {Type I LastRead 1 FirstWrite -1}
		W_imag {Type I LastRead 1 FirstWrite -1}}
	fft_exec_Pipeline_DFT_Loop17 {
		OUT_I_3 {Type O LastRead -1 FirstWrite 16}
		OUT_I_2 {Type O LastRead -1 FirstWrite 16}
		OUT_I_1 {Type O LastRead -1 FirstWrite 16}
		OUT_I_0 {Type O LastRead -1 FirstWrite 16}
		OUT_R_3 {Type O LastRead -1 FirstWrite 16}
		OUT_R_2 {Type O LastRead -1 FirstWrite 16}
		OUT_R_1 {Type O LastRead -1 FirstWrite 16}
		OUT_R_0 {Type O LastRead -1 FirstWrite 16}
		Stage9_R {Type I LastRead 9 FirstWrite -1}
		Stage9_I {Type I LastRead 9 FirstWrite -1}
		Stage9_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage9_I_1 {Type I LastRead 9 FirstWrite -1}
		Stage9_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage9_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage9_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage9_I_3 {Type I LastRead 9 FirstWrite -1}
		W_real {Type I LastRead 1 FirstWrite -1}
		W_imag {Type I LastRead 1 FirstWrite -1}}
	fft_Pipeline_3 {
		output_1 {Type O LastRead -1 FirstWrite 2}
		sext_ln36 {Type I LastRead 0 FirstWrite -1}
		OUT_R_o_0 {Type I LastRead 0 FirstWrite -1}
		OUT_R_o_1 {Type I LastRead 0 FirstWrite -1}
		OUT_R_o_2 {Type I LastRead 0 FirstWrite -1}
		OUT_R_o_3 {Type I LastRead 0 FirstWrite -1}}
	fft_Pipeline_4 {
		output_0 {Type O LastRead -1 FirstWrite 2}
		sext_ln37 {Type I LastRead 0 FirstWrite -1}
		OUT_I_o_0 {Type I LastRead 0 FirstWrite -1}
		OUT_I_o_1 {Type I LastRead 0 FirstWrite -1}
		OUT_I_o_2 {Type I LastRead 0 FirstWrite -1}
		OUT_I_o_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4577", "Max" : "4577"}
	, {"Name" : "Interval", "Min" : "4578", "Max" : "4578"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_1 { m_axi {  { m_axi_input_1_AWVALID VALID 1 1 }  { m_axi_input_1_AWREADY READY 0 1 }  { m_axi_input_1_AWADDR ADDR 1 64 }  { m_axi_input_1_AWID ID 1 1 }  { m_axi_input_1_AWLEN SIZE 1 8 }  { m_axi_input_1_AWSIZE BURST 1 3 }  { m_axi_input_1_AWBURST LOCK 1 2 }  { m_axi_input_1_AWLOCK CACHE 1 2 }  { m_axi_input_1_AWCACHE PROT 1 4 }  { m_axi_input_1_AWPROT QOS 1 3 }  { m_axi_input_1_AWQOS REGION 1 4 }  { m_axi_input_1_AWREGION USER 1 4 }  { m_axi_input_1_AWUSER DATA 1 1 }  { m_axi_input_1_WVALID VALID 1 1 }  { m_axi_input_1_WREADY READY 0 1 }  { m_axi_input_1_WDATA FIFONUM 1 32 }  { m_axi_input_1_WSTRB STRB 1 4 }  { m_axi_input_1_WLAST LAST 1 1 }  { m_axi_input_1_WID ID 1 1 }  { m_axi_input_1_WUSER DATA 1 1 }  { m_axi_input_1_ARVALID VALID 1 1 }  { m_axi_input_1_ARREADY READY 0 1 }  { m_axi_input_1_ARADDR ADDR 1 64 }  { m_axi_input_1_ARID ID 1 1 }  { m_axi_input_1_ARLEN SIZE 1 8 }  { m_axi_input_1_ARSIZE BURST 1 3 }  { m_axi_input_1_ARBURST LOCK 1 2 }  { m_axi_input_1_ARLOCK CACHE 1 2 }  { m_axi_input_1_ARCACHE PROT 1 4 }  { m_axi_input_1_ARPROT QOS 1 3 }  { m_axi_input_1_ARQOS REGION 1 4 }  { m_axi_input_1_ARREGION USER 1 4 }  { m_axi_input_1_ARUSER DATA 1 1 }  { m_axi_input_1_RVALID VALID 0 1 }  { m_axi_input_1_RREADY READY 1 1 }  { m_axi_input_1_RDATA FIFONUM 0 32 }  { m_axi_input_1_RLAST LAST 0 1 }  { m_axi_input_1_RID ID 0 1 }  { m_axi_input_1_RUSER DATA 0 1 }  { m_axi_input_1_RRESP RESP 0 2 }  { m_axi_input_1_BVALID VALID 0 1 }  { m_axi_input_1_BREADY READY 1 1 }  { m_axi_input_1_BRESP RESP 0 2 }  { m_axi_input_1_BID ID 0 1 }  { m_axi_input_1_BUSER DATA 0 1 } } }
	input_0 { m_axi {  { m_axi_input_0_AWVALID VALID 1 1 }  { m_axi_input_0_AWREADY READY 0 1 }  { m_axi_input_0_AWADDR ADDR 1 64 }  { m_axi_input_0_AWID ID 1 1 }  { m_axi_input_0_AWLEN SIZE 1 8 }  { m_axi_input_0_AWSIZE BURST 1 3 }  { m_axi_input_0_AWBURST LOCK 1 2 }  { m_axi_input_0_AWLOCK CACHE 1 2 }  { m_axi_input_0_AWCACHE PROT 1 4 }  { m_axi_input_0_AWPROT QOS 1 3 }  { m_axi_input_0_AWQOS REGION 1 4 }  { m_axi_input_0_AWREGION USER 1 4 }  { m_axi_input_0_AWUSER DATA 1 1 }  { m_axi_input_0_WVALID VALID 1 1 }  { m_axi_input_0_WREADY READY 0 1 }  { m_axi_input_0_WDATA FIFONUM 1 32 }  { m_axi_input_0_WSTRB STRB 1 4 }  { m_axi_input_0_WLAST LAST 1 1 }  { m_axi_input_0_WID ID 1 1 }  { m_axi_input_0_WUSER DATA 1 1 }  { m_axi_input_0_ARVALID VALID 1 1 }  { m_axi_input_0_ARREADY READY 0 1 }  { m_axi_input_0_ARADDR ADDR 1 64 }  { m_axi_input_0_ARID ID 1 1 }  { m_axi_input_0_ARLEN SIZE 1 8 }  { m_axi_input_0_ARSIZE BURST 1 3 }  { m_axi_input_0_ARBURST LOCK 1 2 }  { m_axi_input_0_ARLOCK CACHE 1 2 }  { m_axi_input_0_ARCACHE PROT 1 4 }  { m_axi_input_0_ARPROT QOS 1 3 }  { m_axi_input_0_ARQOS REGION 1 4 }  { m_axi_input_0_ARREGION USER 1 4 }  { m_axi_input_0_ARUSER DATA 1 1 }  { m_axi_input_0_RVALID VALID 0 1 }  { m_axi_input_0_RREADY READY 1 1 }  { m_axi_input_0_RDATA FIFONUM 0 32 }  { m_axi_input_0_RLAST LAST 0 1 }  { m_axi_input_0_RID ID 0 1 }  { m_axi_input_0_RUSER DATA 0 1 }  { m_axi_input_0_RRESP RESP 0 2 }  { m_axi_input_0_BVALID VALID 0 1 }  { m_axi_input_0_BREADY READY 1 1 }  { m_axi_input_0_BRESP RESP 0 2 }  { m_axi_input_0_BID ID 0 1 }  { m_axi_input_0_BUSER DATA 0 1 } } }
	output_1 { m_axi {  { m_axi_output_1_AWVALID VALID 1 1 }  { m_axi_output_1_AWREADY READY 0 1 }  { m_axi_output_1_AWADDR ADDR 1 64 }  { m_axi_output_1_AWID ID 1 1 }  { m_axi_output_1_AWLEN SIZE 1 8 }  { m_axi_output_1_AWSIZE BURST 1 3 }  { m_axi_output_1_AWBURST LOCK 1 2 }  { m_axi_output_1_AWLOCK CACHE 1 2 }  { m_axi_output_1_AWCACHE PROT 1 4 }  { m_axi_output_1_AWPROT QOS 1 3 }  { m_axi_output_1_AWQOS REGION 1 4 }  { m_axi_output_1_AWREGION USER 1 4 }  { m_axi_output_1_AWUSER DATA 1 1 }  { m_axi_output_1_WVALID VALID 1 1 }  { m_axi_output_1_WREADY READY 0 1 }  { m_axi_output_1_WDATA FIFONUM 1 32 }  { m_axi_output_1_WSTRB STRB 1 4 }  { m_axi_output_1_WLAST LAST 1 1 }  { m_axi_output_1_WID ID 1 1 }  { m_axi_output_1_WUSER DATA 1 1 }  { m_axi_output_1_ARVALID VALID 1 1 }  { m_axi_output_1_ARREADY READY 0 1 }  { m_axi_output_1_ARADDR ADDR 1 64 }  { m_axi_output_1_ARID ID 1 1 }  { m_axi_output_1_ARLEN SIZE 1 8 }  { m_axi_output_1_ARSIZE BURST 1 3 }  { m_axi_output_1_ARBURST LOCK 1 2 }  { m_axi_output_1_ARLOCK CACHE 1 2 }  { m_axi_output_1_ARCACHE PROT 1 4 }  { m_axi_output_1_ARPROT QOS 1 3 }  { m_axi_output_1_ARQOS REGION 1 4 }  { m_axi_output_1_ARREGION USER 1 4 }  { m_axi_output_1_ARUSER DATA 1 1 }  { m_axi_output_1_RVALID VALID 0 1 }  { m_axi_output_1_RREADY READY 1 1 }  { m_axi_output_1_RDATA FIFONUM 0 32 }  { m_axi_output_1_RLAST LAST 0 1 }  { m_axi_output_1_RID ID 0 1 }  { m_axi_output_1_RUSER DATA 0 1 }  { m_axi_output_1_RRESP RESP 0 2 }  { m_axi_output_1_BVALID VALID 0 1 }  { m_axi_output_1_BREADY READY 1 1 }  { m_axi_output_1_BRESP RESP 0 2 }  { m_axi_output_1_BID ID 0 1 }  { m_axi_output_1_BUSER DATA 0 1 } } }
	output_0 { m_axi {  { m_axi_output_0_AWVALID VALID 1 1 }  { m_axi_output_0_AWREADY READY 0 1 }  { m_axi_output_0_AWADDR ADDR 1 64 }  { m_axi_output_0_AWID ID 1 1 }  { m_axi_output_0_AWLEN SIZE 1 8 }  { m_axi_output_0_AWSIZE BURST 1 3 }  { m_axi_output_0_AWBURST LOCK 1 2 }  { m_axi_output_0_AWLOCK CACHE 1 2 }  { m_axi_output_0_AWCACHE PROT 1 4 }  { m_axi_output_0_AWPROT QOS 1 3 }  { m_axi_output_0_AWQOS REGION 1 4 }  { m_axi_output_0_AWREGION USER 1 4 }  { m_axi_output_0_AWUSER DATA 1 1 }  { m_axi_output_0_WVALID VALID 1 1 }  { m_axi_output_0_WREADY READY 0 1 }  { m_axi_output_0_WDATA FIFONUM 1 32 }  { m_axi_output_0_WSTRB STRB 1 4 }  { m_axi_output_0_WLAST LAST 1 1 }  { m_axi_output_0_WID ID 1 1 }  { m_axi_output_0_WUSER DATA 1 1 }  { m_axi_output_0_ARVALID VALID 1 1 }  { m_axi_output_0_ARREADY READY 0 1 }  { m_axi_output_0_ARADDR ADDR 1 64 }  { m_axi_output_0_ARID ID 1 1 }  { m_axi_output_0_ARLEN SIZE 1 8 }  { m_axi_output_0_ARSIZE BURST 1 3 }  { m_axi_output_0_ARBURST LOCK 1 2 }  { m_axi_output_0_ARLOCK CACHE 1 2 }  { m_axi_output_0_ARCACHE PROT 1 4 }  { m_axi_output_0_ARPROT QOS 1 3 }  { m_axi_output_0_ARQOS REGION 1 4 }  { m_axi_output_0_ARREGION USER 1 4 }  { m_axi_output_0_ARUSER DATA 1 1 }  { m_axi_output_0_RVALID VALID 0 1 }  { m_axi_output_0_RREADY READY 1 1 }  { m_axi_output_0_RDATA FIFONUM 0 32 }  { m_axi_output_0_RLAST LAST 0 1 }  { m_axi_output_0_RID ID 0 1 }  { m_axi_output_0_RUSER DATA 0 1 }  { m_axi_output_0_RRESP RESP 0 2 }  { m_axi_output_0_BVALID VALID 0 1 }  { m_axi_output_0_BREADY READY 1 1 }  { m_axi_output_0_BRESP RESP 0 2 }  { m_axi_output_0_BID ID 0 1 }  { m_axi_output_0_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict input_1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict input_0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict output_1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict output_0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ input_1 1 }
	{ input_0 1 }
	{ output_1 1 }
	{ output_0 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ input_1 1 }
	{ input_0 1 }
	{ output_1 1 }
	{ output_0 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
