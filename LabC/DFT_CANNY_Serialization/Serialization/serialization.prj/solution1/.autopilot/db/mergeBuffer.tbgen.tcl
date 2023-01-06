set moduleName mergeBuffer
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
set C_modelName {mergeBuffer}
set C_modelType { void 0 }
set C_modelArgList {
	{ dst int 8 regular {axi_s 1 volatile  { dst Data } }  }
	{ buf0_0 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf0_1 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf0_2 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf0_3 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf0_4 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf0_5 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf0_6 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf0_7 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ size0 int 16 regular  }
	{ val_buf0_0 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf0_1 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf0_2 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf0_3 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf0_4 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf0_5 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf0_6 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf0_7 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_size0 int 16 regular  }
	{ buf1_0 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_1 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_2 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_3 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_4 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_5 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_6 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf1_7 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ size1 int 16 regular  }
	{ val_buf1_0 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf1_1 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf1_2 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf1_3 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf1_4 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf1_5 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf1_6 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf1_7 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_size1 int 16 regular  }
	{ buf2_0 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf2_1 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf2_2 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf2_3 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf2_4 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf2_5 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf2_6 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf2_7 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ size2 int 16 regular  }
	{ val_buf2_0 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf2_1 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf2_2 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf2_3 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf2_4 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf2_5 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf2_6 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf2_7 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_size2 int 16 regular  }
	{ buf3_0 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf3_1 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf3_2 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf3_3 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf3_4 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf3_5 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf3_6 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf3_7 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ size3 int 16 regular  }
	{ val_buf3_0 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf3_1 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf3_2 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf3_3 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf3_4 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf3_5 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf3_6 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf3_7 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_size3 int 16 regular  }
	{ buf4_0 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf4_1 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf4_2 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf4_3 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf4_4 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf4_5 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf4_6 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf4_7 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ size4 int 16 regular  }
	{ val_buf4_0 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf4_1 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf4_2 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf4_3 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf4_4 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf4_5 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf4_6 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf4_7 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_size4 int 16 regular  }
	{ buf5_0 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf5_1 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf5_2 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf5_3 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf5_4 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf5_5 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf5_6 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ buf5_7 int 8 regular {array 1000 { 1 3 } 1 1 }  }
	{ size5 int 16 regular  }
	{ val_buf5_0 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf5_1 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf5_2 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf5_3 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf5_4 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf5_5 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf5_6 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_buf5_7 int 8 regular {array 4000 { 1 3 } 1 1 }  }
	{ val_size5 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dst", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf0_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf0_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf0_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf0_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf0_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf0_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf0_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf0_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "size0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf0_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf0_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf0_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf0_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf0_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf0_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf0_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf0_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_size0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "size1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf1_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf1_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf1_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf1_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf1_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf1_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf1_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf1_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_size1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "size2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf2_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf2_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf2_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf2_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_size2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf3_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf3_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf3_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf3_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf3_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf3_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf3_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf3_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "size3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf3_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf3_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf3_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf3_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf3_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf3_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf3_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf3_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_size3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf4_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf4_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf4_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf4_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf4_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf4_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf4_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf4_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "size4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf4_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf4_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf4_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf4_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf4_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf4_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf4_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf4_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_size4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf5_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf5_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf5_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf5_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf5_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf5_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf5_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf5_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "size5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf5_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf5_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf5_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf5_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf5_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf5_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf5_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_buf5_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "val_size5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 309
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dst_TDATA sc_out sc_lv 8 signal 0 } 
	{ dst_TVALID sc_out sc_logic 1 outvld 0 } 
	{ dst_TREADY sc_in sc_logic 1 outacc 0 } 
	{ buf0_0_address0 sc_out sc_lv 10 signal 1 } 
	{ buf0_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf0_0_q0 sc_in sc_lv 8 signal 1 } 
	{ buf0_1_address0 sc_out sc_lv 10 signal 2 } 
	{ buf0_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf0_1_q0 sc_in sc_lv 8 signal 2 } 
	{ buf0_2_address0 sc_out sc_lv 10 signal 3 } 
	{ buf0_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf0_2_q0 sc_in sc_lv 8 signal 3 } 
	{ buf0_3_address0 sc_out sc_lv 10 signal 4 } 
	{ buf0_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf0_3_q0 sc_in sc_lv 8 signal 4 } 
	{ buf0_4_address0 sc_out sc_lv 10 signal 5 } 
	{ buf0_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf0_4_q0 sc_in sc_lv 8 signal 5 } 
	{ buf0_5_address0 sc_out sc_lv 10 signal 6 } 
	{ buf0_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf0_5_q0 sc_in sc_lv 8 signal 6 } 
	{ buf0_6_address0 sc_out sc_lv 10 signal 7 } 
	{ buf0_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf0_6_q0 sc_in sc_lv 8 signal 7 } 
	{ buf0_7_address0 sc_out sc_lv 10 signal 8 } 
	{ buf0_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf0_7_q0 sc_in sc_lv 8 signal 8 } 
	{ size0 sc_in sc_lv 16 signal 9 } 
	{ val_buf0_0_address0 sc_out sc_lv 12 signal 10 } 
	{ val_buf0_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ val_buf0_0_q0 sc_in sc_lv 8 signal 10 } 
	{ val_buf0_1_address0 sc_out sc_lv 12 signal 11 } 
	{ val_buf0_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ val_buf0_1_q0 sc_in sc_lv 8 signal 11 } 
	{ val_buf0_2_address0 sc_out sc_lv 12 signal 12 } 
	{ val_buf0_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ val_buf0_2_q0 sc_in sc_lv 8 signal 12 } 
	{ val_buf0_3_address0 sc_out sc_lv 12 signal 13 } 
	{ val_buf0_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ val_buf0_3_q0 sc_in sc_lv 8 signal 13 } 
	{ val_buf0_4_address0 sc_out sc_lv 12 signal 14 } 
	{ val_buf0_4_ce0 sc_out sc_logic 1 signal 14 } 
	{ val_buf0_4_q0 sc_in sc_lv 8 signal 14 } 
	{ val_buf0_5_address0 sc_out sc_lv 12 signal 15 } 
	{ val_buf0_5_ce0 sc_out sc_logic 1 signal 15 } 
	{ val_buf0_5_q0 sc_in sc_lv 8 signal 15 } 
	{ val_buf0_6_address0 sc_out sc_lv 12 signal 16 } 
	{ val_buf0_6_ce0 sc_out sc_logic 1 signal 16 } 
	{ val_buf0_6_q0 sc_in sc_lv 8 signal 16 } 
	{ val_buf0_7_address0 sc_out sc_lv 12 signal 17 } 
	{ val_buf0_7_ce0 sc_out sc_logic 1 signal 17 } 
	{ val_buf0_7_q0 sc_in sc_lv 8 signal 17 } 
	{ val_size0 sc_in sc_lv 16 signal 18 } 
	{ buf1_0_address0 sc_out sc_lv 10 signal 19 } 
	{ buf1_0_ce0 sc_out sc_logic 1 signal 19 } 
	{ buf1_0_q0 sc_in sc_lv 8 signal 19 } 
	{ buf1_1_address0 sc_out sc_lv 10 signal 20 } 
	{ buf1_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ buf1_1_q0 sc_in sc_lv 8 signal 20 } 
	{ buf1_2_address0 sc_out sc_lv 10 signal 21 } 
	{ buf1_2_ce0 sc_out sc_logic 1 signal 21 } 
	{ buf1_2_q0 sc_in sc_lv 8 signal 21 } 
	{ buf1_3_address0 sc_out sc_lv 10 signal 22 } 
	{ buf1_3_ce0 sc_out sc_logic 1 signal 22 } 
	{ buf1_3_q0 sc_in sc_lv 8 signal 22 } 
	{ buf1_4_address0 sc_out sc_lv 10 signal 23 } 
	{ buf1_4_ce0 sc_out sc_logic 1 signal 23 } 
	{ buf1_4_q0 sc_in sc_lv 8 signal 23 } 
	{ buf1_5_address0 sc_out sc_lv 10 signal 24 } 
	{ buf1_5_ce0 sc_out sc_logic 1 signal 24 } 
	{ buf1_5_q0 sc_in sc_lv 8 signal 24 } 
	{ buf1_6_address0 sc_out sc_lv 10 signal 25 } 
	{ buf1_6_ce0 sc_out sc_logic 1 signal 25 } 
	{ buf1_6_q0 sc_in sc_lv 8 signal 25 } 
	{ buf1_7_address0 sc_out sc_lv 10 signal 26 } 
	{ buf1_7_ce0 sc_out sc_logic 1 signal 26 } 
	{ buf1_7_q0 sc_in sc_lv 8 signal 26 } 
	{ size1 sc_in sc_lv 16 signal 27 } 
	{ val_buf1_0_address0 sc_out sc_lv 12 signal 28 } 
	{ val_buf1_0_ce0 sc_out sc_logic 1 signal 28 } 
	{ val_buf1_0_q0 sc_in sc_lv 8 signal 28 } 
	{ val_buf1_1_address0 sc_out sc_lv 12 signal 29 } 
	{ val_buf1_1_ce0 sc_out sc_logic 1 signal 29 } 
	{ val_buf1_1_q0 sc_in sc_lv 8 signal 29 } 
	{ val_buf1_2_address0 sc_out sc_lv 12 signal 30 } 
	{ val_buf1_2_ce0 sc_out sc_logic 1 signal 30 } 
	{ val_buf1_2_q0 sc_in sc_lv 8 signal 30 } 
	{ val_buf1_3_address0 sc_out sc_lv 12 signal 31 } 
	{ val_buf1_3_ce0 sc_out sc_logic 1 signal 31 } 
	{ val_buf1_3_q0 sc_in sc_lv 8 signal 31 } 
	{ val_buf1_4_address0 sc_out sc_lv 12 signal 32 } 
	{ val_buf1_4_ce0 sc_out sc_logic 1 signal 32 } 
	{ val_buf1_4_q0 sc_in sc_lv 8 signal 32 } 
	{ val_buf1_5_address0 sc_out sc_lv 12 signal 33 } 
	{ val_buf1_5_ce0 sc_out sc_logic 1 signal 33 } 
	{ val_buf1_5_q0 sc_in sc_lv 8 signal 33 } 
	{ val_buf1_6_address0 sc_out sc_lv 12 signal 34 } 
	{ val_buf1_6_ce0 sc_out sc_logic 1 signal 34 } 
	{ val_buf1_6_q0 sc_in sc_lv 8 signal 34 } 
	{ val_buf1_7_address0 sc_out sc_lv 12 signal 35 } 
	{ val_buf1_7_ce0 sc_out sc_logic 1 signal 35 } 
	{ val_buf1_7_q0 sc_in sc_lv 8 signal 35 } 
	{ val_size1 sc_in sc_lv 16 signal 36 } 
	{ buf2_0_address0 sc_out sc_lv 10 signal 37 } 
	{ buf2_0_ce0 sc_out sc_logic 1 signal 37 } 
	{ buf2_0_q0 sc_in sc_lv 8 signal 37 } 
	{ buf2_1_address0 sc_out sc_lv 10 signal 38 } 
	{ buf2_1_ce0 sc_out sc_logic 1 signal 38 } 
	{ buf2_1_q0 sc_in sc_lv 8 signal 38 } 
	{ buf2_2_address0 sc_out sc_lv 10 signal 39 } 
	{ buf2_2_ce0 sc_out sc_logic 1 signal 39 } 
	{ buf2_2_q0 sc_in sc_lv 8 signal 39 } 
	{ buf2_3_address0 sc_out sc_lv 10 signal 40 } 
	{ buf2_3_ce0 sc_out sc_logic 1 signal 40 } 
	{ buf2_3_q0 sc_in sc_lv 8 signal 40 } 
	{ buf2_4_address0 sc_out sc_lv 10 signal 41 } 
	{ buf2_4_ce0 sc_out sc_logic 1 signal 41 } 
	{ buf2_4_q0 sc_in sc_lv 8 signal 41 } 
	{ buf2_5_address0 sc_out sc_lv 10 signal 42 } 
	{ buf2_5_ce0 sc_out sc_logic 1 signal 42 } 
	{ buf2_5_q0 sc_in sc_lv 8 signal 42 } 
	{ buf2_6_address0 sc_out sc_lv 10 signal 43 } 
	{ buf2_6_ce0 sc_out sc_logic 1 signal 43 } 
	{ buf2_6_q0 sc_in sc_lv 8 signal 43 } 
	{ buf2_7_address0 sc_out sc_lv 10 signal 44 } 
	{ buf2_7_ce0 sc_out sc_logic 1 signal 44 } 
	{ buf2_7_q0 sc_in sc_lv 8 signal 44 } 
	{ size2 sc_in sc_lv 16 signal 45 } 
	{ val_buf2_0_address0 sc_out sc_lv 12 signal 46 } 
	{ val_buf2_0_ce0 sc_out sc_logic 1 signal 46 } 
	{ val_buf2_0_q0 sc_in sc_lv 8 signal 46 } 
	{ val_buf2_1_address0 sc_out sc_lv 12 signal 47 } 
	{ val_buf2_1_ce0 sc_out sc_logic 1 signal 47 } 
	{ val_buf2_1_q0 sc_in sc_lv 8 signal 47 } 
	{ val_buf2_2_address0 sc_out sc_lv 12 signal 48 } 
	{ val_buf2_2_ce0 sc_out sc_logic 1 signal 48 } 
	{ val_buf2_2_q0 sc_in sc_lv 8 signal 48 } 
	{ val_buf2_3_address0 sc_out sc_lv 12 signal 49 } 
	{ val_buf2_3_ce0 sc_out sc_logic 1 signal 49 } 
	{ val_buf2_3_q0 sc_in sc_lv 8 signal 49 } 
	{ val_buf2_4_address0 sc_out sc_lv 12 signal 50 } 
	{ val_buf2_4_ce0 sc_out sc_logic 1 signal 50 } 
	{ val_buf2_4_q0 sc_in sc_lv 8 signal 50 } 
	{ val_buf2_5_address0 sc_out sc_lv 12 signal 51 } 
	{ val_buf2_5_ce0 sc_out sc_logic 1 signal 51 } 
	{ val_buf2_5_q0 sc_in sc_lv 8 signal 51 } 
	{ val_buf2_6_address0 sc_out sc_lv 12 signal 52 } 
	{ val_buf2_6_ce0 sc_out sc_logic 1 signal 52 } 
	{ val_buf2_6_q0 sc_in sc_lv 8 signal 52 } 
	{ val_buf2_7_address0 sc_out sc_lv 12 signal 53 } 
	{ val_buf2_7_ce0 sc_out sc_logic 1 signal 53 } 
	{ val_buf2_7_q0 sc_in sc_lv 8 signal 53 } 
	{ val_size2 sc_in sc_lv 16 signal 54 } 
	{ buf3_0_address0 sc_out sc_lv 10 signal 55 } 
	{ buf3_0_ce0 sc_out sc_logic 1 signal 55 } 
	{ buf3_0_q0 sc_in sc_lv 8 signal 55 } 
	{ buf3_1_address0 sc_out sc_lv 10 signal 56 } 
	{ buf3_1_ce0 sc_out sc_logic 1 signal 56 } 
	{ buf3_1_q0 sc_in sc_lv 8 signal 56 } 
	{ buf3_2_address0 sc_out sc_lv 10 signal 57 } 
	{ buf3_2_ce0 sc_out sc_logic 1 signal 57 } 
	{ buf3_2_q0 sc_in sc_lv 8 signal 57 } 
	{ buf3_3_address0 sc_out sc_lv 10 signal 58 } 
	{ buf3_3_ce0 sc_out sc_logic 1 signal 58 } 
	{ buf3_3_q0 sc_in sc_lv 8 signal 58 } 
	{ buf3_4_address0 sc_out sc_lv 10 signal 59 } 
	{ buf3_4_ce0 sc_out sc_logic 1 signal 59 } 
	{ buf3_4_q0 sc_in sc_lv 8 signal 59 } 
	{ buf3_5_address0 sc_out sc_lv 10 signal 60 } 
	{ buf3_5_ce0 sc_out sc_logic 1 signal 60 } 
	{ buf3_5_q0 sc_in sc_lv 8 signal 60 } 
	{ buf3_6_address0 sc_out sc_lv 10 signal 61 } 
	{ buf3_6_ce0 sc_out sc_logic 1 signal 61 } 
	{ buf3_6_q0 sc_in sc_lv 8 signal 61 } 
	{ buf3_7_address0 sc_out sc_lv 10 signal 62 } 
	{ buf3_7_ce0 sc_out sc_logic 1 signal 62 } 
	{ buf3_7_q0 sc_in sc_lv 8 signal 62 } 
	{ size3 sc_in sc_lv 16 signal 63 } 
	{ val_buf3_0_address0 sc_out sc_lv 12 signal 64 } 
	{ val_buf3_0_ce0 sc_out sc_logic 1 signal 64 } 
	{ val_buf3_0_q0 sc_in sc_lv 8 signal 64 } 
	{ val_buf3_1_address0 sc_out sc_lv 12 signal 65 } 
	{ val_buf3_1_ce0 sc_out sc_logic 1 signal 65 } 
	{ val_buf3_1_q0 sc_in sc_lv 8 signal 65 } 
	{ val_buf3_2_address0 sc_out sc_lv 12 signal 66 } 
	{ val_buf3_2_ce0 sc_out sc_logic 1 signal 66 } 
	{ val_buf3_2_q0 sc_in sc_lv 8 signal 66 } 
	{ val_buf3_3_address0 sc_out sc_lv 12 signal 67 } 
	{ val_buf3_3_ce0 sc_out sc_logic 1 signal 67 } 
	{ val_buf3_3_q0 sc_in sc_lv 8 signal 67 } 
	{ val_buf3_4_address0 sc_out sc_lv 12 signal 68 } 
	{ val_buf3_4_ce0 sc_out sc_logic 1 signal 68 } 
	{ val_buf3_4_q0 sc_in sc_lv 8 signal 68 } 
	{ val_buf3_5_address0 sc_out sc_lv 12 signal 69 } 
	{ val_buf3_5_ce0 sc_out sc_logic 1 signal 69 } 
	{ val_buf3_5_q0 sc_in sc_lv 8 signal 69 } 
	{ val_buf3_6_address0 sc_out sc_lv 12 signal 70 } 
	{ val_buf3_6_ce0 sc_out sc_logic 1 signal 70 } 
	{ val_buf3_6_q0 sc_in sc_lv 8 signal 70 } 
	{ val_buf3_7_address0 sc_out sc_lv 12 signal 71 } 
	{ val_buf3_7_ce0 sc_out sc_logic 1 signal 71 } 
	{ val_buf3_7_q0 sc_in sc_lv 8 signal 71 } 
	{ val_size3 sc_in sc_lv 16 signal 72 } 
	{ buf4_0_address0 sc_out sc_lv 10 signal 73 } 
	{ buf4_0_ce0 sc_out sc_logic 1 signal 73 } 
	{ buf4_0_q0 sc_in sc_lv 8 signal 73 } 
	{ buf4_1_address0 sc_out sc_lv 10 signal 74 } 
	{ buf4_1_ce0 sc_out sc_logic 1 signal 74 } 
	{ buf4_1_q0 sc_in sc_lv 8 signal 74 } 
	{ buf4_2_address0 sc_out sc_lv 10 signal 75 } 
	{ buf4_2_ce0 sc_out sc_logic 1 signal 75 } 
	{ buf4_2_q0 sc_in sc_lv 8 signal 75 } 
	{ buf4_3_address0 sc_out sc_lv 10 signal 76 } 
	{ buf4_3_ce0 sc_out sc_logic 1 signal 76 } 
	{ buf4_3_q0 sc_in sc_lv 8 signal 76 } 
	{ buf4_4_address0 sc_out sc_lv 10 signal 77 } 
	{ buf4_4_ce0 sc_out sc_logic 1 signal 77 } 
	{ buf4_4_q0 sc_in sc_lv 8 signal 77 } 
	{ buf4_5_address0 sc_out sc_lv 10 signal 78 } 
	{ buf4_5_ce0 sc_out sc_logic 1 signal 78 } 
	{ buf4_5_q0 sc_in sc_lv 8 signal 78 } 
	{ buf4_6_address0 sc_out sc_lv 10 signal 79 } 
	{ buf4_6_ce0 sc_out sc_logic 1 signal 79 } 
	{ buf4_6_q0 sc_in sc_lv 8 signal 79 } 
	{ buf4_7_address0 sc_out sc_lv 10 signal 80 } 
	{ buf4_7_ce0 sc_out sc_logic 1 signal 80 } 
	{ buf4_7_q0 sc_in sc_lv 8 signal 80 } 
	{ size4 sc_in sc_lv 16 signal 81 } 
	{ val_buf4_0_address0 sc_out sc_lv 12 signal 82 } 
	{ val_buf4_0_ce0 sc_out sc_logic 1 signal 82 } 
	{ val_buf4_0_q0 sc_in sc_lv 8 signal 82 } 
	{ val_buf4_1_address0 sc_out sc_lv 12 signal 83 } 
	{ val_buf4_1_ce0 sc_out sc_logic 1 signal 83 } 
	{ val_buf4_1_q0 sc_in sc_lv 8 signal 83 } 
	{ val_buf4_2_address0 sc_out sc_lv 12 signal 84 } 
	{ val_buf4_2_ce0 sc_out sc_logic 1 signal 84 } 
	{ val_buf4_2_q0 sc_in sc_lv 8 signal 84 } 
	{ val_buf4_3_address0 sc_out sc_lv 12 signal 85 } 
	{ val_buf4_3_ce0 sc_out sc_logic 1 signal 85 } 
	{ val_buf4_3_q0 sc_in sc_lv 8 signal 85 } 
	{ val_buf4_4_address0 sc_out sc_lv 12 signal 86 } 
	{ val_buf4_4_ce0 sc_out sc_logic 1 signal 86 } 
	{ val_buf4_4_q0 sc_in sc_lv 8 signal 86 } 
	{ val_buf4_5_address0 sc_out sc_lv 12 signal 87 } 
	{ val_buf4_5_ce0 sc_out sc_logic 1 signal 87 } 
	{ val_buf4_5_q0 sc_in sc_lv 8 signal 87 } 
	{ val_buf4_6_address0 sc_out sc_lv 12 signal 88 } 
	{ val_buf4_6_ce0 sc_out sc_logic 1 signal 88 } 
	{ val_buf4_6_q0 sc_in sc_lv 8 signal 88 } 
	{ val_buf4_7_address0 sc_out sc_lv 12 signal 89 } 
	{ val_buf4_7_ce0 sc_out sc_logic 1 signal 89 } 
	{ val_buf4_7_q0 sc_in sc_lv 8 signal 89 } 
	{ val_size4 sc_in sc_lv 16 signal 90 } 
	{ buf5_0_address0 sc_out sc_lv 10 signal 91 } 
	{ buf5_0_ce0 sc_out sc_logic 1 signal 91 } 
	{ buf5_0_q0 sc_in sc_lv 8 signal 91 } 
	{ buf5_1_address0 sc_out sc_lv 10 signal 92 } 
	{ buf5_1_ce0 sc_out sc_logic 1 signal 92 } 
	{ buf5_1_q0 sc_in sc_lv 8 signal 92 } 
	{ buf5_2_address0 sc_out sc_lv 10 signal 93 } 
	{ buf5_2_ce0 sc_out sc_logic 1 signal 93 } 
	{ buf5_2_q0 sc_in sc_lv 8 signal 93 } 
	{ buf5_3_address0 sc_out sc_lv 10 signal 94 } 
	{ buf5_3_ce0 sc_out sc_logic 1 signal 94 } 
	{ buf5_3_q0 sc_in sc_lv 8 signal 94 } 
	{ buf5_4_address0 sc_out sc_lv 10 signal 95 } 
	{ buf5_4_ce0 sc_out sc_logic 1 signal 95 } 
	{ buf5_4_q0 sc_in sc_lv 8 signal 95 } 
	{ buf5_5_address0 sc_out sc_lv 10 signal 96 } 
	{ buf5_5_ce0 sc_out sc_logic 1 signal 96 } 
	{ buf5_5_q0 sc_in sc_lv 8 signal 96 } 
	{ buf5_6_address0 sc_out sc_lv 10 signal 97 } 
	{ buf5_6_ce0 sc_out sc_logic 1 signal 97 } 
	{ buf5_6_q0 sc_in sc_lv 8 signal 97 } 
	{ buf5_7_address0 sc_out sc_lv 10 signal 98 } 
	{ buf5_7_ce0 sc_out sc_logic 1 signal 98 } 
	{ buf5_7_q0 sc_in sc_lv 8 signal 98 } 
	{ size5 sc_in sc_lv 16 signal 99 } 
	{ val_buf5_0_address0 sc_out sc_lv 12 signal 100 } 
	{ val_buf5_0_ce0 sc_out sc_logic 1 signal 100 } 
	{ val_buf5_0_q0 sc_in sc_lv 8 signal 100 } 
	{ val_buf5_1_address0 sc_out sc_lv 12 signal 101 } 
	{ val_buf5_1_ce0 sc_out sc_logic 1 signal 101 } 
	{ val_buf5_1_q0 sc_in sc_lv 8 signal 101 } 
	{ val_buf5_2_address0 sc_out sc_lv 12 signal 102 } 
	{ val_buf5_2_ce0 sc_out sc_logic 1 signal 102 } 
	{ val_buf5_2_q0 sc_in sc_lv 8 signal 102 } 
	{ val_buf5_3_address0 sc_out sc_lv 12 signal 103 } 
	{ val_buf5_3_ce0 sc_out sc_logic 1 signal 103 } 
	{ val_buf5_3_q0 sc_in sc_lv 8 signal 103 } 
	{ val_buf5_4_address0 sc_out sc_lv 12 signal 104 } 
	{ val_buf5_4_ce0 sc_out sc_logic 1 signal 104 } 
	{ val_buf5_4_q0 sc_in sc_lv 8 signal 104 } 
	{ val_buf5_5_address0 sc_out sc_lv 12 signal 105 } 
	{ val_buf5_5_ce0 sc_out sc_logic 1 signal 105 } 
	{ val_buf5_5_q0 sc_in sc_lv 8 signal 105 } 
	{ val_buf5_6_address0 sc_out sc_lv 12 signal 106 } 
	{ val_buf5_6_ce0 sc_out sc_logic 1 signal 106 } 
	{ val_buf5_6_q0 sc_in sc_lv 8 signal 106 } 
	{ val_buf5_7_address0 sc_out sc_lv 12 signal 107 } 
	{ val_buf5_7_ce0 sc_out sc_logic 1 signal 107 } 
	{ val_buf5_7_q0 sc_in sc_lv 8 signal 107 } 
	{ val_size5 sc_in sc_lv 16 signal 108 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "TDATA" }} , 
 	{ "name": "dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst", "role": "TVALID" }} , 
 	{ "name": "dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst", "role": "TREADY" }} , 
 	{ "name": "buf0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf0_0", "role": "address0" }} , 
 	{ "name": "buf0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_0", "role": "ce0" }} , 
 	{ "name": "buf0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_0", "role": "q0" }} , 
 	{ "name": "buf0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf0_1", "role": "address0" }} , 
 	{ "name": "buf0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_1", "role": "ce0" }} , 
 	{ "name": "buf0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_1", "role": "q0" }} , 
 	{ "name": "buf0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf0_2", "role": "address0" }} , 
 	{ "name": "buf0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_2", "role": "ce0" }} , 
 	{ "name": "buf0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_2", "role": "q0" }} , 
 	{ "name": "buf0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf0_3", "role": "address0" }} , 
 	{ "name": "buf0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_3", "role": "ce0" }} , 
 	{ "name": "buf0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_3", "role": "q0" }} , 
 	{ "name": "buf0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf0_4", "role": "address0" }} , 
 	{ "name": "buf0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_4", "role": "ce0" }} , 
 	{ "name": "buf0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_4", "role": "q0" }} , 
 	{ "name": "buf0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf0_5", "role": "address0" }} , 
 	{ "name": "buf0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_5", "role": "ce0" }} , 
 	{ "name": "buf0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_5", "role": "q0" }} , 
 	{ "name": "buf0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf0_6", "role": "address0" }} , 
 	{ "name": "buf0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_6", "role": "ce0" }} , 
 	{ "name": "buf0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_6", "role": "q0" }} , 
 	{ "name": "buf0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf0_7", "role": "address0" }} , 
 	{ "name": "buf0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_7", "role": "ce0" }} , 
 	{ "name": "buf0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_7", "role": "q0" }} , 
 	{ "name": "size0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "size0", "role": "default" }} , 
 	{ "name": "val_buf0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf0_0", "role": "address0" }} , 
 	{ "name": "val_buf0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf0_0", "role": "ce0" }} , 
 	{ "name": "val_buf0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf0_0", "role": "q0" }} , 
 	{ "name": "val_buf0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf0_1", "role": "address0" }} , 
 	{ "name": "val_buf0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf0_1", "role": "ce0" }} , 
 	{ "name": "val_buf0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf0_1", "role": "q0" }} , 
 	{ "name": "val_buf0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf0_2", "role": "address0" }} , 
 	{ "name": "val_buf0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf0_2", "role": "ce0" }} , 
 	{ "name": "val_buf0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf0_2", "role": "q0" }} , 
 	{ "name": "val_buf0_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf0_3", "role": "address0" }} , 
 	{ "name": "val_buf0_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf0_3", "role": "ce0" }} , 
 	{ "name": "val_buf0_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf0_3", "role": "q0" }} , 
 	{ "name": "val_buf0_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf0_4", "role": "address0" }} , 
 	{ "name": "val_buf0_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf0_4", "role": "ce0" }} , 
 	{ "name": "val_buf0_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf0_4", "role": "q0" }} , 
 	{ "name": "val_buf0_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf0_5", "role": "address0" }} , 
 	{ "name": "val_buf0_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf0_5", "role": "ce0" }} , 
 	{ "name": "val_buf0_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf0_5", "role": "q0" }} , 
 	{ "name": "val_buf0_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf0_6", "role": "address0" }} , 
 	{ "name": "val_buf0_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf0_6", "role": "ce0" }} , 
 	{ "name": "val_buf0_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf0_6", "role": "q0" }} , 
 	{ "name": "val_buf0_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf0_7", "role": "address0" }} , 
 	{ "name": "val_buf0_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf0_7", "role": "ce0" }} , 
 	{ "name": "val_buf0_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf0_7", "role": "q0" }} , 
 	{ "name": "val_size0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_size0", "role": "default" }} , 
 	{ "name": "buf1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_0", "role": "address0" }} , 
 	{ "name": "buf1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_0", "role": "ce0" }} , 
 	{ "name": "buf1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_0", "role": "q0" }} , 
 	{ "name": "buf1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_1", "role": "address0" }} , 
 	{ "name": "buf1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_1", "role": "ce0" }} , 
 	{ "name": "buf1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_1", "role": "q0" }} , 
 	{ "name": "buf1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_2", "role": "address0" }} , 
 	{ "name": "buf1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_2", "role": "ce0" }} , 
 	{ "name": "buf1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_2", "role": "q0" }} , 
 	{ "name": "buf1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_3", "role": "address0" }} , 
 	{ "name": "buf1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_3", "role": "ce0" }} , 
 	{ "name": "buf1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_3", "role": "q0" }} , 
 	{ "name": "buf1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_4", "role": "address0" }} , 
 	{ "name": "buf1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_4", "role": "ce0" }} , 
 	{ "name": "buf1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_4", "role": "q0" }} , 
 	{ "name": "buf1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_5", "role": "address0" }} , 
 	{ "name": "buf1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_5", "role": "ce0" }} , 
 	{ "name": "buf1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_5", "role": "q0" }} , 
 	{ "name": "buf1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_6", "role": "address0" }} , 
 	{ "name": "buf1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_6", "role": "ce0" }} , 
 	{ "name": "buf1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_6", "role": "q0" }} , 
 	{ "name": "buf1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf1_7", "role": "address0" }} , 
 	{ "name": "buf1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_7", "role": "ce0" }} , 
 	{ "name": "buf1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_7", "role": "q0" }} , 
 	{ "name": "size1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "size1", "role": "default" }} , 
 	{ "name": "val_buf1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf1_0", "role": "address0" }} , 
 	{ "name": "val_buf1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf1_0", "role": "ce0" }} , 
 	{ "name": "val_buf1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf1_0", "role": "q0" }} , 
 	{ "name": "val_buf1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf1_1", "role": "address0" }} , 
 	{ "name": "val_buf1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf1_1", "role": "ce0" }} , 
 	{ "name": "val_buf1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf1_1", "role": "q0" }} , 
 	{ "name": "val_buf1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf1_2", "role": "address0" }} , 
 	{ "name": "val_buf1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf1_2", "role": "ce0" }} , 
 	{ "name": "val_buf1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf1_2", "role": "q0" }} , 
 	{ "name": "val_buf1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf1_3", "role": "address0" }} , 
 	{ "name": "val_buf1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf1_3", "role": "ce0" }} , 
 	{ "name": "val_buf1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf1_3", "role": "q0" }} , 
 	{ "name": "val_buf1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf1_4", "role": "address0" }} , 
 	{ "name": "val_buf1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf1_4", "role": "ce0" }} , 
 	{ "name": "val_buf1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf1_4", "role": "q0" }} , 
 	{ "name": "val_buf1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf1_5", "role": "address0" }} , 
 	{ "name": "val_buf1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf1_5", "role": "ce0" }} , 
 	{ "name": "val_buf1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf1_5", "role": "q0" }} , 
 	{ "name": "val_buf1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf1_6", "role": "address0" }} , 
 	{ "name": "val_buf1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf1_6", "role": "ce0" }} , 
 	{ "name": "val_buf1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf1_6", "role": "q0" }} , 
 	{ "name": "val_buf1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf1_7", "role": "address0" }} , 
 	{ "name": "val_buf1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf1_7", "role": "ce0" }} , 
 	{ "name": "val_buf1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf1_7", "role": "q0" }} , 
 	{ "name": "val_size1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_size1", "role": "default" }} , 
 	{ "name": "buf2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf2_0", "role": "address0" }} , 
 	{ "name": "buf2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_0", "role": "ce0" }} , 
 	{ "name": "buf2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf2_0", "role": "q0" }} , 
 	{ "name": "buf2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf2_1", "role": "address0" }} , 
 	{ "name": "buf2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_1", "role": "ce0" }} , 
 	{ "name": "buf2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf2_1", "role": "q0" }} , 
 	{ "name": "buf2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf2_2", "role": "address0" }} , 
 	{ "name": "buf2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_2", "role": "ce0" }} , 
 	{ "name": "buf2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf2_2", "role": "q0" }} , 
 	{ "name": "buf2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf2_3", "role": "address0" }} , 
 	{ "name": "buf2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_3", "role": "ce0" }} , 
 	{ "name": "buf2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf2_3", "role": "q0" }} , 
 	{ "name": "buf2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf2_4", "role": "address0" }} , 
 	{ "name": "buf2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_4", "role": "ce0" }} , 
 	{ "name": "buf2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf2_4", "role": "q0" }} , 
 	{ "name": "buf2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf2_5", "role": "address0" }} , 
 	{ "name": "buf2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_5", "role": "ce0" }} , 
 	{ "name": "buf2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf2_5", "role": "q0" }} , 
 	{ "name": "buf2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf2_6", "role": "address0" }} , 
 	{ "name": "buf2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_6", "role": "ce0" }} , 
 	{ "name": "buf2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf2_6", "role": "q0" }} , 
 	{ "name": "buf2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf2_7", "role": "address0" }} , 
 	{ "name": "buf2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_7", "role": "ce0" }} , 
 	{ "name": "buf2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf2_7", "role": "q0" }} , 
 	{ "name": "size2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "size2", "role": "default" }} , 
 	{ "name": "val_buf2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf2_0", "role": "address0" }} , 
 	{ "name": "val_buf2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf2_0", "role": "ce0" }} , 
 	{ "name": "val_buf2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf2_0", "role": "q0" }} , 
 	{ "name": "val_buf2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf2_1", "role": "address0" }} , 
 	{ "name": "val_buf2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf2_1", "role": "ce0" }} , 
 	{ "name": "val_buf2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf2_1", "role": "q0" }} , 
 	{ "name": "val_buf2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf2_2", "role": "address0" }} , 
 	{ "name": "val_buf2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf2_2", "role": "ce0" }} , 
 	{ "name": "val_buf2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf2_2", "role": "q0" }} , 
 	{ "name": "val_buf2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf2_3", "role": "address0" }} , 
 	{ "name": "val_buf2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf2_3", "role": "ce0" }} , 
 	{ "name": "val_buf2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf2_3", "role": "q0" }} , 
 	{ "name": "val_buf2_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf2_4", "role": "address0" }} , 
 	{ "name": "val_buf2_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf2_4", "role": "ce0" }} , 
 	{ "name": "val_buf2_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf2_4", "role": "q0" }} , 
 	{ "name": "val_buf2_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf2_5", "role": "address0" }} , 
 	{ "name": "val_buf2_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf2_5", "role": "ce0" }} , 
 	{ "name": "val_buf2_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf2_5", "role": "q0" }} , 
 	{ "name": "val_buf2_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf2_6", "role": "address0" }} , 
 	{ "name": "val_buf2_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf2_6", "role": "ce0" }} , 
 	{ "name": "val_buf2_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf2_6", "role": "q0" }} , 
 	{ "name": "val_buf2_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf2_7", "role": "address0" }} , 
 	{ "name": "val_buf2_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf2_7", "role": "ce0" }} , 
 	{ "name": "val_buf2_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf2_7", "role": "q0" }} , 
 	{ "name": "val_size2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_size2", "role": "default" }} , 
 	{ "name": "buf3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf3_0", "role": "address0" }} , 
 	{ "name": "buf3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf3_0", "role": "ce0" }} , 
 	{ "name": "buf3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf3_0", "role": "q0" }} , 
 	{ "name": "buf3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf3_1", "role": "address0" }} , 
 	{ "name": "buf3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf3_1", "role": "ce0" }} , 
 	{ "name": "buf3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf3_1", "role": "q0" }} , 
 	{ "name": "buf3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf3_2", "role": "address0" }} , 
 	{ "name": "buf3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf3_2", "role": "ce0" }} , 
 	{ "name": "buf3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf3_2", "role": "q0" }} , 
 	{ "name": "buf3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf3_3", "role": "address0" }} , 
 	{ "name": "buf3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf3_3", "role": "ce0" }} , 
 	{ "name": "buf3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf3_3", "role": "q0" }} , 
 	{ "name": "buf3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf3_4", "role": "address0" }} , 
 	{ "name": "buf3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf3_4", "role": "ce0" }} , 
 	{ "name": "buf3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf3_4", "role": "q0" }} , 
 	{ "name": "buf3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf3_5", "role": "address0" }} , 
 	{ "name": "buf3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf3_5", "role": "ce0" }} , 
 	{ "name": "buf3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf3_5", "role": "q0" }} , 
 	{ "name": "buf3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf3_6", "role": "address0" }} , 
 	{ "name": "buf3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf3_6", "role": "ce0" }} , 
 	{ "name": "buf3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf3_6", "role": "q0" }} , 
 	{ "name": "buf3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf3_7", "role": "address0" }} , 
 	{ "name": "buf3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf3_7", "role": "ce0" }} , 
 	{ "name": "buf3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf3_7", "role": "q0" }} , 
 	{ "name": "size3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "size3", "role": "default" }} , 
 	{ "name": "val_buf3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf3_0", "role": "address0" }} , 
 	{ "name": "val_buf3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf3_0", "role": "ce0" }} , 
 	{ "name": "val_buf3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf3_0", "role": "q0" }} , 
 	{ "name": "val_buf3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf3_1", "role": "address0" }} , 
 	{ "name": "val_buf3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf3_1", "role": "ce0" }} , 
 	{ "name": "val_buf3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf3_1", "role": "q0" }} , 
 	{ "name": "val_buf3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf3_2", "role": "address0" }} , 
 	{ "name": "val_buf3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf3_2", "role": "ce0" }} , 
 	{ "name": "val_buf3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf3_2", "role": "q0" }} , 
 	{ "name": "val_buf3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf3_3", "role": "address0" }} , 
 	{ "name": "val_buf3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf3_3", "role": "ce0" }} , 
 	{ "name": "val_buf3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf3_3", "role": "q0" }} , 
 	{ "name": "val_buf3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf3_4", "role": "address0" }} , 
 	{ "name": "val_buf3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf3_4", "role": "ce0" }} , 
 	{ "name": "val_buf3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf3_4", "role": "q0" }} , 
 	{ "name": "val_buf3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf3_5", "role": "address0" }} , 
 	{ "name": "val_buf3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf3_5", "role": "ce0" }} , 
 	{ "name": "val_buf3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf3_5", "role": "q0" }} , 
 	{ "name": "val_buf3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf3_6", "role": "address0" }} , 
 	{ "name": "val_buf3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf3_6", "role": "ce0" }} , 
 	{ "name": "val_buf3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf3_6", "role": "q0" }} , 
 	{ "name": "val_buf3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf3_7", "role": "address0" }} , 
 	{ "name": "val_buf3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf3_7", "role": "ce0" }} , 
 	{ "name": "val_buf3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf3_7", "role": "q0" }} , 
 	{ "name": "val_size3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_size3", "role": "default" }} , 
 	{ "name": "buf4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf4_0", "role": "address0" }} , 
 	{ "name": "buf4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf4_0", "role": "ce0" }} , 
 	{ "name": "buf4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf4_0", "role": "q0" }} , 
 	{ "name": "buf4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf4_1", "role": "address0" }} , 
 	{ "name": "buf4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf4_1", "role": "ce0" }} , 
 	{ "name": "buf4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf4_1", "role": "q0" }} , 
 	{ "name": "buf4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf4_2", "role": "address0" }} , 
 	{ "name": "buf4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf4_2", "role": "ce0" }} , 
 	{ "name": "buf4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf4_2", "role": "q0" }} , 
 	{ "name": "buf4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf4_3", "role": "address0" }} , 
 	{ "name": "buf4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf4_3", "role": "ce0" }} , 
 	{ "name": "buf4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf4_3", "role": "q0" }} , 
 	{ "name": "buf4_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf4_4", "role": "address0" }} , 
 	{ "name": "buf4_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf4_4", "role": "ce0" }} , 
 	{ "name": "buf4_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf4_4", "role": "q0" }} , 
 	{ "name": "buf4_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf4_5", "role": "address0" }} , 
 	{ "name": "buf4_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf4_5", "role": "ce0" }} , 
 	{ "name": "buf4_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf4_5", "role": "q0" }} , 
 	{ "name": "buf4_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf4_6", "role": "address0" }} , 
 	{ "name": "buf4_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf4_6", "role": "ce0" }} , 
 	{ "name": "buf4_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf4_6", "role": "q0" }} , 
 	{ "name": "buf4_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf4_7", "role": "address0" }} , 
 	{ "name": "buf4_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf4_7", "role": "ce0" }} , 
 	{ "name": "buf4_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf4_7", "role": "q0" }} , 
 	{ "name": "size4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "size4", "role": "default" }} , 
 	{ "name": "val_buf4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf4_0", "role": "address0" }} , 
 	{ "name": "val_buf4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf4_0", "role": "ce0" }} , 
 	{ "name": "val_buf4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf4_0", "role": "q0" }} , 
 	{ "name": "val_buf4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf4_1", "role": "address0" }} , 
 	{ "name": "val_buf4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf4_1", "role": "ce0" }} , 
 	{ "name": "val_buf4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf4_1", "role": "q0" }} , 
 	{ "name": "val_buf4_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf4_2", "role": "address0" }} , 
 	{ "name": "val_buf4_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf4_2", "role": "ce0" }} , 
 	{ "name": "val_buf4_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf4_2", "role": "q0" }} , 
 	{ "name": "val_buf4_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf4_3", "role": "address0" }} , 
 	{ "name": "val_buf4_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf4_3", "role": "ce0" }} , 
 	{ "name": "val_buf4_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf4_3", "role": "q0" }} , 
 	{ "name": "val_buf4_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf4_4", "role": "address0" }} , 
 	{ "name": "val_buf4_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf4_4", "role": "ce0" }} , 
 	{ "name": "val_buf4_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf4_4", "role": "q0" }} , 
 	{ "name": "val_buf4_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf4_5", "role": "address0" }} , 
 	{ "name": "val_buf4_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf4_5", "role": "ce0" }} , 
 	{ "name": "val_buf4_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf4_5", "role": "q0" }} , 
 	{ "name": "val_buf4_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf4_6", "role": "address0" }} , 
 	{ "name": "val_buf4_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf4_6", "role": "ce0" }} , 
 	{ "name": "val_buf4_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf4_6", "role": "q0" }} , 
 	{ "name": "val_buf4_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf4_7", "role": "address0" }} , 
 	{ "name": "val_buf4_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf4_7", "role": "ce0" }} , 
 	{ "name": "val_buf4_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf4_7", "role": "q0" }} , 
 	{ "name": "val_size4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_size4", "role": "default" }} , 
 	{ "name": "buf5_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf5_0", "role": "address0" }} , 
 	{ "name": "buf5_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf5_0", "role": "ce0" }} , 
 	{ "name": "buf5_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf5_0", "role": "q0" }} , 
 	{ "name": "buf5_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf5_1", "role": "address0" }} , 
 	{ "name": "buf5_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf5_1", "role": "ce0" }} , 
 	{ "name": "buf5_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf5_1", "role": "q0" }} , 
 	{ "name": "buf5_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf5_2", "role": "address0" }} , 
 	{ "name": "buf5_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf5_2", "role": "ce0" }} , 
 	{ "name": "buf5_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf5_2", "role": "q0" }} , 
 	{ "name": "buf5_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf5_3", "role": "address0" }} , 
 	{ "name": "buf5_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf5_3", "role": "ce0" }} , 
 	{ "name": "buf5_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf5_3", "role": "q0" }} , 
 	{ "name": "buf5_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf5_4", "role": "address0" }} , 
 	{ "name": "buf5_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf5_4", "role": "ce0" }} , 
 	{ "name": "buf5_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf5_4", "role": "q0" }} , 
 	{ "name": "buf5_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf5_5", "role": "address0" }} , 
 	{ "name": "buf5_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf5_5", "role": "ce0" }} , 
 	{ "name": "buf5_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf5_5", "role": "q0" }} , 
 	{ "name": "buf5_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf5_6", "role": "address0" }} , 
 	{ "name": "buf5_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf5_6", "role": "ce0" }} , 
 	{ "name": "buf5_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf5_6", "role": "q0" }} , 
 	{ "name": "buf5_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf5_7", "role": "address0" }} , 
 	{ "name": "buf5_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf5_7", "role": "ce0" }} , 
 	{ "name": "buf5_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf5_7", "role": "q0" }} , 
 	{ "name": "size5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "size5", "role": "default" }} , 
 	{ "name": "val_buf5_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf5_0", "role": "address0" }} , 
 	{ "name": "val_buf5_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf5_0", "role": "ce0" }} , 
 	{ "name": "val_buf5_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf5_0", "role": "q0" }} , 
 	{ "name": "val_buf5_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf5_1", "role": "address0" }} , 
 	{ "name": "val_buf5_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf5_1", "role": "ce0" }} , 
 	{ "name": "val_buf5_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf5_1", "role": "q0" }} , 
 	{ "name": "val_buf5_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf5_2", "role": "address0" }} , 
 	{ "name": "val_buf5_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf5_2", "role": "ce0" }} , 
 	{ "name": "val_buf5_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf5_2", "role": "q0" }} , 
 	{ "name": "val_buf5_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf5_3", "role": "address0" }} , 
 	{ "name": "val_buf5_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf5_3", "role": "ce0" }} , 
 	{ "name": "val_buf5_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf5_3", "role": "q0" }} , 
 	{ "name": "val_buf5_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf5_4", "role": "address0" }} , 
 	{ "name": "val_buf5_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf5_4", "role": "ce0" }} , 
 	{ "name": "val_buf5_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf5_4", "role": "q0" }} , 
 	{ "name": "val_buf5_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf5_5", "role": "address0" }} , 
 	{ "name": "val_buf5_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf5_5", "role": "ce0" }} , 
 	{ "name": "val_buf5_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf5_5", "role": "q0" }} , 
 	{ "name": "val_buf5_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf5_6", "role": "address0" }} , 
 	{ "name": "val_buf5_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf5_6", "role": "ce0" }} , 
 	{ "name": "val_buf5_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf5_6", "role": "q0" }} , 
 	{ "name": "val_buf5_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_buf5_7", "role": "address0" }} , 
 	{ "name": "val_buf5_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_buf5_7", "role": "ce0" }} , 
 	{ "name": "val_buf5_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "val_buf5_7", "role": "q0" }} , 
 	{ "name": "val_size5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "val_size5", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "13", "16", "19", "22", "25", "28", "31", "34"],
		"CDFG" : "mergeBuffer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "dst", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "dst", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "dst", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "dst", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "dst", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "dst", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "dst", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "dst", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "dst", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "dst", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "dst", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "dst", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "buf0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "buf0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeBuffer_Pipeline_1_fu_332", "Port" : "buf0_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "size0", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_buf0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeBuffer_Pipeline_2_fu_356", "Port" : "val_buf0_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "val_size0", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_4", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_6", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "buf1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeBuffer_Pipeline_3_fu_379", "Port" : "buf1_7", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "size1", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_3", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_4", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_5", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_6", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_buf1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mergeBuffer_Pipeline_4_fu_402", "Port" : "val_buf1_7", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "val_size1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_4", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_5", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "buf2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_mergeBuffer_Pipeline_5_fu_425", "Port" : "buf2_7", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "size2", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_0", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_2", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_3", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_4", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_5", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_6", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_buf2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_mergeBuffer_Pipeline_6_fu_448", "Port" : "val_buf2_7", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "val_size2", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_0", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_1", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_2", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_3", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_4", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_5", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_6", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "buf3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mergeBuffer_Pipeline_7_fu_471", "Port" : "buf3_7", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "size3", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_0", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_2", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_3", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_4", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_5", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_6", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_buf3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mergeBuffer_Pipeline_8_fu_494", "Port" : "val_buf3_7", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "val_size3", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_0", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_2", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_3", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_4", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_5", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_6", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "buf4_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_mergeBuffer_Pipeline_9_fu_517", "Port" : "buf4_7", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "size4", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_0", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_1", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_2", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_3", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_4", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_5", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_6", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_buf4_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mergeBuffer_Pipeline_10_fu_540", "Port" : "val_buf4_7", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "val_size4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_0", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_2", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_3", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_4", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_5", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_6", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "buf5_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_mergeBuffer_Pipeline_11_fu_563", "Port" : "buf5_7", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "size5", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_buf5_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_0", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_1", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_2", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_3", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_4", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_5", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_6", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_buf5_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mergeBuffer_Pipeline_12_fu_586", "Port" : "val_buf5_7", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "val_size5", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_1_fu_332", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "mergeBuffer_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln96", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_1_fu_332.mux_83_8_1_1_U123", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_1_fu_332.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_2_fu_356", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "mergeBuffer_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln100", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_2_fu_356.mux_83_8_1_1_U135", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_2_fu_356.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_3_fu_379", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "mergeBuffer_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln104", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_3_fu_379.mux_83_8_1_1_U146", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_3_fu_379.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_4_fu_402", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "mergeBuffer_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln108", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_4_fu_402.mux_83_8_1_1_U157", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_4_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_5_fu_425", "Parent" : "0", "Child" : ["14", "15"],
		"CDFG" : "mergeBuffer_Pipeline_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln112", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_5_fu_425.mux_83_8_1_1_U168", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_5_fu_425.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_6_fu_448", "Parent" : "0", "Child" : ["17", "18"],
		"CDFG" : "mergeBuffer_Pipeline_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln116", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_6_fu_448.mux_83_8_1_1_U179", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_6_fu_448.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_7_fu_471", "Parent" : "0", "Child" : ["20", "21"],
		"CDFG" : "mergeBuffer_Pipeline_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln120", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_7_fu_471.mux_83_8_1_1_U190", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_7_fu_471.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_8_fu_494", "Parent" : "0", "Child" : ["23", "24"],
		"CDFG" : "mergeBuffer_Pipeline_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln124", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_8_fu_494.mux_83_8_1_1_U201", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_8_fu_494.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_9_fu_517", "Parent" : "0", "Child" : ["26", "27"],
		"CDFG" : "mergeBuffer_Pipeline_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf4_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln128", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_9_fu_517.mux_83_8_1_1_U212", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_9_fu_517.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_10_fu_540", "Parent" : "0", "Child" : ["29", "30"],
		"CDFG" : "mergeBuffer_Pipeline_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf4_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln132", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_10_fu_540.mux_83_8_1_1_U223", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_10_fu_540.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_11_fu_563", "Parent" : "0", "Child" : ["32", "33"],
		"CDFG" : "mergeBuffer_Pipeline_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf5_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln136", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_11_fu_563.mux_83_8_1_1_U234", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_11_fu_563.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_12_fu_586", "Parent" : "0", "Child" : ["35", "36"],
		"CDFG" : "mergeBuffer_Pipeline_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "val_buf5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "val_buf5_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln140", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_12_fu_586.mux_83_8_1_1_U245", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeBuffer_Pipeline_12_fu_586.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"}]}


set ArgLastReadFirstWriteLatency {
	mergeBuffer {
		dst {Type O LastRead -1 FirstWrite 2}
		buf0_0 {Type I LastRead 1 FirstWrite -1}
		buf0_1 {Type I LastRead 1 FirstWrite -1}
		buf0_2 {Type I LastRead 1 FirstWrite -1}
		buf0_3 {Type I LastRead 1 FirstWrite -1}
		buf0_4 {Type I LastRead 1 FirstWrite -1}
		buf0_5 {Type I LastRead 1 FirstWrite -1}
		buf0_6 {Type I LastRead 1 FirstWrite -1}
		buf0_7 {Type I LastRead 1 FirstWrite -1}
		size0 {Type I LastRead 0 FirstWrite -1}
		val_buf0_0 {Type I LastRead 1 FirstWrite -1}
		val_buf0_1 {Type I LastRead 1 FirstWrite -1}
		val_buf0_2 {Type I LastRead 1 FirstWrite -1}
		val_buf0_3 {Type I LastRead 1 FirstWrite -1}
		val_buf0_4 {Type I LastRead 1 FirstWrite -1}
		val_buf0_5 {Type I LastRead 1 FirstWrite -1}
		val_buf0_6 {Type I LastRead 1 FirstWrite -1}
		val_buf0_7 {Type I LastRead 1 FirstWrite -1}
		val_size0 {Type I LastRead 0 FirstWrite -1}
		buf1_0 {Type I LastRead 1 FirstWrite -1}
		buf1_1 {Type I LastRead 1 FirstWrite -1}
		buf1_2 {Type I LastRead 1 FirstWrite -1}
		buf1_3 {Type I LastRead 1 FirstWrite -1}
		buf1_4 {Type I LastRead 1 FirstWrite -1}
		buf1_5 {Type I LastRead 1 FirstWrite -1}
		buf1_6 {Type I LastRead 1 FirstWrite -1}
		buf1_7 {Type I LastRead 1 FirstWrite -1}
		size1 {Type I LastRead 0 FirstWrite -1}
		val_buf1_0 {Type I LastRead 1 FirstWrite -1}
		val_buf1_1 {Type I LastRead 1 FirstWrite -1}
		val_buf1_2 {Type I LastRead 1 FirstWrite -1}
		val_buf1_3 {Type I LastRead 1 FirstWrite -1}
		val_buf1_4 {Type I LastRead 1 FirstWrite -1}
		val_buf1_5 {Type I LastRead 1 FirstWrite -1}
		val_buf1_6 {Type I LastRead 1 FirstWrite -1}
		val_buf1_7 {Type I LastRead 1 FirstWrite -1}
		val_size1 {Type I LastRead 0 FirstWrite -1}
		buf2_0 {Type I LastRead 1 FirstWrite -1}
		buf2_1 {Type I LastRead 1 FirstWrite -1}
		buf2_2 {Type I LastRead 1 FirstWrite -1}
		buf2_3 {Type I LastRead 1 FirstWrite -1}
		buf2_4 {Type I LastRead 1 FirstWrite -1}
		buf2_5 {Type I LastRead 1 FirstWrite -1}
		buf2_6 {Type I LastRead 1 FirstWrite -1}
		buf2_7 {Type I LastRead 1 FirstWrite -1}
		size2 {Type I LastRead 0 FirstWrite -1}
		val_buf2_0 {Type I LastRead 1 FirstWrite -1}
		val_buf2_1 {Type I LastRead 1 FirstWrite -1}
		val_buf2_2 {Type I LastRead 1 FirstWrite -1}
		val_buf2_3 {Type I LastRead 1 FirstWrite -1}
		val_buf2_4 {Type I LastRead 1 FirstWrite -1}
		val_buf2_5 {Type I LastRead 1 FirstWrite -1}
		val_buf2_6 {Type I LastRead 1 FirstWrite -1}
		val_buf2_7 {Type I LastRead 1 FirstWrite -1}
		val_size2 {Type I LastRead 0 FirstWrite -1}
		buf3_0 {Type I LastRead 1 FirstWrite -1}
		buf3_1 {Type I LastRead 1 FirstWrite -1}
		buf3_2 {Type I LastRead 1 FirstWrite -1}
		buf3_3 {Type I LastRead 1 FirstWrite -1}
		buf3_4 {Type I LastRead 1 FirstWrite -1}
		buf3_5 {Type I LastRead 1 FirstWrite -1}
		buf3_6 {Type I LastRead 1 FirstWrite -1}
		buf3_7 {Type I LastRead 1 FirstWrite -1}
		size3 {Type I LastRead 0 FirstWrite -1}
		val_buf3_0 {Type I LastRead 1 FirstWrite -1}
		val_buf3_1 {Type I LastRead 1 FirstWrite -1}
		val_buf3_2 {Type I LastRead 1 FirstWrite -1}
		val_buf3_3 {Type I LastRead 1 FirstWrite -1}
		val_buf3_4 {Type I LastRead 1 FirstWrite -1}
		val_buf3_5 {Type I LastRead 1 FirstWrite -1}
		val_buf3_6 {Type I LastRead 1 FirstWrite -1}
		val_buf3_7 {Type I LastRead 1 FirstWrite -1}
		val_size3 {Type I LastRead 0 FirstWrite -1}
		buf4_0 {Type I LastRead 1 FirstWrite -1}
		buf4_1 {Type I LastRead 1 FirstWrite -1}
		buf4_2 {Type I LastRead 1 FirstWrite -1}
		buf4_3 {Type I LastRead 1 FirstWrite -1}
		buf4_4 {Type I LastRead 1 FirstWrite -1}
		buf4_5 {Type I LastRead 1 FirstWrite -1}
		buf4_6 {Type I LastRead 1 FirstWrite -1}
		buf4_7 {Type I LastRead 1 FirstWrite -1}
		size4 {Type I LastRead 0 FirstWrite -1}
		val_buf4_0 {Type I LastRead 1 FirstWrite -1}
		val_buf4_1 {Type I LastRead 1 FirstWrite -1}
		val_buf4_2 {Type I LastRead 1 FirstWrite -1}
		val_buf4_3 {Type I LastRead 1 FirstWrite -1}
		val_buf4_4 {Type I LastRead 1 FirstWrite -1}
		val_buf4_5 {Type I LastRead 1 FirstWrite -1}
		val_buf4_6 {Type I LastRead 1 FirstWrite -1}
		val_buf4_7 {Type I LastRead 1 FirstWrite -1}
		val_size4 {Type I LastRead 0 FirstWrite -1}
		buf5_0 {Type I LastRead 1 FirstWrite -1}
		buf5_1 {Type I LastRead 1 FirstWrite -1}
		buf5_2 {Type I LastRead 1 FirstWrite -1}
		buf5_3 {Type I LastRead 1 FirstWrite -1}
		buf5_4 {Type I LastRead 1 FirstWrite -1}
		buf5_5 {Type I LastRead 1 FirstWrite -1}
		buf5_6 {Type I LastRead 1 FirstWrite -1}
		buf5_7 {Type I LastRead 1 FirstWrite -1}
		size5 {Type I LastRead 0 FirstWrite -1}
		val_buf5_0 {Type I LastRead 1 FirstWrite -1}
		val_buf5_1 {Type I LastRead 1 FirstWrite -1}
		val_buf5_2 {Type I LastRead 1 FirstWrite -1}
		val_buf5_3 {Type I LastRead 1 FirstWrite -1}
		val_buf5_4 {Type I LastRead 1 FirstWrite -1}
		val_buf5_5 {Type I LastRead 1 FirstWrite -1}
		val_buf5_6 {Type I LastRead 1 FirstWrite -1}
		val_buf5_7 {Type I LastRead 1 FirstWrite -1}
		val_size5 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_1 {
		buf0_0 {Type I LastRead 1 FirstWrite -1}
		buf0_1 {Type I LastRead 1 FirstWrite -1}
		buf0_2 {Type I LastRead 1 FirstWrite -1}
		buf0_3 {Type I LastRead 1 FirstWrite -1}
		buf0_4 {Type I LastRead 1 FirstWrite -1}
		buf0_5 {Type I LastRead 1 FirstWrite -1}
		buf0_6 {Type I LastRead 1 FirstWrite -1}
		buf0_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln96 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_2 {
		val_buf0_0 {Type I LastRead 1 FirstWrite -1}
		val_buf0_1 {Type I LastRead 1 FirstWrite -1}
		val_buf0_2 {Type I LastRead 1 FirstWrite -1}
		val_buf0_3 {Type I LastRead 1 FirstWrite -1}
		val_buf0_4 {Type I LastRead 1 FirstWrite -1}
		val_buf0_5 {Type I LastRead 1 FirstWrite -1}
		val_buf0_6 {Type I LastRead 1 FirstWrite -1}
		val_buf0_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln100 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_3 {
		buf1_0 {Type I LastRead 1 FirstWrite -1}
		buf1_1 {Type I LastRead 1 FirstWrite -1}
		buf1_2 {Type I LastRead 1 FirstWrite -1}
		buf1_3 {Type I LastRead 1 FirstWrite -1}
		buf1_4 {Type I LastRead 1 FirstWrite -1}
		buf1_5 {Type I LastRead 1 FirstWrite -1}
		buf1_6 {Type I LastRead 1 FirstWrite -1}
		buf1_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln104 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_4 {
		val_buf1_0 {Type I LastRead 1 FirstWrite -1}
		val_buf1_1 {Type I LastRead 1 FirstWrite -1}
		val_buf1_2 {Type I LastRead 1 FirstWrite -1}
		val_buf1_3 {Type I LastRead 1 FirstWrite -1}
		val_buf1_4 {Type I LastRead 1 FirstWrite -1}
		val_buf1_5 {Type I LastRead 1 FirstWrite -1}
		val_buf1_6 {Type I LastRead 1 FirstWrite -1}
		val_buf1_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln108 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_5 {
		buf2_0 {Type I LastRead 1 FirstWrite -1}
		buf2_1 {Type I LastRead 1 FirstWrite -1}
		buf2_2 {Type I LastRead 1 FirstWrite -1}
		buf2_3 {Type I LastRead 1 FirstWrite -1}
		buf2_4 {Type I LastRead 1 FirstWrite -1}
		buf2_5 {Type I LastRead 1 FirstWrite -1}
		buf2_6 {Type I LastRead 1 FirstWrite -1}
		buf2_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln112 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_6 {
		val_buf2_0 {Type I LastRead 1 FirstWrite -1}
		val_buf2_1 {Type I LastRead 1 FirstWrite -1}
		val_buf2_2 {Type I LastRead 1 FirstWrite -1}
		val_buf2_3 {Type I LastRead 1 FirstWrite -1}
		val_buf2_4 {Type I LastRead 1 FirstWrite -1}
		val_buf2_5 {Type I LastRead 1 FirstWrite -1}
		val_buf2_6 {Type I LastRead 1 FirstWrite -1}
		val_buf2_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln116 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_7 {
		buf3_0 {Type I LastRead 1 FirstWrite -1}
		buf3_1 {Type I LastRead 1 FirstWrite -1}
		buf3_2 {Type I LastRead 1 FirstWrite -1}
		buf3_3 {Type I LastRead 1 FirstWrite -1}
		buf3_4 {Type I LastRead 1 FirstWrite -1}
		buf3_5 {Type I LastRead 1 FirstWrite -1}
		buf3_6 {Type I LastRead 1 FirstWrite -1}
		buf3_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln120 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_8 {
		val_buf3_0 {Type I LastRead 1 FirstWrite -1}
		val_buf3_1 {Type I LastRead 1 FirstWrite -1}
		val_buf3_2 {Type I LastRead 1 FirstWrite -1}
		val_buf3_3 {Type I LastRead 1 FirstWrite -1}
		val_buf3_4 {Type I LastRead 1 FirstWrite -1}
		val_buf3_5 {Type I LastRead 1 FirstWrite -1}
		val_buf3_6 {Type I LastRead 1 FirstWrite -1}
		val_buf3_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln124 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_9 {
		buf4_0 {Type I LastRead 1 FirstWrite -1}
		buf4_1 {Type I LastRead 1 FirstWrite -1}
		buf4_2 {Type I LastRead 1 FirstWrite -1}
		buf4_3 {Type I LastRead 1 FirstWrite -1}
		buf4_4 {Type I LastRead 1 FirstWrite -1}
		buf4_5 {Type I LastRead 1 FirstWrite -1}
		buf4_6 {Type I LastRead 1 FirstWrite -1}
		buf4_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln128 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_10 {
		val_buf4_0 {Type I LastRead 1 FirstWrite -1}
		val_buf4_1 {Type I LastRead 1 FirstWrite -1}
		val_buf4_2 {Type I LastRead 1 FirstWrite -1}
		val_buf4_3 {Type I LastRead 1 FirstWrite -1}
		val_buf4_4 {Type I LastRead 1 FirstWrite -1}
		val_buf4_5 {Type I LastRead 1 FirstWrite -1}
		val_buf4_6 {Type I LastRead 1 FirstWrite -1}
		val_buf4_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln132 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_11 {
		buf5_0 {Type I LastRead 1 FirstWrite -1}
		buf5_1 {Type I LastRead 1 FirstWrite -1}
		buf5_2 {Type I LastRead 1 FirstWrite -1}
		buf5_3 {Type I LastRead 1 FirstWrite -1}
		buf5_4 {Type I LastRead 1 FirstWrite -1}
		buf5_5 {Type I LastRead 1 FirstWrite -1}
		buf5_6 {Type I LastRead 1 FirstWrite -1}
		buf5_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln136 {Type I LastRead 0 FirstWrite -1}}
	mergeBuffer_Pipeline_12 {
		val_buf5_0 {Type I LastRead 1 FirstWrite -1}
		val_buf5_1 {Type I LastRead 1 FirstWrite -1}
		val_buf5_2 {Type I LastRead 1 FirstWrite -1}
		val_buf5_3 {Type I LastRead 1 FirstWrite -1}
		val_buf5_4 {Type I LastRead 1 FirstWrite -1}
		val_buf5_5 {Type I LastRead 1 FirstWrite -1}
		val_buf5_6 {Type I LastRead 1 FirstWrite -1}
		val_buf5_7 {Type I LastRead 1 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 2}
		sext_ln140 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dst { axis {  { dst_TDATA out_data 1 8 }  { dst_TVALID out_vld 1 1 }  { dst_TREADY out_acc 0 1 } } }
	buf0_0 { ap_memory {  { buf0_0_address0 mem_address 1 10 }  { buf0_0_ce0 mem_ce 1 1 }  { buf0_0_q0 mem_dout 0 8 } } }
	buf0_1 { ap_memory {  { buf0_1_address0 mem_address 1 10 }  { buf0_1_ce0 mem_ce 1 1 }  { buf0_1_q0 mem_dout 0 8 } } }
	buf0_2 { ap_memory {  { buf0_2_address0 mem_address 1 10 }  { buf0_2_ce0 mem_ce 1 1 }  { buf0_2_q0 mem_dout 0 8 } } }
	buf0_3 { ap_memory {  { buf0_3_address0 mem_address 1 10 }  { buf0_3_ce0 mem_ce 1 1 }  { buf0_3_q0 mem_dout 0 8 } } }
	buf0_4 { ap_memory {  { buf0_4_address0 mem_address 1 10 }  { buf0_4_ce0 mem_ce 1 1 }  { buf0_4_q0 mem_dout 0 8 } } }
	buf0_5 { ap_memory {  { buf0_5_address0 mem_address 1 10 }  { buf0_5_ce0 mem_ce 1 1 }  { buf0_5_q0 mem_dout 0 8 } } }
	buf0_6 { ap_memory {  { buf0_6_address0 mem_address 1 10 }  { buf0_6_ce0 mem_ce 1 1 }  { buf0_6_q0 mem_dout 0 8 } } }
	buf0_7 { ap_memory {  { buf0_7_address0 mem_address 1 10 }  { buf0_7_ce0 mem_ce 1 1 }  { buf0_7_q0 mem_dout 0 8 } } }
	size0 { ap_none {  { size0 in_data 0 16 } } }
	val_buf0_0 { ap_memory {  { val_buf0_0_address0 mem_address 1 12 }  { val_buf0_0_ce0 mem_ce 1 1 }  { val_buf0_0_q0 mem_dout 0 8 } } }
	val_buf0_1 { ap_memory {  { val_buf0_1_address0 mem_address 1 12 }  { val_buf0_1_ce0 mem_ce 1 1 }  { val_buf0_1_q0 mem_dout 0 8 } } }
	val_buf0_2 { ap_memory {  { val_buf0_2_address0 mem_address 1 12 }  { val_buf0_2_ce0 mem_ce 1 1 }  { val_buf0_2_q0 mem_dout 0 8 } } }
	val_buf0_3 { ap_memory {  { val_buf0_3_address0 mem_address 1 12 }  { val_buf0_3_ce0 mem_ce 1 1 }  { val_buf0_3_q0 mem_dout 0 8 } } }
	val_buf0_4 { ap_memory {  { val_buf0_4_address0 mem_address 1 12 }  { val_buf0_4_ce0 mem_ce 1 1 }  { val_buf0_4_q0 mem_dout 0 8 } } }
	val_buf0_5 { ap_memory {  { val_buf0_5_address0 mem_address 1 12 }  { val_buf0_5_ce0 mem_ce 1 1 }  { val_buf0_5_q0 mem_dout 0 8 } } }
	val_buf0_6 { ap_memory {  { val_buf0_6_address0 mem_address 1 12 }  { val_buf0_6_ce0 mem_ce 1 1 }  { val_buf0_6_q0 mem_dout 0 8 } } }
	val_buf0_7 { ap_memory {  { val_buf0_7_address0 mem_address 1 12 }  { val_buf0_7_ce0 mem_ce 1 1 }  { val_buf0_7_q0 mem_dout 0 8 } } }
	val_size0 { ap_none {  { val_size0 in_data 0 16 } } }
	buf1_0 { ap_memory {  { buf1_0_address0 mem_address 1 10 }  { buf1_0_ce0 mem_ce 1 1 }  { buf1_0_q0 mem_dout 0 8 } } }
	buf1_1 { ap_memory {  { buf1_1_address0 mem_address 1 10 }  { buf1_1_ce0 mem_ce 1 1 }  { buf1_1_q0 mem_dout 0 8 } } }
	buf1_2 { ap_memory {  { buf1_2_address0 mem_address 1 10 }  { buf1_2_ce0 mem_ce 1 1 }  { buf1_2_q0 mem_dout 0 8 } } }
	buf1_3 { ap_memory {  { buf1_3_address0 mem_address 1 10 }  { buf1_3_ce0 mem_ce 1 1 }  { buf1_3_q0 mem_dout 0 8 } } }
	buf1_4 { ap_memory {  { buf1_4_address0 mem_address 1 10 }  { buf1_4_ce0 mem_ce 1 1 }  { buf1_4_q0 mem_dout 0 8 } } }
	buf1_5 { ap_memory {  { buf1_5_address0 mem_address 1 10 }  { buf1_5_ce0 mem_ce 1 1 }  { buf1_5_q0 mem_dout 0 8 } } }
	buf1_6 { ap_memory {  { buf1_6_address0 mem_address 1 10 }  { buf1_6_ce0 mem_ce 1 1 }  { buf1_6_q0 mem_dout 0 8 } } }
	buf1_7 { ap_memory {  { buf1_7_address0 mem_address 1 10 }  { buf1_7_ce0 mem_ce 1 1 }  { buf1_7_q0 mem_dout 0 8 } } }
	size1 { ap_none {  { size1 in_data 0 16 } } }
	val_buf1_0 { ap_memory {  { val_buf1_0_address0 mem_address 1 12 }  { val_buf1_0_ce0 mem_ce 1 1 }  { val_buf1_0_q0 mem_dout 0 8 } } }
	val_buf1_1 { ap_memory {  { val_buf1_1_address0 mem_address 1 12 }  { val_buf1_1_ce0 mem_ce 1 1 }  { val_buf1_1_q0 mem_dout 0 8 } } }
	val_buf1_2 { ap_memory {  { val_buf1_2_address0 mem_address 1 12 }  { val_buf1_2_ce0 mem_ce 1 1 }  { val_buf1_2_q0 mem_dout 0 8 } } }
	val_buf1_3 { ap_memory {  { val_buf1_3_address0 mem_address 1 12 }  { val_buf1_3_ce0 mem_ce 1 1 }  { val_buf1_3_q0 mem_dout 0 8 } } }
	val_buf1_4 { ap_memory {  { val_buf1_4_address0 mem_address 1 12 }  { val_buf1_4_ce0 mem_ce 1 1 }  { val_buf1_4_q0 mem_dout 0 8 } } }
	val_buf1_5 { ap_memory {  { val_buf1_5_address0 mem_address 1 12 }  { val_buf1_5_ce0 mem_ce 1 1 }  { val_buf1_5_q0 mem_dout 0 8 } } }
	val_buf1_6 { ap_memory {  { val_buf1_6_address0 mem_address 1 12 }  { val_buf1_6_ce0 mem_ce 1 1 }  { val_buf1_6_q0 mem_dout 0 8 } } }
	val_buf1_7 { ap_memory {  { val_buf1_7_address0 mem_address 1 12 }  { val_buf1_7_ce0 mem_ce 1 1 }  { val_buf1_7_q0 mem_dout 0 8 } } }
	val_size1 { ap_none {  { val_size1 in_data 0 16 } } }
	buf2_0 { ap_memory {  { buf2_0_address0 mem_address 1 10 }  { buf2_0_ce0 mem_ce 1 1 }  { buf2_0_q0 mem_dout 0 8 } } }
	buf2_1 { ap_memory {  { buf2_1_address0 mem_address 1 10 }  { buf2_1_ce0 mem_ce 1 1 }  { buf2_1_q0 mem_dout 0 8 } } }
	buf2_2 { ap_memory {  { buf2_2_address0 mem_address 1 10 }  { buf2_2_ce0 mem_ce 1 1 }  { buf2_2_q0 mem_dout 0 8 } } }
	buf2_3 { ap_memory {  { buf2_3_address0 mem_address 1 10 }  { buf2_3_ce0 mem_ce 1 1 }  { buf2_3_q0 mem_dout 0 8 } } }
	buf2_4 { ap_memory {  { buf2_4_address0 mem_address 1 10 }  { buf2_4_ce0 mem_ce 1 1 }  { buf2_4_q0 mem_dout 0 8 } } }
	buf2_5 { ap_memory {  { buf2_5_address0 mem_address 1 10 }  { buf2_5_ce0 mem_ce 1 1 }  { buf2_5_q0 mem_dout 0 8 } } }
	buf2_6 { ap_memory {  { buf2_6_address0 mem_address 1 10 }  { buf2_6_ce0 mem_ce 1 1 }  { buf2_6_q0 mem_dout 0 8 } } }
	buf2_7 { ap_memory {  { buf2_7_address0 mem_address 1 10 }  { buf2_7_ce0 mem_ce 1 1 }  { buf2_7_q0 mem_dout 0 8 } } }
	size2 { ap_none {  { size2 in_data 0 16 } } }
	val_buf2_0 { ap_memory {  { val_buf2_0_address0 mem_address 1 12 }  { val_buf2_0_ce0 mem_ce 1 1 }  { val_buf2_0_q0 mem_dout 0 8 } } }
	val_buf2_1 { ap_memory {  { val_buf2_1_address0 mem_address 1 12 }  { val_buf2_1_ce0 mem_ce 1 1 }  { val_buf2_1_q0 mem_dout 0 8 } } }
	val_buf2_2 { ap_memory {  { val_buf2_2_address0 mem_address 1 12 }  { val_buf2_2_ce0 mem_ce 1 1 }  { val_buf2_2_q0 mem_dout 0 8 } } }
	val_buf2_3 { ap_memory {  { val_buf2_3_address0 mem_address 1 12 }  { val_buf2_3_ce0 mem_ce 1 1 }  { val_buf2_3_q0 mem_dout 0 8 } } }
	val_buf2_4 { ap_memory {  { val_buf2_4_address0 mem_address 1 12 }  { val_buf2_4_ce0 mem_ce 1 1 }  { val_buf2_4_q0 mem_dout 0 8 } } }
	val_buf2_5 { ap_memory {  { val_buf2_5_address0 mem_address 1 12 }  { val_buf2_5_ce0 mem_ce 1 1 }  { val_buf2_5_q0 mem_dout 0 8 } } }
	val_buf2_6 { ap_memory {  { val_buf2_6_address0 mem_address 1 12 }  { val_buf2_6_ce0 mem_ce 1 1 }  { val_buf2_6_q0 mem_dout 0 8 } } }
	val_buf2_7 { ap_memory {  { val_buf2_7_address0 mem_address 1 12 }  { val_buf2_7_ce0 mem_ce 1 1 }  { val_buf2_7_q0 mem_dout 0 8 } } }
	val_size2 { ap_none {  { val_size2 in_data 0 16 } } }
	buf3_0 { ap_memory {  { buf3_0_address0 mem_address 1 10 }  { buf3_0_ce0 mem_ce 1 1 }  { buf3_0_q0 mem_dout 0 8 } } }
	buf3_1 { ap_memory {  { buf3_1_address0 mem_address 1 10 }  { buf3_1_ce0 mem_ce 1 1 }  { buf3_1_q0 mem_dout 0 8 } } }
	buf3_2 { ap_memory {  { buf3_2_address0 mem_address 1 10 }  { buf3_2_ce0 mem_ce 1 1 }  { buf3_2_q0 mem_dout 0 8 } } }
	buf3_3 { ap_memory {  { buf3_3_address0 mem_address 1 10 }  { buf3_3_ce0 mem_ce 1 1 }  { buf3_3_q0 mem_dout 0 8 } } }
	buf3_4 { ap_memory {  { buf3_4_address0 mem_address 1 10 }  { buf3_4_ce0 mem_ce 1 1 }  { buf3_4_q0 mem_dout 0 8 } } }
	buf3_5 { ap_memory {  { buf3_5_address0 mem_address 1 10 }  { buf3_5_ce0 mem_ce 1 1 }  { buf3_5_q0 mem_dout 0 8 } } }
	buf3_6 { ap_memory {  { buf3_6_address0 mem_address 1 10 }  { buf3_6_ce0 mem_ce 1 1 }  { buf3_6_q0 mem_dout 0 8 } } }
	buf3_7 { ap_memory {  { buf3_7_address0 mem_address 1 10 }  { buf3_7_ce0 mem_ce 1 1 }  { buf3_7_q0 mem_dout 0 8 } } }
	size3 { ap_none {  { size3 in_data 0 16 } } }
	val_buf3_0 { ap_memory {  { val_buf3_0_address0 mem_address 1 12 }  { val_buf3_0_ce0 mem_ce 1 1 }  { val_buf3_0_q0 mem_dout 0 8 } } }
	val_buf3_1 { ap_memory {  { val_buf3_1_address0 mem_address 1 12 }  { val_buf3_1_ce0 mem_ce 1 1 }  { val_buf3_1_q0 mem_dout 0 8 } } }
	val_buf3_2 { ap_memory {  { val_buf3_2_address0 mem_address 1 12 }  { val_buf3_2_ce0 mem_ce 1 1 }  { val_buf3_2_q0 mem_dout 0 8 } } }
	val_buf3_3 { ap_memory {  { val_buf3_3_address0 mem_address 1 12 }  { val_buf3_3_ce0 mem_ce 1 1 }  { val_buf3_3_q0 mem_dout 0 8 } } }
	val_buf3_4 { ap_memory {  { val_buf3_4_address0 mem_address 1 12 }  { val_buf3_4_ce0 mem_ce 1 1 }  { val_buf3_4_q0 mem_dout 0 8 } } }
	val_buf3_5 { ap_memory {  { val_buf3_5_address0 mem_address 1 12 }  { val_buf3_5_ce0 mem_ce 1 1 }  { val_buf3_5_q0 mem_dout 0 8 } } }
	val_buf3_6 { ap_memory {  { val_buf3_6_address0 mem_address 1 12 }  { val_buf3_6_ce0 mem_ce 1 1 }  { val_buf3_6_q0 mem_dout 0 8 } } }
	val_buf3_7 { ap_memory {  { val_buf3_7_address0 mem_address 1 12 }  { val_buf3_7_ce0 mem_ce 1 1 }  { val_buf3_7_q0 mem_dout 0 8 } } }
	val_size3 { ap_none {  { val_size3 in_data 0 16 } } }
	buf4_0 { ap_memory {  { buf4_0_address0 mem_address 1 10 }  { buf4_0_ce0 mem_ce 1 1 }  { buf4_0_q0 mem_dout 0 8 } } }
	buf4_1 { ap_memory {  { buf4_1_address0 mem_address 1 10 }  { buf4_1_ce0 mem_ce 1 1 }  { buf4_1_q0 mem_dout 0 8 } } }
	buf4_2 { ap_memory {  { buf4_2_address0 mem_address 1 10 }  { buf4_2_ce0 mem_ce 1 1 }  { buf4_2_q0 mem_dout 0 8 } } }
	buf4_3 { ap_memory {  { buf4_3_address0 mem_address 1 10 }  { buf4_3_ce0 mem_ce 1 1 }  { buf4_3_q0 mem_dout 0 8 } } }
	buf4_4 { ap_memory {  { buf4_4_address0 mem_address 1 10 }  { buf4_4_ce0 mem_ce 1 1 }  { buf4_4_q0 mem_dout 0 8 } } }
	buf4_5 { ap_memory {  { buf4_5_address0 mem_address 1 10 }  { buf4_5_ce0 mem_ce 1 1 }  { buf4_5_q0 mem_dout 0 8 } } }
	buf4_6 { ap_memory {  { buf4_6_address0 mem_address 1 10 }  { buf4_6_ce0 mem_ce 1 1 }  { buf4_6_q0 mem_dout 0 8 } } }
	buf4_7 { ap_memory {  { buf4_7_address0 mem_address 1 10 }  { buf4_7_ce0 mem_ce 1 1 }  { buf4_7_q0 mem_dout 0 8 } } }
	size4 { ap_none {  { size4 in_data 0 16 } } }
	val_buf4_0 { ap_memory {  { val_buf4_0_address0 mem_address 1 12 }  { val_buf4_0_ce0 mem_ce 1 1 }  { val_buf4_0_q0 mem_dout 0 8 } } }
	val_buf4_1 { ap_memory {  { val_buf4_1_address0 mem_address 1 12 }  { val_buf4_1_ce0 mem_ce 1 1 }  { val_buf4_1_q0 mem_dout 0 8 } } }
	val_buf4_2 { ap_memory {  { val_buf4_2_address0 mem_address 1 12 }  { val_buf4_2_ce0 mem_ce 1 1 }  { val_buf4_2_q0 mem_dout 0 8 } } }
	val_buf4_3 { ap_memory {  { val_buf4_3_address0 mem_address 1 12 }  { val_buf4_3_ce0 mem_ce 1 1 }  { val_buf4_3_q0 mem_dout 0 8 } } }
	val_buf4_4 { ap_memory {  { val_buf4_4_address0 mem_address 1 12 }  { val_buf4_4_ce0 mem_ce 1 1 }  { val_buf4_4_q0 mem_dout 0 8 } } }
	val_buf4_5 { ap_memory {  { val_buf4_5_address0 mem_address 1 12 }  { val_buf4_5_ce0 mem_ce 1 1 }  { val_buf4_5_q0 mem_dout 0 8 } } }
	val_buf4_6 { ap_memory {  { val_buf4_6_address0 mem_address 1 12 }  { val_buf4_6_ce0 mem_ce 1 1 }  { val_buf4_6_q0 mem_dout 0 8 } } }
	val_buf4_7 { ap_memory {  { val_buf4_7_address0 mem_address 1 12 }  { val_buf4_7_ce0 mem_ce 1 1 }  { val_buf4_7_q0 mem_dout 0 8 } } }
	val_size4 { ap_none {  { val_size4 in_data 0 16 } } }
	buf5_0 { ap_memory {  { buf5_0_address0 mem_address 1 10 }  { buf5_0_ce0 mem_ce 1 1 }  { buf5_0_q0 mem_dout 0 8 } } }
	buf5_1 { ap_memory {  { buf5_1_address0 mem_address 1 10 }  { buf5_1_ce0 mem_ce 1 1 }  { buf5_1_q0 mem_dout 0 8 } } }
	buf5_2 { ap_memory {  { buf5_2_address0 mem_address 1 10 }  { buf5_2_ce0 mem_ce 1 1 }  { buf5_2_q0 mem_dout 0 8 } } }
	buf5_3 { ap_memory {  { buf5_3_address0 mem_address 1 10 }  { buf5_3_ce0 mem_ce 1 1 }  { buf5_3_q0 mem_dout 0 8 } } }
	buf5_4 { ap_memory {  { buf5_4_address0 mem_address 1 10 }  { buf5_4_ce0 mem_ce 1 1 }  { buf5_4_q0 mem_dout 0 8 } } }
	buf5_5 { ap_memory {  { buf5_5_address0 mem_address 1 10 }  { buf5_5_ce0 mem_ce 1 1 }  { buf5_5_q0 mem_dout 0 8 } } }
	buf5_6 { ap_memory {  { buf5_6_address0 mem_address 1 10 }  { buf5_6_ce0 mem_ce 1 1 }  { buf5_6_q0 mem_dout 0 8 } } }
	buf5_7 { ap_memory {  { buf5_7_address0 mem_address 1 10 }  { buf5_7_ce0 mem_ce 1 1 }  { buf5_7_q0 mem_dout 0 8 } } }
	size5 { ap_none {  { size5 in_data 0 16 } } }
	val_buf5_0 { ap_memory {  { val_buf5_0_address0 mem_address 1 12 }  { val_buf5_0_ce0 mem_ce 1 1 }  { val_buf5_0_q0 mem_dout 0 8 } } }
	val_buf5_1 { ap_memory {  { val_buf5_1_address0 mem_address 1 12 }  { val_buf5_1_ce0 mem_ce 1 1 }  { val_buf5_1_q0 mem_dout 0 8 } } }
	val_buf5_2 { ap_memory {  { val_buf5_2_address0 mem_address 1 12 }  { val_buf5_2_ce0 mem_ce 1 1 }  { val_buf5_2_q0 mem_dout 0 8 } } }
	val_buf5_3 { ap_memory {  { val_buf5_3_address0 mem_address 1 12 }  { val_buf5_3_ce0 mem_ce 1 1 }  { val_buf5_3_q0 mem_dout 0 8 } } }
	val_buf5_4 { ap_memory {  { val_buf5_4_address0 mem_address 1 12 }  { val_buf5_4_ce0 mem_ce 1 1 }  { val_buf5_4_q0 mem_dout 0 8 } } }
	val_buf5_5 { ap_memory {  { val_buf5_5_address0 mem_address 1 12 }  { val_buf5_5_ce0 mem_ce 1 1 }  { val_buf5_5_q0 mem_dout 0 8 } } }
	val_buf5_6 { ap_memory {  { val_buf5_6_address0 mem_address 1 12 }  { val_buf5_6_ce0 mem_ce 1 1 }  { val_buf5_6_q0 mem_dout 0 8 } } }
	val_buf5_7 { ap_memory {  { val_buf5_7_address0 mem_address 1 12 }  { val_buf5_7_ce0 mem_ce 1 1 }  { val_buf5_7_q0 mem_dout 0 8 } } }
	val_size5 { ap_none {  { val_size5 in_data 0 16 } } }
}
