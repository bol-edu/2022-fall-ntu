set moduleName array_io
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
set C_modelName {array_io}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_o_0 int 16 regular {pointer 1 volatile }  }
	{ d_o_1 int 16 regular {pointer 1 volatile }  }
	{ d_o_2 int 16 regular {pointer 1 volatile }  }
	{ d_o_3 int 16 regular {pointer 1 volatile }  }
	{ d_o_4 int 16 regular {pointer 1 volatile }  }
	{ d_o_5 int 16 regular {pointer 1 volatile }  }
	{ d_o_6 int 16 regular {pointer 1 volatile }  }
	{ d_o_7 int 16 regular {pointer 1 volatile }  }
	{ d_o_8 int 16 regular {pointer 1 volatile }  }
	{ d_o_9 int 16 regular {pointer 1 volatile }  }
	{ d_o_10 int 16 regular {pointer 1 volatile }  }
	{ d_o_11 int 16 regular {pointer 1 volatile }  }
	{ d_o_12 int 16 regular {pointer 1 volatile }  }
	{ d_o_13 int 16 regular {pointer 1 volatile }  }
	{ d_o_14 int 16 regular {pointer 1 volatile }  }
	{ d_o_15 int 16 regular {pointer 1 volatile }  }
	{ d_o_16 int 16 regular {pointer 1 volatile }  }
	{ d_o_17 int 16 regular {pointer 1 volatile }  }
	{ d_o_18 int 16 regular {pointer 1 volatile }  }
	{ d_o_19 int 16 regular {pointer 1 volatile }  }
	{ d_o_20 int 16 regular {pointer 1 volatile }  }
	{ d_o_21 int 16 regular {pointer 1 volatile }  }
	{ d_o_22 int 16 regular {pointer 1 volatile }  }
	{ d_o_23 int 16 regular {pointer 1 volatile }  }
	{ d_o_24 int 16 regular {pointer 1 volatile }  }
	{ d_o_25 int 16 regular {pointer 1 volatile }  }
	{ d_o_26 int 16 regular {pointer 1 volatile }  }
	{ d_o_27 int 16 regular {pointer 1 volatile }  }
	{ d_o_28 int 16 regular {pointer 1 volatile }  }
	{ d_o_29 int 16 regular {pointer 1 volatile }  }
	{ d_o_30 int 16 regular {pointer 1 volatile }  }
	{ d_o_31 int 16 regular {pointer 1 volatile }  }
	{ d_i_0 int 16 regular {pointer 0}  }
	{ d_i_1 int 16 regular {pointer 0}  }
	{ d_i_2 int 16 regular {pointer 0}  }
	{ d_i_3 int 16 regular {pointer 0}  }
	{ d_i_4 int 16 regular {pointer 0}  }
	{ d_i_5 int 16 regular {pointer 0}  }
	{ d_i_6 int 16 regular {pointer 0}  }
	{ d_i_7 int 16 regular {pointer 0}  }
	{ d_i_8 int 16 regular {pointer 0}  }
	{ d_i_9 int 16 regular {pointer 0}  }
	{ d_i_10 int 16 regular {pointer 0}  }
	{ d_i_11 int 16 regular {pointer 0}  }
	{ d_i_12 int 16 regular {pointer 0}  }
	{ d_i_13 int 16 regular {pointer 0}  }
	{ d_i_14 int 16 regular {pointer 0}  }
	{ d_i_15 int 16 regular {pointer 0}  }
	{ d_i_16 int 16 regular {pointer 0}  }
	{ d_i_17 int 16 regular {pointer 0}  }
	{ d_i_18 int 16 regular {pointer 0}  }
	{ d_i_19 int 16 regular {pointer 0}  }
	{ d_i_20 int 16 regular {pointer 0}  }
	{ d_i_21 int 16 regular {pointer 0}  }
	{ d_i_22 int 16 regular {pointer 0}  }
	{ d_i_23 int 16 regular {pointer 0}  }
	{ d_i_24 int 16 regular {pointer 0}  }
	{ d_i_25 int 16 regular {pointer 0}  }
	{ d_i_26 int 16 regular {pointer 0}  }
	{ d_i_27 int 16 regular {pointer 0}  }
	{ d_i_28 int 16 regular {pointer 0}  }
	{ d_i_29 int 16 regular {pointer 0}  }
	{ d_i_30 int 16 regular {pointer 0}  }
	{ d_i_31 int 16 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_o_0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_2", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_3", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_4", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_5", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_6", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_7", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_8", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_9", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_10", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_11", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_12", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_13", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_14", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_15", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_16", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_17", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_18", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_19", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_20", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_21", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_22", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_23", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_24", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_25", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_26", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_27", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_28", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_29", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_30", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_31", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_i_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_25", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_26", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_27", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_28", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_29", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_30", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "d_i_31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 102
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_o_0 sc_out sc_lv 16 signal 0 } 
	{ d_o_0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ d_o_1 sc_out sc_lv 16 signal 1 } 
	{ d_o_1_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ d_o_2 sc_out sc_lv 16 signal 2 } 
	{ d_o_2_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ d_o_3 sc_out sc_lv 16 signal 3 } 
	{ d_o_3_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ d_o_4 sc_out sc_lv 16 signal 4 } 
	{ d_o_4_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ d_o_5 sc_out sc_lv 16 signal 5 } 
	{ d_o_5_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ d_o_6 sc_out sc_lv 16 signal 6 } 
	{ d_o_6_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ d_o_7 sc_out sc_lv 16 signal 7 } 
	{ d_o_7_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ d_o_8 sc_out sc_lv 16 signal 8 } 
	{ d_o_8_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ d_o_9 sc_out sc_lv 16 signal 9 } 
	{ d_o_9_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ d_o_10 sc_out sc_lv 16 signal 10 } 
	{ d_o_10_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ d_o_11 sc_out sc_lv 16 signal 11 } 
	{ d_o_11_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ d_o_12 sc_out sc_lv 16 signal 12 } 
	{ d_o_12_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ d_o_13 sc_out sc_lv 16 signal 13 } 
	{ d_o_13_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ d_o_14 sc_out sc_lv 16 signal 14 } 
	{ d_o_14_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ d_o_15 sc_out sc_lv 16 signal 15 } 
	{ d_o_15_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ d_o_16 sc_out sc_lv 16 signal 16 } 
	{ d_o_16_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ d_o_17 sc_out sc_lv 16 signal 17 } 
	{ d_o_17_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ d_o_18 sc_out sc_lv 16 signal 18 } 
	{ d_o_18_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ d_o_19 sc_out sc_lv 16 signal 19 } 
	{ d_o_19_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ d_o_20 sc_out sc_lv 16 signal 20 } 
	{ d_o_20_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ d_o_21 sc_out sc_lv 16 signal 21 } 
	{ d_o_21_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ d_o_22 sc_out sc_lv 16 signal 22 } 
	{ d_o_22_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ d_o_23 sc_out sc_lv 16 signal 23 } 
	{ d_o_23_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ d_o_24 sc_out sc_lv 16 signal 24 } 
	{ d_o_24_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ d_o_25 sc_out sc_lv 16 signal 25 } 
	{ d_o_25_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ d_o_26 sc_out sc_lv 16 signal 26 } 
	{ d_o_26_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ d_o_27 sc_out sc_lv 16 signal 27 } 
	{ d_o_27_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ d_o_28 sc_out sc_lv 16 signal 28 } 
	{ d_o_28_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ d_o_29 sc_out sc_lv 16 signal 29 } 
	{ d_o_29_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ d_o_30 sc_out sc_lv 16 signal 30 } 
	{ d_o_30_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ d_o_31 sc_out sc_lv 16 signal 31 } 
	{ d_o_31_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ d_i_0 sc_in sc_lv 16 signal 32 } 
	{ d_i_1 sc_in sc_lv 16 signal 33 } 
	{ d_i_2 sc_in sc_lv 16 signal 34 } 
	{ d_i_3 sc_in sc_lv 16 signal 35 } 
	{ d_i_4 sc_in sc_lv 16 signal 36 } 
	{ d_i_5 sc_in sc_lv 16 signal 37 } 
	{ d_i_6 sc_in sc_lv 16 signal 38 } 
	{ d_i_7 sc_in sc_lv 16 signal 39 } 
	{ d_i_8 sc_in sc_lv 16 signal 40 } 
	{ d_i_9 sc_in sc_lv 16 signal 41 } 
	{ d_i_10 sc_in sc_lv 16 signal 42 } 
	{ d_i_11 sc_in sc_lv 16 signal 43 } 
	{ d_i_12 sc_in sc_lv 16 signal 44 } 
	{ d_i_13 sc_in sc_lv 16 signal 45 } 
	{ d_i_14 sc_in sc_lv 16 signal 46 } 
	{ d_i_15 sc_in sc_lv 16 signal 47 } 
	{ d_i_16 sc_in sc_lv 16 signal 48 } 
	{ d_i_17 sc_in sc_lv 16 signal 49 } 
	{ d_i_18 sc_in sc_lv 16 signal 50 } 
	{ d_i_19 sc_in sc_lv 16 signal 51 } 
	{ d_i_20 sc_in sc_lv 16 signal 52 } 
	{ d_i_21 sc_in sc_lv 16 signal 53 } 
	{ d_i_22 sc_in sc_lv 16 signal 54 } 
	{ d_i_23 sc_in sc_lv 16 signal 55 } 
	{ d_i_24 sc_in sc_lv 16 signal 56 } 
	{ d_i_25 sc_in sc_lv 16 signal 57 } 
	{ d_i_26 sc_in sc_lv 16 signal 58 } 
	{ d_i_27 sc_in sc_lv 16 signal 59 } 
	{ d_i_28 sc_in sc_lv 16 signal 60 } 
	{ d_i_29 sc_in sc_lv 16 signal 61 } 
	{ d_i_30 sc_in sc_lv 16 signal 62 } 
	{ d_i_31 sc_in sc_lv 16 signal 63 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_o_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_0", "role": "default" }} , 
 	{ "name": "d_o_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_0", "role": "ap_vld" }} , 
 	{ "name": "d_o_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_1", "role": "default" }} , 
 	{ "name": "d_o_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_1", "role": "ap_vld" }} , 
 	{ "name": "d_o_2", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_2", "role": "default" }} , 
 	{ "name": "d_o_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_2", "role": "ap_vld" }} , 
 	{ "name": "d_o_3", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_3", "role": "default" }} , 
 	{ "name": "d_o_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_3", "role": "ap_vld" }} , 
 	{ "name": "d_o_4", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_4", "role": "default" }} , 
 	{ "name": "d_o_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_4", "role": "ap_vld" }} , 
 	{ "name": "d_o_5", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_5", "role": "default" }} , 
 	{ "name": "d_o_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_5", "role": "ap_vld" }} , 
 	{ "name": "d_o_6", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_6", "role": "default" }} , 
 	{ "name": "d_o_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_6", "role": "ap_vld" }} , 
 	{ "name": "d_o_7", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_7", "role": "default" }} , 
 	{ "name": "d_o_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_7", "role": "ap_vld" }} , 
 	{ "name": "d_o_8", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_8", "role": "default" }} , 
 	{ "name": "d_o_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_8", "role": "ap_vld" }} , 
 	{ "name": "d_o_9", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_9", "role": "default" }} , 
 	{ "name": "d_o_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_9", "role": "ap_vld" }} , 
 	{ "name": "d_o_10", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_10", "role": "default" }} , 
 	{ "name": "d_o_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_10", "role": "ap_vld" }} , 
 	{ "name": "d_o_11", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_11", "role": "default" }} , 
 	{ "name": "d_o_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_11", "role": "ap_vld" }} , 
 	{ "name": "d_o_12", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_12", "role": "default" }} , 
 	{ "name": "d_o_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_12", "role": "ap_vld" }} , 
 	{ "name": "d_o_13", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_13", "role": "default" }} , 
 	{ "name": "d_o_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_13", "role": "ap_vld" }} , 
 	{ "name": "d_o_14", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_14", "role": "default" }} , 
 	{ "name": "d_o_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_14", "role": "ap_vld" }} , 
 	{ "name": "d_o_15", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_15", "role": "default" }} , 
 	{ "name": "d_o_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_15", "role": "ap_vld" }} , 
 	{ "name": "d_o_16", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_16", "role": "default" }} , 
 	{ "name": "d_o_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_16", "role": "ap_vld" }} , 
 	{ "name": "d_o_17", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_17", "role": "default" }} , 
 	{ "name": "d_o_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_17", "role": "ap_vld" }} , 
 	{ "name": "d_o_18", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_18", "role": "default" }} , 
 	{ "name": "d_o_18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_18", "role": "ap_vld" }} , 
 	{ "name": "d_o_19", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_19", "role": "default" }} , 
 	{ "name": "d_o_19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_19", "role": "ap_vld" }} , 
 	{ "name": "d_o_20", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_20", "role": "default" }} , 
 	{ "name": "d_o_20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_20", "role": "ap_vld" }} , 
 	{ "name": "d_o_21", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_21", "role": "default" }} , 
 	{ "name": "d_o_21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_21", "role": "ap_vld" }} , 
 	{ "name": "d_o_22", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_22", "role": "default" }} , 
 	{ "name": "d_o_22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_22", "role": "ap_vld" }} , 
 	{ "name": "d_o_23", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_23", "role": "default" }} , 
 	{ "name": "d_o_23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_23", "role": "ap_vld" }} , 
 	{ "name": "d_o_24", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_24", "role": "default" }} , 
 	{ "name": "d_o_24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_24", "role": "ap_vld" }} , 
 	{ "name": "d_o_25", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_25", "role": "default" }} , 
 	{ "name": "d_o_25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_25", "role": "ap_vld" }} , 
 	{ "name": "d_o_26", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_26", "role": "default" }} , 
 	{ "name": "d_o_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_26", "role": "ap_vld" }} , 
 	{ "name": "d_o_27", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_27", "role": "default" }} , 
 	{ "name": "d_o_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_27", "role": "ap_vld" }} , 
 	{ "name": "d_o_28", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_28", "role": "default" }} , 
 	{ "name": "d_o_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_28", "role": "ap_vld" }} , 
 	{ "name": "d_o_29", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_29", "role": "default" }} , 
 	{ "name": "d_o_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_29", "role": "ap_vld" }} , 
 	{ "name": "d_o_30", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_30", "role": "default" }} , 
 	{ "name": "d_o_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_30", "role": "ap_vld" }} , 
 	{ "name": "d_o_31", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_o_31", "role": "default" }} , 
 	{ "name": "d_o_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "d_o_31", "role": "ap_vld" }} , 
 	{ "name": "d_i_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_0", "role": "default" }} , 
 	{ "name": "d_i_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_1", "role": "default" }} , 
 	{ "name": "d_i_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_2", "role": "default" }} , 
 	{ "name": "d_i_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_3", "role": "default" }} , 
 	{ "name": "d_i_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_4", "role": "default" }} , 
 	{ "name": "d_i_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_5", "role": "default" }} , 
 	{ "name": "d_i_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_6", "role": "default" }} , 
 	{ "name": "d_i_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_7", "role": "default" }} , 
 	{ "name": "d_i_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_8", "role": "default" }} , 
 	{ "name": "d_i_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_9", "role": "default" }} , 
 	{ "name": "d_i_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_10", "role": "default" }} , 
 	{ "name": "d_i_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_11", "role": "default" }} , 
 	{ "name": "d_i_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_12", "role": "default" }} , 
 	{ "name": "d_i_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_13", "role": "default" }} , 
 	{ "name": "d_i_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_14", "role": "default" }} , 
 	{ "name": "d_i_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_15", "role": "default" }} , 
 	{ "name": "d_i_16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_16", "role": "default" }} , 
 	{ "name": "d_i_17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_17", "role": "default" }} , 
 	{ "name": "d_i_18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_18", "role": "default" }} , 
 	{ "name": "d_i_19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_19", "role": "default" }} , 
 	{ "name": "d_i_20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_20", "role": "default" }} , 
 	{ "name": "d_i_21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_21", "role": "default" }} , 
 	{ "name": "d_i_22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_22", "role": "default" }} , 
 	{ "name": "d_i_23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_23", "role": "default" }} , 
 	{ "name": "d_i_24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_24", "role": "default" }} , 
 	{ "name": "d_i_25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_25", "role": "default" }} , 
 	{ "name": "d_i_26", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_26", "role": "default" }} , 
 	{ "name": "d_i_27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_27", "role": "default" }} , 
 	{ "name": "d_i_28", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_28", "role": "default" }} , 
 	{ "name": "d_i_29", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_29", "role": "default" }} , 
 	{ "name": "d_i_30", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_30", "role": "default" }} , 
 	{ "name": "d_i_31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "d_i_31", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "array_io",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_o_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_o_31", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "d_i_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	array_io {
		d_o_0 {Type O LastRead -1 FirstWrite 0}
		d_o_1 {Type O LastRead -1 FirstWrite 0}
		d_o_2 {Type O LastRead -1 FirstWrite 0}
		d_o_3 {Type O LastRead -1 FirstWrite 0}
		d_o_4 {Type O LastRead -1 FirstWrite 0}
		d_o_5 {Type O LastRead -1 FirstWrite 0}
		d_o_6 {Type O LastRead -1 FirstWrite 0}
		d_o_7 {Type O LastRead -1 FirstWrite 0}
		d_o_8 {Type O LastRead -1 FirstWrite 0}
		d_o_9 {Type O LastRead -1 FirstWrite 0}
		d_o_10 {Type O LastRead -1 FirstWrite 0}
		d_o_11 {Type O LastRead -1 FirstWrite 0}
		d_o_12 {Type O LastRead -1 FirstWrite 0}
		d_o_13 {Type O LastRead -1 FirstWrite 0}
		d_o_14 {Type O LastRead -1 FirstWrite 0}
		d_o_15 {Type O LastRead -1 FirstWrite 0}
		d_o_16 {Type O LastRead -1 FirstWrite 0}
		d_o_17 {Type O LastRead -1 FirstWrite 0}
		d_o_18 {Type O LastRead -1 FirstWrite 0}
		d_o_19 {Type O LastRead -1 FirstWrite 0}
		d_o_20 {Type O LastRead -1 FirstWrite 0}
		d_o_21 {Type O LastRead -1 FirstWrite 0}
		d_o_22 {Type O LastRead -1 FirstWrite 0}
		d_o_23 {Type O LastRead -1 FirstWrite 0}
		d_o_24 {Type O LastRead -1 FirstWrite 1}
		d_o_25 {Type O LastRead -1 FirstWrite 1}
		d_o_26 {Type O LastRead -1 FirstWrite 1}
		d_o_27 {Type O LastRead -1 FirstWrite 1}
		d_o_28 {Type O LastRead -1 FirstWrite 1}
		d_o_29 {Type O LastRead -1 FirstWrite 1}
		d_o_30 {Type O LastRead -1 FirstWrite 1}
		d_o_31 {Type O LastRead -1 FirstWrite 1}
		d_i_0 {Type I LastRead 0 FirstWrite -1}
		d_i_1 {Type I LastRead 0 FirstWrite -1}
		d_i_2 {Type I LastRead 0 FirstWrite -1}
		d_i_3 {Type I LastRead 0 FirstWrite -1}
		d_i_4 {Type I LastRead 0 FirstWrite -1}
		d_i_5 {Type I LastRead 0 FirstWrite -1}
		d_i_6 {Type I LastRead 0 FirstWrite -1}
		d_i_7 {Type I LastRead 0 FirstWrite -1}
		d_i_8 {Type I LastRead 0 FirstWrite -1}
		d_i_9 {Type I LastRead 0 FirstWrite -1}
		d_i_10 {Type I LastRead 0 FirstWrite -1}
		d_i_11 {Type I LastRead 0 FirstWrite -1}
		d_i_12 {Type I LastRead 0 FirstWrite -1}
		d_i_13 {Type I LastRead 0 FirstWrite -1}
		d_i_14 {Type I LastRead 0 FirstWrite -1}
		d_i_15 {Type I LastRead 0 FirstWrite -1}
		d_i_16 {Type I LastRead 0 FirstWrite -1}
		d_i_17 {Type I LastRead 0 FirstWrite -1}
		d_i_18 {Type I LastRead 0 FirstWrite -1}
		d_i_19 {Type I LastRead 0 FirstWrite -1}
		d_i_20 {Type I LastRead 0 FirstWrite -1}
		d_i_21 {Type I LastRead 0 FirstWrite -1}
		d_i_22 {Type I LastRead 0 FirstWrite -1}
		d_i_23 {Type I LastRead 0 FirstWrite -1}
		d_i_24 {Type I LastRead 0 FirstWrite -1}
		d_i_25 {Type I LastRead 0 FirstWrite -1}
		d_i_26 {Type I LastRead 0 FirstWrite -1}
		d_i_27 {Type I LastRead 0 FirstWrite -1}
		d_i_28 {Type I LastRead 0 FirstWrite -1}
		d_i_29 {Type I LastRead 0 FirstWrite -1}
		d_i_30 {Type I LastRead 0 FirstWrite -1}
		d_i_31 {Type I LastRead 0 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_o_0 { ap_vld {  { d_o_0 out_data 1 16 }  { d_o_0_ap_vld out_vld 1 1 } } }
	d_o_1 { ap_vld {  { d_o_1 out_data 1 16 }  { d_o_1_ap_vld out_vld 1 1 } } }
	d_o_2 { ap_vld {  { d_o_2 out_data 1 16 }  { d_o_2_ap_vld out_vld 1 1 } } }
	d_o_3 { ap_vld {  { d_o_3 out_data 1 16 }  { d_o_3_ap_vld out_vld 1 1 } } }
	d_o_4 { ap_vld {  { d_o_4 out_data 1 16 }  { d_o_4_ap_vld out_vld 1 1 } } }
	d_o_5 { ap_vld {  { d_o_5 out_data 1 16 }  { d_o_5_ap_vld out_vld 1 1 } } }
	d_o_6 { ap_vld {  { d_o_6 out_data 1 16 }  { d_o_6_ap_vld out_vld 1 1 } } }
	d_o_7 { ap_vld {  { d_o_7 out_data 1 16 }  { d_o_7_ap_vld out_vld 1 1 } } }
	d_o_8 { ap_vld {  { d_o_8 out_data 1 16 }  { d_o_8_ap_vld out_vld 1 1 } } }
	d_o_9 { ap_vld {  { d_o_9 out_data 1 16 }  { d_o_9_ap_vld out_vld 1 1 } } }
	d_o_10 { ap_vld {  { d_o_10 out_data 1 16 }  { d_o_10_ap_vld out_vld 1 1 } } }
	d_o_11 { ap_vld {  { d_o_11 out_data 1 16 }  { d_o_11_ap_vld out_vld 1 1 } } }
	d_o_12 { ap_vld {  { d_o_12 out_data 1 16 }  { d_o_12_ap_vld out_vld 1 1 } } }
	d_o_13 { ap_vld {  { d_o_13 out_data 1 16 }  { d_o_13_ap_vld out_vld 1 1 } } }
	d_o_14 { ap_vld {  { d_o_14 out_data 1 16 }  { d_o_14_ap_vld out_vld 1 1 } } }
	d_o_15 { ap_vld {  { d_o_15 out_data 1 16 }  { d_o_15_ap_vld out_vld 1 1 } } }
	d_o_16 { ap_vld {  { d_o_16 out_data 1 16 }  { d_o_16_ap_vld out_vld 1 1 } } }
	d_o_17 { ap_vld {  { d_o_17 out_data 1 16 }  { d_o_17_ap_vld out_vld 1 1 } } }
	d_o_18 { ap_vld {  { d_o_18 out_data 1 16 }  { d_o_18_ap_vld out_vld 1 1 } } }
	d_o_19 { ap_vld {  { d_o_19 out_data 1 16 }  { d_o_19_ap_vld out_vld 1 1 } } }
	d_o_20 { ap_vld {  { d_o_20 out_data 1 16 }  { d_o_20_ap_vld out_vld 1 1 } } }
	d_o_21 { ap_vld {  { d_o_21 out_data 1 16 }  { d_o_21_ap_vld out_vld 1 1 } } }
	d_o_22 { ap_vld {  { d_o_22 out_data 1 16 }  { d_o_22_ap_vld out_vld 1 1 } } }
	d_o_23 { ap_vld {  { d_o_23 out_data 1 16 }  { d_o_23_ap_vld out_vld 1 1 } } }
	d_o_24 { ap_vld {  { d_o_24 out_data 1 16 }  { d_o_24_ap_vld out_vld 1 1 } } }
	d_o_25 { ap_vld {  { d_o_25 out_data 1 16 }  { d_o_25_ap_vld out_vld 1 1 } } }
	d_o_26 { ap_vld {  { d_o_26 out_data 1 16 }  { d_o_26_ap_vld out_vld 1 1 } } }
	d_o_27 { ap_vld {  { d_o_27 out_data 1 16 }  { d_o_27_ap_vld out_vld 1 1 } } }
	d_o_28 { ap_vld {  { d_o_28 out_data 1 16 }  { d_o_28_ap_vld out_vld 1 1 } } }
	d_o_29 { ap_vld {  { d_o_29 out_data 1 16 }  { d_o_29_ap_vld out_vld 1 1 } } }
	d_o_30 { ap_vld {  { d_o_30 out_data 1 16 }  { d_o_30_ap_vld out_vld 1 1 } } }
	d_o_31 { ap_vld {  { d_o_31 out_data 1 16 }  { d_o_31_ap_vld out_vld 1 1 } } }
	d_i_0 { ap_none {  { d_i_0 in_data 0 16 } } }
	d_i_1 { ap_none {  { d_i_1 in_data 0 16 } } }
	d_i_2 { ap_none {  { d_i_2 in_data 0 16 } } }
	d_i_3 { ap_none {  { d_i_3 in_data 0 16 } } }
	d_i_4 { ap_none {  { d_i_4 in_data 0 16 } } }
	d_i_5 { ap_none {  { d_i_5 in_data 0 16 } } }
	d_i_6 { ap_none {  { d_i_6 in_data 0 16 } } }
	d_i_7 { ap_none {  { d_i_7 in_data 0 16 } } }
	d_i_8 { ap_none {  { d_i_8 in_data 0 16 } } }
	d_i_9 { ap_none {  { d_i_9 in_data 0 16 } } }
	d_i_10 { ap_none {  { d_i_10 in_data 0 16 } } }
	d_i_11 { ap_none {  { d_i_11 in_data 0 16 } } }
	d_i_12 { ap_none {  { d_i_12 in_data 0 16 } } }
	d_i_13 { ap_none {  { d_i_13 in_data 0 16 } } }
	d_i_14 { ap_none {  { d_i_14 in_data 0 16 } } }
	d_i_15 { ap_none {  { d_i_15 in_data 0 16 } } }
	d_i_16 { ap_none {  { d_i_16 in_data 0 16 } } }
	d_i_17 { ap_none {  { d_i_17 in_data 0 16 } } }
	d_i_18 { ap_none {  { d_i_18 in_data 0 16 } } }
	d_i_19 { ap_none {  { d_i_19 in_data 0 16 } } }
	d_i_20 { ap_none {  { d_i_20 in_data 0 16 } } }
	d_i_21 { ap_none {  { d_i_21 in_data 0 16 } } }
	d_i_22 { ap_none {  { d_i_22 in_data 0 16 } } }
	d_i_23 { ap_none {  { d_i_23 in_data 0 16 } } }
	d_i_24 { ap_none {  { d_i_24 in_data 0 16 } } }
	d_i_25 { ap_none {  { d_i_25 in_data 0 16 } } }
	d_i_26 { ap_none {  { d_i_26 in_data 0 16 } } }
	d_i_27 { ap_none {  { d_i_27 in_data 0 16 } } }
	d_i_28 { ap_none {  { d_i_28 in_data 0 16 } } }
	d_i_29 { ap_none {  { d_i_29 in_data 0 16 } } }
	d_i_30 { ap_none {  { d_i_30 in_data 0 16 } } }
	d_i_31 { ap_none {  { d_i_31 in_data 0 16 } } }
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
