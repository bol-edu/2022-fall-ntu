set moduleName hdc_maxi
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
set C_modelName {hdc_maxi}
set C_modelType { void 0 }
set C_modelArgList {
	{ test_data_V_data_V int 32 regular {axi_s 0 volatile  { test_data Data } }  }
	{ test_data_V_keep_V int 4 regular {axi_s 0 volatile  { test_data Keep } }  }
	{ test_data_V_strb_V int 4 regular {axi_s 0 volatile  { test_data Strb } }  }
	{ test_data_V_user_V int 1 regular {axi_s 0 volatile  { test_data User } }  }
	{ test_data_V_last_V int 1 regular {axi_s 0 volatile  { test_data Last } }  }
	{ test_data_V_id_V int 1 regular {axi_s 0 volatile  { test_data ID } }  }
	{ test_data_V_dest_V int 1 regular {axi_s 0 volatile  { test_data Dest } }  }
	{ test_label_out_V_data_V int 32 regular {axi_s 1 volatile  { test_label_out Data } }  }
	{ test_label_out_V_keep_V int 4 regular {axi_s 1 volatile  { test_label_out Keep } }  }
	{ test_label_out_V_strb_V int 4 regular {axi_s 1 volatile  { test_label_out Strb } }  }
	{ test_label_out_V_user_V int 1 regular {axi_s 1 volatile  { test_label_out User } }  }
	{ test_label_out_V_last_V int 1 regular {axi_s 1 volatile  { test_label_out Last } }  }
	{ test_label_out_V_id_V int 1 regular {axi_s 1 volatile  { test_label_out ID } }  }
	{ test_label_out_V_dest_V int 1 regular {axi_s 1 volatile  { test_label_out Dest } }  }
	{ IM_V_data_V int 32 regular {axi_s 0 volatile  { IM Data } }  }
	{ IM_V_keep_V int 4 regular {axi_s 0 volatile  { IM Keep } }  }
	{ IM_V_strb_V int 4 regular {axi_s 0 volatile  { IM Strb } }  }
	{ IM_V_user_V int 1 regular {axi_s 0 volatile  { IM User } }  }
	{ IM_V_last_V int 1 regular {axi_s 0 volatile  { IM Last } }  }
	{ IM_V_id_V int 1 regular {axi_s 0 volatile  { IM ID } }  }
	{ IM_V_dest_V int 1 regular {axi_s 0 volatile  { IM Dest } }  }
	{ AM_out_V_data_V int 32 regular {axi_s 0 volatile  { AM_out Data } }  }
	{ AM_out_V_keep_V int 4 regular {axi_s 0 volatile  { AM_out Keep } }  }
	{ AM_out_V_strb_V int 4 regular {axi_s 0 volatile  { AM_out Strb } }  }
	{ AM_out_V_user_V int 1 regular {axi_s 0 volatile  { AM_out User } }  }
	{ AM_out_V_last_V int 1 regular {axi_s 0 volatile  { AM_out Last } }  }
	{ AM_out_V_id_V int 1 regular {axi_s 0 volatile  { AM_out ID } }  }
	{ AM_out_V_dest_V int 1 regular {axi_s 0 volatile  { AM_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "test_data_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "test_data_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "test_label_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "test_label_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "test_label_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "test_label_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "test_label_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "test_label_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "test_label_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IM_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "IM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AM_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ test_data_TDATA sc_in sc_lv 32 signal 0 } 
	{ test_data_TVALID sc_in sc_logic 1 invld 6 } 
	{ test_data_TREADY sc_out sc_logic 1 inacc 6 } 
	{ test_data_TKEEP sc_in sc_lv 4 signal 1 } 
	{ test_data_TSTRB sc_in sc_lv 4 signal 2 } 
	{ test_data_TUSER sc_in sc_lv 1 signal 3 } 
	{ test_data_TLAST sc_in sc_lv 1 signal 4 } 
	{ test_data_TID sc_in sc_lv 1 signal 5 } 
	{ test_data_TDEST sc_in sc_lv 1 signal 6 } 
	{ test_label_out_TDATA sc_out sc_lv 32 signal 7 } 
	{ test_label_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ test_label_out_TREADY sc_in sc_logic 1 outacc 13 } 
	{ test_label_out_TKEEP sc_out sc_lv 4 signal 8 } 
	{ test_label_out_TSTRB sc_out sc_lv 4 signal 9 } 
	{ test_label_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ test_label_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ test_label_out_TID sc_out sc_lv 1 signal 12 } 
	{ test_label_out_TDEST sc_out sc_lv 1 signal 13 } 
	{ IM_TDATA sc_in sc_lv 32 signal 14 } 
	{ IM_TVALID sc_in sc_logic 1 invld 20 } 
	{ IM_TREADY sc_out sc_logic 1 inacc 20 } 
	{ IM_TKEEP sc_in sc_lv 4 signal 15 } 
	{ IM_TSTRB sc_in sc_lv 4 signal 16 } 
	{ IM_TUSER sc_in sc_lv 1 signal 17 } 
	{ IM_TLAST sc_in sc_lv 1 signal 18 } 
	{ IM_TID sc_in sc_lv 1 signal 19 } 
	{ IM_TDEST sc_in sc_lv 1 signal 20 } 
	{ AM_out_TDATA sc_in sc_lv 32 signal 21 } 
	{ AM_out_TVALID sc_in sc_logic 1 invld 27 } 
	{ AM_out_TREADY sc_out sc_logic 1 inacc 27 } 
	{ AM_out_TKEEP sc_in sc_lv 4 signal 22 } 
	{ AM_out_TSTRB sc_in sc_lv 4 signal 23 } 
	{ AM_out_TUSER sc_in sc_lv 1 signal 24 } 
	{ AM_out_TLAST sc_in sc_lv 1 signal 25 } 
	{ AM_out_TID sc_in sc_lv 1 signal 26 } 
	{ AM_out_TDEST sc_in sc_lv 1 signal 27 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"hdc_maxi","role":"start","value":"0","valid_bit":"0"},{"name":"hdc_maxi","role":"continue","value":"0","valid_bit":"4"},{"name":"hdc_maxi","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"hdc_maxi","role":"start","value":"0","valid_bit":"0"},{"name":"hdc_maxi","role":"done","value":"0","valid_bit":"1"},{"name":"hdc_maxi","role":"idle","value":"0","valid_bit":"2"},{"name":"hdc_maxi","role":"ready","value":"0","valid_bit":"3"},{"name":"hdc_maxi","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "test_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "test_data_V_data_V", "role": "default" }} , 
 	{ "name": "test_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "test_data_V_dest_V", "role": "default" }} , 
 	{ "name": "test_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "test_data_V_dest_V", "role": "default" }} , 
 	{ "name": "test_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "test_data_V_keep_V", "role": "default" }} , 
 	{ "name": "test_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "test_data_V_strb_V", "role": "default" }} , 
 	{ "name": "test_data_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_V_user_V", "role": "default" }} , 
 	{ "name": "test_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_V_last_V", "role": "default" }} , 
 	{ "name": "test_data_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_V_id_V", "role": "default" }} , 
 	{ "name": "test_data_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_data_V_dest_V", "role": "default" }} , 
 	{ "name": "test_label_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "test_label_out_V_data_V", "role": "default" }} , 
 	{ "name": "test_label_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "test_label_out_V_dest_V", "role": "default" }} , 
 	{ "name": "test_label_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "test_label_out_V_dest_V", "role": "default" }} , 
 	{ "name": "test_label_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "test_label_out_V_keep_V", "role": "default" }} , 
 	{ "name": "test_label_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "test_label_out_V_strb_V", "role": "default" }} , 
 	{ "name": "test_label_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_label_out_V_user_V", "role": "default" }} , 
 	{ "name": "test_label_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_label_out_V_last_V", "role": "default" }} , 
 	{ "name": "test_label_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_label_out_V_id_V", "role": "default" }} , 
 	{ "name": "test_label_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "test_label_out_V_dest_V", "role": "default" }} , 
 	{ "name": "IM_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IM_V_data_V", "role": "default" }} , 
 	{ "name": "IM_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "IM_V_dest_V", "role": "default" }} , 
 	{ "name": "IM_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "IM_V_dest_V", "role": "default" }} , 
 	{ "name": "IM_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IM_V_keep_V", "role": "default" }} , 
 	{ "name": "IM_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IM_V_strb_V", "role": "default" }} , 
 	{ "name": "IM_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IM_V_user_V", "role": "default" }} , 
 	{ "name": "IM_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IM_V_last_V", "role": "default" }} , 
 	{ "name": "IM_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IM_V_id_V", "role": "default" }} , 
 	{ "name": "IM_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IM_V_dest_V", "role": "default" }} , 
 	{ "name": "AM_out_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AM_out_V_data_V", "role": "default" }} , 
 	{ "name": "AM_out_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "AM_out_V_dest_V", "role": "default" }} , 
 	{ "name": "AM_out_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "AM_out_V_dest_V", "role": "default" }} , 
 	{ "name": "AM_out_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AM_out_V_keep_V", "role": "default" }} , 
 	{ "name": "AM_out_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AM_out_V_strb_V", "role": "default" }} , 
 	{ "name": "AM_out_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AM_out_V_user_V", "role": "default" }} , 
 	{ "name": "AM_out_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AM_out_V_last_V", "role": "default" }} , 
 	{ "name": "AM_out_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AM_out_V_id_V", "role": "default" }} , 
 	{ "name": "AM_out_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AM_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7", "10", "12", "15", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "hdc_maxi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "88094", "EstimateLatencyMax" : "181627",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "test_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178", "Port" : "test_data_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "test_data_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178", "Port" : "test_data_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "test_data_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178", "Port" : "test_data_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "test_data_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178", "Port" : "test_data_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "test_data_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178", "Port" : "test_data_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "test_data_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178", "Port" : "test_data_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "test_data_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178", "Port" : "test_data_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "test_label_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "test_label_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "test_label_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "test_label_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "test_label_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "test_label_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "test_label_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "test_label_out_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "IM_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139", "Port" : "IM_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "IM_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139", "Port" : "IM_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "IM_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139", "Port" : "IM_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "IM_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139", "Port" : "IM_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "IM_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139", "Port" : "IM_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "IM_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139", "Port" : "IM_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "IM_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139", "Port" : "IM_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "AM_out_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159", "Port" : "AM_out_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "AM_out_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159", "Port" : "AM_out_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "AM_out_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159", "Port" : "AM_out_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "AM_out_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159", "Port" : "AM_out_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "AM_out_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159", "Port" : "AM_out_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "AM_out_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159", "Port" : "AM_out_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "AM_out_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159", "Port" : "AM_out_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_6_VITIS_LOOP_48_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "66", "FirstState" : "ap_ST_fsm_state56", "LastState" : ["ap_ST_fsm_state63"], "QuitState" : ["ap_ST_fsm_state56"], "PreState" : ["ap_ST_fsm_state55"], "PostState" : ["ap_ST_fsm_state64"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "hdc_maxi_label0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "66", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state66"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AM_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ngram_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.test_data_d_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_15_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1002", "EstimateLatencyMax" : "1002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "IM_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IM_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "IM_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "new_IM_1_02_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "new_IM_0_01_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139.mux_42_8192_1_1_U1", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_15_1_fu_1139.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5004", "EstimateLatencyMax" : "5004",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AM_out_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AM_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AM_out_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM_out_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AM", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_2_VITIS_LOOP_22_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159.mac_muladd_3ns_8ns_8ns_11_4_1_U12", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3_fu_1159.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_40_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "322", "EstimateLatencyMax" : "322",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "test_data_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "test_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "test_data_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "test_data_d", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_keep_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_strb_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_user_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_last_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_id_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp_dest_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_40_5_fu_1178.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10_fu_1203", "Parent" : "0", "Child" : ["13", "14"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1907", "EstimateLatencyMax" : "1907",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AM", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ngram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "label_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_9_VITIS_LOOP_70_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10_fu_1203.mac_muladd_3ns_8ns_7ns_11_4_1_U42", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10_fu_1203.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_51_8_fu_1210", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "hdc_maxi_Pipeline_VITIS_LOOP_51_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln55", "Type" : "None", "Direction" : "I"},
			{"Name" : "new_IM_1_02_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "new_IM_0_01_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln46_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "test_data_d", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_51_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hdc_maxi_Pipeline_VITIS_LOOP_51_8_fu_1210.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_data_V_data_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_data_V_keep_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_data_V_strb_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_data_V_user_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_data_V_last_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_data_V_id_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_data_V_dest_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_label_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_label_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_label_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_label_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_label_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_label_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_test_label_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_IM_V_data_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_IM_V_keep_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_IM_V_strb_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_IM_V_user_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_IM_V_last_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_IM_V_id_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_IM_V_dest_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_AM_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_AM_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_AM_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_AM_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_AM_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_AM_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_AM_out_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hdc_maxi {
		test_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_user_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_id_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_dest_V {Type I LastRead 0 FirstWrite -1}
		test_label_out_V_data_V {Type O LastRead -1 FirstWrite 57}
		test_label_out_V_keep_V {Type O LastRead -1 FirstWrite 57}
		test_label_out_V_strb_V {Type O LastRead -1 FirstWrite 57}
		test_label_out_V_user_V {Type O LastRead -1 FirstWrite 57}
		test_label_out_V_last_V {Type O LastRead -1 FirstWrite 57}
		test_label_out_V_id_V {Type O LastRead -1 FirstWrite 57}
		test_label_out_V_dest_V {Type O LastRead -1 FirstWrite 57}
		IM_V_data_V {Type I LastRead 0 FirstWrite -1}
		IM_V_keep_V {Type I LastRead 0 FirstWrite -1}
		IM_V_strb_V {Type I LastRead 0 FirstWrite -1}
		IM_V_user_V {Type I LastRead 0 FirstWrite -1}
		IM_V_last_V {Type I LastRead 0 FirstWrite -1}
		IM_V_id_V {Type I LastRead 0 FirstWrite -1}
		IM_V_dest_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_data_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_keep_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_strb_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_user_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_last_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_id_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_dest_V {Type I LastRead 0 FirstWrite -1}}
	hdc_maxi_Pipeline_VITIS_LOOP_15_1 {
		IM_V_data_V {Type I LastRead 0 FirstWrite -1}
		IM_V_keep_V {Type I LastRead 0 FirstWrite -1}
		IM_V_strb_V {Type I LastRead 0 FirstWrite -1}
		IM_V_user_V {Type I LastRead 0 FirstWrite -1}
		IM_V_last_V {Type I LastRead 0 FirstWrite -1}
		IM_V_id_V {Type I LastRead 0 FirstWrite -1}
		IM_V_dest_V {Type I LastRead 0 FirstWrite -1}
		new_IM_1_02_out {Type O LastRead -1 FirstWrite 0}
		new_IM_0_01_out {Type O LastRead -1 FirstWrite 0}}
	hdc_maxi_Pipeline_VITIS_LOOP_21_2_VITIS_LOOP_22_3 {
		AM_out_V_data_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_keep_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_strb_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_user_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_last_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_id_V {Type I LastRead 0 FirstWrite -1}
		AM_out_V_dest_V {Type I LastRead 0 FirstWrite -1}
		AM {Type O LastRead -1 FirstWrite 3}}
	hdc_maxi_Pipeline_VITIS_LOOP_40_5 {
		test_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_user_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_id_V {Type I LastRead 0 FirstWrite -1}
		test_data_V_dest_V {Type I LastRead 0 FirstWrite -1}
		test_data_d {Type O LastRead -1 FirstWrite 1}
		tmp_keep_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_strb_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_user_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_last_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_id_V_out {Type O LastRead -1 FirstWrite 0}
		tmp_dest_V_out {Type O LastRead -1 FirstWrite 0}}
	hdc_maxi_Pipeline_VITIS_LOOP_68_9_VITIS_LOOP_70_10 {
		AM {Type I LastRead 3 FirstWrite -1}
		ngram {Type I LastRead 2 FirstWrite -1}
		label_1_out {Type O LastRead -1 FirstWrite 5}}
	hdc_maxi_Pipeline_VITIS_LOOP_51_8 {
		add_ln55 {Type I LastRead 0 FirstWrite -1}
		new_IM_1_02_reload {Type I LastRead 0 FirstWrite -1}
		new_IM_0_01_reload {Type I LastRead 0 FirstWrite -1}
		select_ln46_1 {Type I LastRead 0 FirstWrite -1}
		test_data_d {Type I LastRead 0 FirstWrite -1}
		tmp_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "88094", "Max" : "181627"}
	, {"Name" : "Interval", "Min" : "88095", "Max" : "181628"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	test_data_V_data_V { axis {  { test_data_TDATA in_data 0 32 } } }
	test_data_V_keep_V { axis {  { test_data_TKEEP in_data 0 4 } } }
	test_data_V_strb_V { axis {  { test_data_TSTRB in_data 0 4 } } }
	test_data_V_user_V { axis {  { test_data_TUSER in_data 0 1 } } }
	test_data_V_last_V { axis {  { test_data_TLAST in_data 0 1 } } }
	test_data_V_id_V { axis {  { test_data_TID in_data 0 1 } } }
	test_data_V_dest_V { axis {  { test_data_TVALID in_vld 0 1 }  { test_data_TREADY in_acc 1 1 }  { test_data_TDEST in_data 0 1 } } }
	test_label_out_V_data_V { axis {  { test_label_out_TDATA out_data 1 32 } } }
	test_label_out_V_keep_V { axis {  { test_label_out_TKEEP out_data 1 4 } } }
	test_label_out_V_strb_V { axis {  { test_label_out_TSTRB out_data 1 4 } } }
	test_label_out_V_user_V { axis {  { test_label_out_TUSER out_data 1 1 } } }
	test_label_out_V_last_V { axis {  { test_label_out_TLAST out_data 1 1 } } }
	test_label_out_V_id_V { axis {  { test_label_out_TID out_data 1 1 } } }
	test_label_out_V_dest_V { axis {  { test_label_out_TVALID out_vld 1 1 }  { test_label_out_TREADY out_acc 0 1 }  { test_label_out_TDEST out_data 1 1 } } }
	IM_V_data_V { axis {  { IM_TDATA in_data 0 32 } } }
	IM_V_keep_V { axis {  { IM_TKEEP in_data 0 4 } } }
	IM_V_strb_V { axis {  { IM_TSTRB in_data 0 4 } } }
	IM_V_user_V { axis {  { IM_TUSER in_data 0 1 } } }
	IM_V_last_V { axis {  { IM_TLAST in_data 0 1 } } }
	IM_V_id_V { axis {  { IM_TID in_data 0 1 } } }
	IM_V_dest_V { axis {  { IM_TVALID in_vld 0 1 }  { IM_TREADY in_acc 1 1 }  { IM_TDEST in_data 0 1 } } }
	AM_out_V_data_V { axis {  { AM_out_TDATA in_data 0 32 } } }
	AM_out_V_keep_V { axis {  { AM_out_TKEEP in_data 0 4 } } }
	AM_out_V_strb_V { axis {  { AM_out_TSTRB in_data 0 4 } } }
	AM_out_V_user_V { axis {  { AM_out_TUSER in_data 0 1 } } }
	AM_out_V_last_V { axis {  { AM_out_TLAST in_data 0 1 } } }
	AM_out_V_id_V { axis {  { AM_out_TID in_data 0 1 } } }
	AM_out_V_dest_V { axis {  { AM_out_TVALID in_vld 0 1 }  { AM_out_TREADY in_acc 1 1 }  { AM_out_TDEST in_data 0 1 } } }
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
