set moduleName axi_interfaces
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {axi_interfaces}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_o_0 int 16 regular {axi_s 1 volatile  { d_o_0 Data } }  }
	{ d_o_1 int 16 regular {axi_s 1 volatile  { d_o_1 Data } }  }
	{ d_o_2 int 16 regular {axi_s 1 volatile  { d_o_2 Data } }  }
	{ d_o_3 int 16 regular {axi_s 1 volatile  { d_o_3 Data } }  }
	{ d_o_4 int 16 regular {axi_s 1 volatile  { d_o_4 Data } }  }
	{ d_o_5 int 16 regular {axi_s 1 volatile  { d_o_5 Data } }  }
	{ d_o_6 int 16 regular {axi_s 1 volatile  { d_o_6 Data } }  }
	{ d_o_7 int 16 regular {axi_s 1 volatile  { d_o_7 Data } }  }
	{ d_i_0 int 16 regular {axi_s 0 volatile  { d_i_0 Data } }  }
	{ d_i_1 int 16 regular {axi_s 0 volatile  { d_i_1 Data } }  }
	{ d_i_2 int 16 regular {axi_s 0 volatile  { d_i_2 Data } }  }
	{ d_i_3 int 16 regular {axi_s 0 volatile  { d_i_3 Data } }  }
	{ d_i_4 int 16 regular {axi_s 0 volatile  { d_i_4 Data } }  }
	{ d_i_5 int 16 regular {axi_s 0 volatile  { d_i_5 Data } }  }
	{ d_i_6 int 16 regular {axi_s 0 volatile  { d_i_6 Data } }  }
	{ d_i_7 int 16 regular {axi_s 0 volatile  { d_i_7 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_o_0", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_1", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_2", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_3", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_4", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_5", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_6", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_7", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_i_0", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_1", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_2", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_3", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_4", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_5", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_6", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_7", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ d_i_0_TVALID sc_in sc_logic 1 invld 8 } 
	{ d_o_0_TREADY sc_in sc_logic 1 outacc 0 } 
	{ d_i_1_TVALID sc_in sc_logic 1 invld 9 } 
	{ d_o_1_TREADY sc_in sc_logic 1 outacc 1 } 
	{ d_i_2_TVALID sc_in sc_logic 1 invld 10 } 
	{ d_o_2_TREADY sc_in sc_logic 1 outacc 2 } 
	{ d_i_3_TVALID sc_in sc_logic 1 invld 11 } 
	{ d_o_3_TREADY sc_in sc_logic 1 outacc 3 } 
	{ d_i_4_TVALID sc_in sc_logic 1 invld 12 } 
	{ d_o_4_TREADY sc_in sc_logic 1 outacc 4 } 
	{ d_i_5_TVALID sc_in sc_logic 1 invld 13 } 
	{ d_o_5_TREADY sc_in sc_logic 1 outacc 5 } 
	{ d_i_6_TVALID sc_in sc_logic 1 invld 14 } 
	{ d_o_6_TREADY sc_in sc_logic 1 outacc 6 } 
	{ d_i_7_TVALID sc_in sc_logic 1 invld 15 } 
	{ d_o_7_TREADY sc_in sc_logic 1 outacc 7 } 
	{ d_o_0_TDATA sc_out sc_lv 16 signal 0 } 
	{ d_o_0_TVALID sc_out sc_logic 1 outvld 0 } 
	{ d_o_1_TDATA sc_out sc_lv 16 signal 1 } 
	{ d_o_1_TVALID sc_out sc_logic 1 outvld 1 } 
	{ d_o_2_TDATA sc_out sc_lv 16 signal 2 } 
	{ d_o_2_TVALID sc_out sc_logic 1 outvld 2 } 
	{ d_o_3_TDATA sc_out sc_lv 16 signal 3 } 
	{ d_o_3_TVALID sc_out sc_logic 1 outvld 3 } 
	{ d_o_4_TDATA sc_out sc_lv 16 signal 4 } 
	{ d_o_4_TVALID sc_out sc_logic 1 outvld 4 } 
	{ d_o_5_TDATA sc_out sc_lv 16 signal 5 } 
	{ d_o_5_TVALID sc_out sc_logic 1 outvld 5 } 
	{ d_o_6_TDATA sc_out sc_lv 16 signal 6 } 
	{ d_o_6_TVALID sc_out sc_logic 1 outvld 6 } 
	{ d_o_7_TDATA sc_out sc_lv 16 signal 7 } 
	{ d_o_7_TVALID sc_out sc_logic 1 outvld 7 } 
	{ d_i_0_TDATA sc_in sc_lv 16 signal 8 } 
	{ d_i_0_TREADY sc_out sc_logic 1 inacc 8 } 
	{ d_i_1_TDATA sc_in sc_lv 16 signal 9 } 
	{ d_i_1_TREADY sc_out sc_logic 1 inacc 9 } 
	{ d_i_2_TDATA sc_in sc_lv 16 signal 10 } 
	{ d_i_2_TREADY sc_out sc_logic 1 inacc 10 } 
	{ d_i_3_TDATA sc_in sc_lv 16 signal 11 } 
	{ d_i_3_TREADY sc_out sc_logic 1 inacc 11 } 
	{ d_i_4_TDATA sc_in sc_lv 16 signal 12 } 
	{ d_i_4_TREADY sc_out sc_logic 1 inacc 12 } 
	{ d_i_5_TDATA sc_in sc_lv 16 signal 13 } 
	{ d_i_5_TREADY sc_out sc_logic 1 inacc 13 } 
	{ d_i_6_TDATA sc_in sc_lv 16 signal 14 } 
	{ d_i_6_TREADY sc_out sc_logic 1 inacc 14 } 
	{ d_i_7_TDATA sc_in sc_lv 16 signal 15 } 
	{ d_i_7_TREADY sc_out sc_logic 1 inacc 15 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"axi_interfaces","role":"start","value":"0","valid_bit":"0"},{"name":"axi_interfaces","role":"continue","value":"0","valid_bit":"4"},{"name":"axi_interfaces","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"axi_interfaces","role":"start","value":"0","valid_bit":"0"},{"name":"axi_interfaces","role":"done","value":"0","valid_bit":"1"},{"name":"axi_interfaces","role":"idle","value":"0","valid_bit":"2"},{"name":"axi_interfaces","role":"ready","value":"0","valid_bit":"3"},{"name":"axi_interfaces","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "d_i_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_0", "role": "TVALID" }} , 
 	{ "name": "d_o_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_0", "role": "TREADY" }} , 
 	{ "name": "d_i_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_1", "role": "TVALID" }} , 
 	{ "name": "d_o_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_1", "role": "TREADY" }} , 
 	{ "name": "d_i_2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_2", "role": "TVALID" }} , 
 	{ "name": "d_o_2_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_2", "role": "TREADY" }} , 
 	{ "name": "d_i_3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_3", "role": "TVALID" }} , 
 	{ "name": "d_o_3_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_3", "role": "TREADY" }} , 
 	{ "name": "d_i_4_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_4", "role": "TVALID" }} , 
 	{ "name": "d_o_4_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_4", "role": "TREADY" }} , 
 	{ "name": "d_i_5_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_5", "role": "TVALID" }} , 
 	{ "name": "d_o_5_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_5", "role": "TREADY" }} , 
 	{ "name": "d_i_6_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_6", "role": "TVALID" }} , 
 	{ "name": "d_o_6_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_6", "role": "TREADY" }} , 
 	{ "name": "d_i_7_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_i_7", "role": "TVALID" }} , 
 	{ "name": "d_o_7_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "d_o_7", "role": "TREADY" }} , 
 	{ "name": "d_o_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_0", "role": "TDATA" }} , 
 	{ "name": "d_o_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_0", "role": "TVALID" }} , 
 	{ "name": "d_o_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_1", "role": "TDATA" }} , 
 	{ "name": "d_o_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_1", "role": "TVALID" }} , 
 	{ "name": "d_o_2_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_2", "role": "TDATA" }} , 
 	{ "name": "d_o_2_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_2", "role": "TVALID" }} , 
 	{ "name": "d_o_3_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_3", "role": "TDATA" }} , 
 	{ "name": "d_o_3_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_3", "role": "TVALID" }} , 
 	{ "name": "d_o_4_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_4", "role": "TDATA" }} , 
 	{ "name": "d_o_4_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_4", "role": "TVALID" }} , 
 	{ "name": "d_o_5_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_5", "role": "TDATA" }} , 
 	{ "name": "d_o_5_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_5", "role": "TVALID" }} , 
 	{ "name": "d_o_6_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_6", "role": "TDATA" }} , 
 	{ "name": "d_o_6_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_6", "role": "TVALID" }} , 
 	{ "name": "d_o_7_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_7", "role": "TDATA" }} , 
 	{ "name": "d_o_7_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_7", "role": "TVALID" }} , 
 	{ "name": "d_i_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_0", "role": "TDATA" }} , 
 	{ "name": "d_i_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_0", "role": "TREADY" }} , 
 	{ "name": "d_i_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_1", "role": "TDATA" }} , 
 	{ "name": "d_i_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_1", "role": "TREADY" }} , 
 	{ "name": "d_i_2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_2", "role": "TDATA" }} , 
 	{ "name": "d_i_2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_2", "role": "TREADY" }} , 
 	{ "name": "d_i_3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_3", "role": "TDATA" }} , 
 	{ "name": "d_i_3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_3", "role": "TREADY" }} , 
 	{ "name": "d_i_4_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_4", "role": "TDATA" }} , 
 	{ "name": "d_i_4_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_4", "role": "TREADY" }} , 
 	{ "name": "d_i_5_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_5", "role": "TDATA" }} , 
 	{ "name": "d_i_5_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_5", "role": "TREADY" }} , 
 	{ "name": "d_i_6_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_6", "role": "TDATA" }} , 
 	{ "name": "d_i_6_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_6", "role": "TREADY" }} , 
 	{ "name": "d_i_7_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_7", "role": "TDATA" }} , 
 	{ "name": "d_i_7_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "d_i_7", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "axi_interfaces",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_o_0", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_1", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_2", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_3", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_3_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_4", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_4_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_5", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_5_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_6", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_6_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_o_7", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_7_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_1", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_2", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_3", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_3_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_4", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_4_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_5", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_5_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_6", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_6_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i_7", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_7_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "acc_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "For_Loop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_o_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_o_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_o_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_o_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_o_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_o_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_o_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_o_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_i_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_i_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_i_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_i_3_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_i_4_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_i_5_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_i_6_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_d_i_7_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axi_interfaces {
		d_o_0 {Type O LastRead -1 FirstWrite 1}
		d_o_1 {Type O LastRead -1 FirstWrite 1}
		d_o_2 {Type O LastRead -1 FirstWrite 1}
		d_o_3 {Type O LastRead -1 FirstWrite 1}
		d_o_4 {Type O LastRead -1 FirstWrite 1}
		d_o_5 {Type O LastRead -1 FirstWrite 1}
		d_o_6 {Type O LastRead -1 FirstWrite 1}
		d_o_7 {Type O LastRead -1 FirstWrite 1}
		d_i_0 {Type I LastRead 1 FirstWrite -1}
		d_i_1 {Type I LastRead 1 FirstWrite -1}
		d_i_2 {Type I LastRead 1 FirstWrite -1}
		d_i_3 {Type I LastRead 1 FirstWrite -1}
		d_i_4 {Type I LastRead 1 FirstWrite -1}
		d_i_5 {Type I LastRead 1 FirstWrite -1}
		d_i_6 {Type I LastRead 1 FirstWrite -1}
		d_i_7 {Type I LastRead 1 FirstWrite -1}
		acc_0 {Type IO LastRead -1 FirstWrite -1}
		acc_1 {Type IO LastRead -1 FirstWrite -1}
		acc_2 {Type IO LastRead -1 FirstWrite -1}
		acc_3 {Type IO LastRead -1 FirstWrite -1}
		acc_4 {Type IO LastRead -1 FirstWrite -1}
		acc_5 {Type IO LastRead -1 FirstWrite -1}
		acc_6 {Type IO LastRead -1 FirstWrite -1}
		acc_7 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	d_o_0 { axis {  { d_o_0_TREADY out_acc 0 1 }  { d_o_0_TDATA out_data 1 16 }  { d_o_0_TVALID out_vld 1 1 } } }
	d_o_1 { axis {  { d_o_1_TREADY out_acc 0 1 }  { d_o_1_TDATA out_data 1 16 }  { d_o_1_TVALID out_vld 1 1 } } }
	d_o_2 { axis {  { d_o_2_TREADY out_acc 0 1 }  { d_o_2_TDATA out_data 1 16 }  { d_o_2_TVALID out_vld 1 1 } } }
	d_o_3 { axis {  { d_o_3_TREADY out_acc 0 1 }  { d_o_3_TDATA out_data 1 16 }  { d_o_3_TVALID out_vld 1 1 } } }
	d_o_4 { axis {  { d_o_4_TREADY out_acc 0 1 }  { d_o_4_TDATA out_data 1 16 }  { d_o_4_TVALID out_vld 1 1 } } }
	d_o_5 { axis {  { d_o_5_TREADY out_acc 0 1 }  { d_o_5_TDATA out_data 1 16 }  { d_o_5_TVALID out_vld 1 1 } } }
	d_o_6 { axis {  { d_o_6_TREADY out_acc 0 1 }  { d_o_6_TDATA out_data 1 16 }  { d_o_6_TVALID out_vld 1 1 } } }
	d_o_7 { axis {  { d_o_7_TREADY out_acc 0 1 }  { d_o_7_TDATA out_data 1 16 }  { d_o_7_TVALID out_vld 1 1 } } }
	d_i_0 { axis {  { d_i_0_TVALID in_vld 0 1 }  { d_i_0_TDATA in_data 0 16 }  { d_i_0_TREADY in_acc 1 1 } } }
	d_i_1 { axis {  { d_i_1_TVALID in_vld 0 1 }  { d_i_1_TDATA in_data 0 16 }  { d_i_1_TREADY in_acc 1 1 } } }
	d_i_2 { axis {  { d_i_2_TVALID in_vld 0 1 }  { d_i_2_TDATA in_data 0 16 }  { d_i_2_TREADY in_acc 1 1 } } }
	d_i_3 { axis {  { d_i_3_TVALID in_vld 0 1 }  { d_i_3_TDATA in_data 0 16 }  { d_i_3_TREADY in_acc 1 1 } } }
	d_i_4 { axis {  { d_i_4_TVALID in_vld 0 1 }  { d_i_4_TDATA in_data 0 16 }  { d_i_4_TREADY in_acc 1 1 } } }
	d_i_5 { axis {  { d_i_5_TVALID in_vld 0 1 }  { d_i_5_TDATA in_data 0 16 }  { d_i_5_TREADY in_acc 1 1 } } }
	d_i_6 { axis {  { d_i_6_TVALID in_vld 0 1 }  { d_i_6_TDATA in_data 0 16 }  { d_i_6_TREADY in_acc 1 1 } } }
	d_i_7 { axis {  { d_i_7_TVALID in_vld 0 1 }  { d_i_7_TDATA in_data 0 16 }  { d_i_7_TREADY in_acc 1 1 } } }
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
