set moduleName fft_exec_Pipeline_DFT_Loop11
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
set C_modelName {fft_exec_Pipeline_DFT_Loop11}
set C_modelType { void 0 }
set C_modelArgList {
	{ Stage4_I_3 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage4_I_2 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage4_I_1 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage4_I float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage4_R_3 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage4_R_2 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage4_R_1 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage4_R float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage3_R float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage3_I float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage3_R_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage3_I_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage3_R_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage3_I_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage3_R_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage3_I_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ W_real float 32 regular {array 512 { 1 1 1 1 } 1 1 } {global 0}  }
	{ W_imag float 32 regular {array 512 { 1 1 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Stage4_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage4_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage4_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage4_I", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage4_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage4_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage4_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage4_R", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage3_R", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage3_I", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage3_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage3_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage3_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage3_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage3_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage3_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 326
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Stage4_I_3_address0 sc_out sc_lv 8 signal 0 } 
	{ Stage4_I_3_ce0 sc_out sc_logic 1 signal 0 } 
	{ Stage4_I_3_we0 sc_out sc_logic 1 signal 0 } 
	{ Stage4_I_3_d0 sc_out sc_lv 32 signal 0 } 
	{ Stage4_I_3_address1 sc_out sc_lv 8 signal 0 } 
	{ Stage4_I_3_ce1 sc_out sc_logic 1 signal 0 } 
	{ Stage4_I_3_we1 sc_out sc_logic 1 signal 0 } 
	{ Stage4_I_3_d1 sc_out sc_lv 32 signal 0 } 
	{ Stage4_I_2_address0 sc_out sc_lv 8 signal 1 } 
	{ Stage4_I_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ Stage4_I_2_we0 sc_out sc_logic 1 signal 1 } 
	{ Stage4_I_2_d0 sc_out sc_lv 32 signal 1 } 
	{ Stage4_I_2_address1 sc_out sc_lv 8 signal 1 } 
	{ Stage4_I_2_ce1 sc_out sc_logic 1 signal 1 } 
	{ Stage4_I_2_we1 sc_out sc_logic 1 signal 1 } 
	{ Stage4_I_2_d1 sc_out sc_lv 32 signal 1 } 
	{ Stage4_I_1_address0 sc_out sc_lv 8 signal 2 } 
	{ Stage4_I_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ Stage4_I_1_we0 sc_out sc_logic 1 signal 2 } 
	{ Stage4_I_1_d0 sc_out sc_lv 32 signal 2 } 
	{ Stage4_I_1_address1 sc_out sc_lv 8 signal 2 } 
	{ Stage4_I_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ Stage4_I_1_we1 sc_out sc_logic 1 signal 2 } 
	{ Stage4_I_1_d1 sc_out sc_lv 32 signal 2 } 
	{ Stage4_I_address0 sc_out sc_lv 8 signal 3 } 
	{ Stage4_I_ce0 sc_out sc_logic 1 signal 3 } 
	{ Stage4_I_we0 sc_out sc_logic 1 signal 3 } 
	{ Stage4_I_d0 sc_out sc_lv 32 signal 3 } 
	{ Stage4_I_address1 sc_out sc_lv 8 signal 3 } 
	{ Stage4_I_ce1 sc_out sc_logic 1 signal 3 } 
	{ Stage4_I_we1 sc_out sc_logic 1 signal 3 } 
	{ Stage4_I_d1 sc_out sc_lv 32 signal 3 } 
	{ Stage4_R_3_address0 sc_out sc_lv 8 signal 4 } 
	{ Stage4_R_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ Stage4_R_3_we0 sc_out sc_logic 1 signal 4 } 
	{ Stage4_R_3_d0 sc_out sc_lv 32 signal 4 } 
	{ Stage4_R_3_address1 sc_out sc_lv 8 signal 4 } 
	{ Stage4_R_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ Stage4_R_3_we1 sc_out sc_logic 1 signal 4 } 
	{ Stage4_R_3_d1 sc_out sc_lv 32 signal 4 } 
	{ Stage4_R_2_address0 sc_out sc_lv 8 signal 5 } 
	{ Stage4_R_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ Stage4_R_2_we0 sc_out sc_logic 1 signal 5 } 
	{ Stage4_R_2_d0 sc_out sc_lv 32 signal 5 } 
	{ Stage4_R_2_address1 sc_out sc_lv 8 signal 5 } 
	{ Stage4_R_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ Stage4_R_2_we1 sc_out sc_logic 1 signal 5 } 
	{ Stage4_R_2_d1 sc_out sc_lv 32 signal 5 } 
	{ Stage4_R_1_address0 sc_out sc_lv 8 signal 6 } 
	{ Stage4_R_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ Stage4_R_1_we0 sc_out sc_logic 1 signal 6 } 
	{ Stage4_R_1_d0 sc_out sc_lv 32 signal 6 } 
	{ Stage4_R_1_address1 sc_out sc_lv 8 signal 6 } 
	{ Stage4_R_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ Stage4_R_1_we1 sc_out sc_logic 1 signal 6 } 
	{ Stage4_R_1_d1 sc_out sc_lv 32 signal 6 } 
	{ Stage4_R_address0 sc_out sc_lv 8 signal 7 } 
	{ Stage4_R_ce0 sc_out sc_logic 1 signal 7 } 
	{ Stage4_R_we0 sc_out sc_logic 1 signal 7 } 
	{ Stage4_R_d0 sc_out sc_lv 32 signal 7 } 
	{ Stage4_R_address1 sc_out sc_lv 8 signal 7 } 
	{ Stage4_R_ce1 sc_out sc_logic 1 signal 7 } 
	{ Stage4_R_we1 sc_out sc_logic 1 signal 7 } 
	{ Stage4_R_d1 sc_out sc_lv 32 signal 7 } 
	{ Stage3_R_address0 sc_out sc_lv 8 signal 8 } 
	{ Stage3_R_ce0 sc_out sc_logic 1 signal 8 } 
	{ Stage3_R_q0 sc_in sc_lv 32 signal 8 } 
	{ Stage3_R_address1 sc_out sc_lv 8 signal 8 } 
	{ Stage3_R_ce1 sc_out sc_logic 1 signal 8 } 
	{ Stage3_R_q1 sc_in sc_lv 32 signal 8 } 
	{ Stage3_I_address0 sc_out sc_lv 8 signal 9 } 
	{ Stage3_I_ce0 sc_out sc_logic 1 signal 9 } 
	{ Stage3_I_q0 sc_in sc_lv 32 signal 9 } 
	{ Stage3_I_address1 sc_out sc_lv 8 signal 9 } 
	{ Stage3_I_ce1 sc_out sc_logic 1 signal 9 } 
	{ Stage3_I_q1 sc_in sc_lv 32 signal 9 } 
	{ Stage3_R_1_address0 sc_out sc_lv 8 signal 10 } 
	{ Stage3_R_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ Stage3_R_1_q0 sc_in sc_lv 32 signal 10 } 
	{ Stage3_R_1_address1 sc_out sc_lv 8 signal 10 } 
	{ Stage3_R_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ Stage3_R_1_q1 sc_in sc_lv 32 signal 10 } 
	{ Stage3_I_1_address0 sc_out sc_lv 8 signal 11 } 
	{ Stage3_I_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ Stage3_I_1_q0 sc_in sc_lv 32 signal 11 } 
	{ Stage3_I_1_address1 sc_out sc_lv 8 signal 11 } 
	{ Stage3_I_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ Stage3_I_1_q1 sc_in sc_lv 32 signal 11 } 
	{ Stage3_R_2_address0 sc_out sc_lv 8 signal 12 } 
	{ Stage3_R_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ Stage3_R_2_q0 sc_in sc_lv 32 signal 12 } 
	{ Stage3_R_2_address1 sc_out sc_lv 8 signal 12 } 
	{ Stage3_R_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ Stage3_R_2_q1 sc_in sc_lv 32 signal 12 } 
	{ Stage3_I_2_address0 sc_out sc_lv 8 signal 13 } 
	{ Stage3_I_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ Stage3_I_2_q0 sc_in sc_lv 32 signal 13 } 
	{ Stage3_I_2_address1 sc_out sc_lv 8 signal 13 } 
	{ Stage3_I_2_ce1 sc_out sc_logic 1 signal 13 } 
	{ Stage3_I_2_q1 sc_in sc_lv 32 signal 13 } 
	{ Stage3_R_3_address0 sc_out sc_lv 8 signal 14 } 
	{ Stage3_R_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ Stage3_R_3_q0 sc_in sc_lv 32 signal 14 } 
	{ Stage3_R_3_address1 sc_out sc_lv 8 signal 14 } 
	{ Stage3_R_3_ce1 sc_out sc_logic 1 signal 14 } 
	{ Stage3_R_3_q1 sc_in sc_lv 32 signal 14 } 
	{ Stage3_I_3_address0 sc_out sc_lv 8 signal 15 } 
	{ Stage3_I_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ Stage3_I_3_q0 sc_in sc_lv 32 signal 15 } 
	{ Stage3_I_3_address1 sc_out sc_lv 8 signal 15 } 
	{ Stage3_I_3_ce1 sc_out sc_logic 1 signal 15 } 
	{ Stage3_I_3_q1 sc_in sc_lv 32 signal 15 } 
	{ W_real_address0 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce0 sc_out sc_logic 1 signal 16 } 
	{ W_real_q0 sc_in sc_lv 32 signal 16 } 
	{ W_real_address1 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce1 sc_out sc_logic 1 signal 16 } 
	{ W_real_q1 sc_in sc_lv 32 signal 16 } 
	{ W_real_address2 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce2 sc_out sc_logic 1 signal 16 } 
	{ W_real_q2 sc_in sc_lv 32 signal 16 } 
	{ W_real_address3 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce3 sc_out sc_logic 1 signal 16 } 
	{ W_real_q3 sc_in sc_lv 32 signal 16 } 
	{ W_imag_address0 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce0 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q0 sc_in sc_lv 32 signal 17 } 
	{ W_imag_address1 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce1 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q1 sc_in sc_lv 32 signal 17 } 
	{ W_imag_address2 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce2 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q2 sc_in sc_lv 32 signal 17 } 
	{ W_imag_address3 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce3 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q3 sc_in sc_lv 32 signal 17 } 
	{ grp_fu_628_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_628_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_628_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_628_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_628_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_632_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_632_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_632_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_632_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_632_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_636_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_636_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_636_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_636_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_636_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_640_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_640_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_640_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_640_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_640_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_644_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_644_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_644_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_644_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_644_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_648_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_648_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_648_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_648_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_648_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_652_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_652_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_652_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_652_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_652_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_656_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_656_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_656_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_656_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_656_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_660_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_660_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_660_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_660_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_660_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_664_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_664_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_664_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_664_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_664_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_668_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_668_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_668_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_668_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_668_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_672_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_672_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_672_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_672_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_672_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_676_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_676_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_676_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_676_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_676_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_680_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_680_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_680_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_680_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_680_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_684_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_684_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_684_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_684_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_684_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_688_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_688_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_688_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_688_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_688_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_692_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_692_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_692_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_692_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_692_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_696_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_696_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_696_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_696_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_696_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_700_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_700_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_700_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_700_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_700_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_704_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_704_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_704_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_704_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_704_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_708_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_708_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_708_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_708_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_708_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_712_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_712_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_712_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_712_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_712_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_716_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_716_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_716_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_716_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_716_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_720_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_720_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_720_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_720_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_720_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_724_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_724_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_724_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_724_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_728_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_728_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_728_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_728_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_732_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_732_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_732_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_732_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_736_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_736_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_736_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_736_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_740_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_740_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_740_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_740_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_744_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_744_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_744_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_744_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_748_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_748_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_748_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_748_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_752_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_752_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_752_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_752_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_756_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_756_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_756_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_756_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_760_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_760_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_760_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_760_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_764_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_764_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_764_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_764_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_768_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_768_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_768_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_768_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_772_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_772_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_772_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_772_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_776_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_776_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_776_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_776_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_780_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_780_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_780_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_780_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_784_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_784_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_784_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_784_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Stage4_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_I_3", "role": "address0" }} , 
 	{ "name": "Stage4_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_3", "role": "ce0" }} , 
 	{ "name": "Stage4_I_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_3", "role": "we0" }} , 
 	{ "name": "Stage4_I_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_I_3", "role": "d0" }} , 
 	{ "name": "Stage4_I_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_I_3", "role": "address1" }} , 
 	{ "name": "Stage4_I_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_3", "role": "ce1" }} , 
 	{ "name": "Stage4_I_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_3", "role": "we1" }} , 
 	{ "name": "Stage4_I_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_I_3", "role": "d1" }} , 
 	{ "name": "Stage4_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_I_2", "role": "address0" }} , 
 	{ "name": "Stage4_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_2", "role": "ce0" }} , 
 	{ "name": "Stage4_I_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_2", "role": "we0" }} , 
 	{ "name": "Stage4_I_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_I_2", "role": "d0" }} , 
 	{ "name": "Stage4_I_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_I_2", "role": "address1" }} , 
 	{ "name": "Stage4_I_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_2", "role": "ce1" }} , 
 	{ "name": "Stage4_I_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_2", "role": "we1" }} , 
 	{ "name": "Stage4_I_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_I_2", "role": "d1" }} , 
 	{ "name": "Stage4_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_I_1", "role": "address0" }} , 
 	{ "name": "Stage4_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_1", "role": "ce0" }} , 
 	{ "name": "Stage4_I_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_1", "role": "we0" }} , 
 	{ "name": "Stage4_I_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_I_1", "role": "d0" }} , 
 	{ "name": "Stage4_I_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_I_1", "role": "address1" }} , 
 	{ "name": "Stage4_I_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_1", "role": "ce1" }} , 
 	{ "name": "Stage4_I_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I_1", "role": "we1" }} , 
 	{ "name": "Stage4_I_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_I_1", "role": "d1" }} , 
 	{ "name": "Stage4_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_I", "role": "address0" }} , 
 	{ "name": "Stage4_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I", "role": "ce0" }} , 
 	{ "name": "Stage4_I_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I", "role": "we0" }} , 
 	{ "name": "Stage4_I_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_I", "role": "d0" }} , 
 	{ "name": "Stage4_I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_I", "role": "address1" }} , 
 	{ "name": "Stage4_I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I", "role": "ce1" }} , 
 	{ "name": "Stage4_I_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_I", "role": "we1" }} , 
 	{ "name": "Stage4_I_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_I", "role": "d1" }} , 
 	{ "name": "Stage4_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_R_3", "role": "address0" }} , 
 	{ "name": "Stage4_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_3", "role": "ce0" }} , 
 	{ "name": "Stage4_R_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_3", "role": "we0" }} , 
 	{ "name": "Stage4_R_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_R_3", "role": "d0" }} , 
 	{ "name": "Stage4_R_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_R_3", "role": "address1" }} , 
 	{ "name": "Stage4_R_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_3", "role": "ce1" }} , 
 	{ "name": "Stage4_R_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_3", "role": "we1" }} , 
 	{ "name": "Stage4_R_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_R_3", "role": "d1" }} , 
 	{ "name": "Stage4_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_R_2", "role": "address0" }} , 
 	{ "name": "Stage4_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_2", "role": "ce0" }} , 
 	{ "name": "Stage4_R_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_2", "role": "we0" }} , 
 	{ "name": "Stage4_R_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_R_2", "role": "d0" }} , 
 	{ "name": "Stage4_R_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_R_2", "role": "address1" }} , 
 	{ "name": "Stage4_R_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_2", "role": "ce1" }} , 
 	{ "name": "Stage4_R_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_2", "role": "we1" }} , 
 	{ "name": "Stage4_R_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_R_2", "role": "d1" }} , 
 	{ "name": "Stage4_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_R_1", "role": "address0" }} , 
 	{ "name": "Stage4_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_1", "role": "ce0" }} , 
 	{ "name": "Stage4_R_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_1", "role": "we0" }} , 
 	{ "name": "Stage4_R_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_R_1", "role": "d0" }} , 
 	{ "name": "Stage4_R_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_R_1", "role": "address1" }} , 
 	{ "name": "Stage4_R_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_1", "role": "ce1" }} , 
 	{ "name": "Stage4_R_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R_1", "role": "we1" }} , 
 	{ "name": "Stage4_R_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_R_1", "role": "d1" }} , 
 	{ "name": "Stage4_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_R", "role": "address0" }} , 
 	{ "name": "Stage4_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R", "role": "ce0" }} , 
 	{ "name": "Stage4_R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R", "role": "we0" }} , 
 	{ "name": "Stage4_R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_R", "role": "d0" }} , 
 	{ "name": "Stage4_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage4_R", "role": "address1" }} , 
 	{ "name": "Stage4_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R", "role": "ce1" }} , 
 	{ "name": "Stage4_R_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage4_R", "role": "we1" }} , 
 	{ "name": "Stage4_R_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage4_R", "role": "d1" }} , 
 	{ "name": "Stage3_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_R", "role": "address0" }} , 
 	{ "name": "Stage3_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_R", "role": "ce0" }} , 
 	{ "name": "Stage3_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_R", "role": "q0" }} , 
 	{ "name": "Stage3_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_R", "role": "address1" }} , 
 	{ "name": "Stage3_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_R", "role": "ce1" }} , 
 	{ "name": "Stage3_R_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_R", "role": "q1" }} , 
 	{ "name": "Stage3_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_I", "role": "address0" }} , 
 	{ "name": "Stage3_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_I", "role": "ce0" }} , 
 	{ "name": "Stage3_I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_I", "role": "q0" }} , 
 	{ "name": "Stage3_I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_I", "role": "address1" }} , 
 	{ "name": "Stage3_I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_I", "role": "ce1" }} , 
 	{ "name": "Stage3_I_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_I", "role": "q1" }} , 
 	{ "name": "Stage3_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_R_1", "role": "address0" }} , 
 	{ "name": "Stage3_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_R_1", "role": "ce0" }} , 
 	{ "name": "Stage3_R_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_R_1", "role": "q0" }} , 
 	{ "name": "Stage3_R_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_R_1", "role": "address1" }} , 
 	{ "name": "Stage3_R_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_R_1", "role": "ce1" }} , 
 	{ "name": "Stage3_R_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_R_1", "role": "q1" }} , 
 	{ "name": "Stage3_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_I_1", "role": "address0" }} , 
 	{ "name": "Stage3_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_I_1", "role": "ce0" }} , 
 	{ "name": "Stage3_I_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_I_1", "role": "q0" }} , 
 	{ "name": "Stage3_I_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_I_1", "role": "address1" }} , 
 	{ "name": "Stage3_I_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_I_1", "role": "ce1" }} , 
 	{ "name": "Stage3_I_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_I_1", "role": "q1" }} , 
 	{ "name": "Stage3_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_R_2", "role": "address0" }} , 
 	{ "name": "Stage3_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_R_2", "role": "ce0" }} , 
 	{ "name": "Stage3_R_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_R_2", "role": "q0" }} , 
 	{ "name": "Stage3_R_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_R_2", "role": "address1" }} , 
 	{ "name": "Stage3_R_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_R_2", "role": "ce1" }} , 
 	{ "name": "Stage3_R_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_R_2", "role": "q1" }} , 
 	{ "name": "Stage3_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_I_2", "role": "address0" }} , 
 	{ "name": "Stage3_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_I_2", "role": "ce0" }} , 
 	{ "name": "Stage3_I_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_I_2", "role": "q0" }} , 
 	{ "name": "Stage3_I_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_I_2", "role": "address1" }} , 
 	{ "name": "Stage3_I_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_I_2", "role": "ce1" }} , 
 	{ "name": "Stage3_I_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_I_2", "role": "q1" }} , 
 	{ "name": "Stage3_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_R_3", "role": "address0" }} , 
 	{ "name": "Stage3_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_R_3", "role": "ce0" }} , 
 	{ "name": "Stage3_R_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_R_3", "role": "q0" }} , 
 	{ "name": "Stage3_R_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_R_3", "role": "address1" }} , 
 	{ "name": "Stage3_R_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_R_3", "role": "ce1" }} , 
 	{ "name": "Stage3_R_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_R_3", "role": "q1" }} , 
 	{ "name": "Stage3_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_I_3", "role": "address0" }} , 
 	{ "name": "Stage3_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_I_3", "role": "ce0" }} , 
 	{ "name": "Stage3_I_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_I_3", "role": "q0" }} , 
 	{ "name": "Stage3_I_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage3_I_3", "role": "address1" }} , 
 	{ "name": "Stage3_I_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage3_I_3", "role": "ce1" }} , 
 	{ "name": "Stage3_I_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage3_I_3", "role": "q1" }} , 
 	{ "name": "W_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address0" }} , 
 	{ "name": "W_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce0" }} , 
 	{ "name": "W_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q0" }} , 
 	{ "name": "W_real_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address1" }} , 
 	{ "name": "W_real_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce1" }} , 
 	{ "name": "W_real_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q1" }} , 
 	{ "name": "W_real_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address2" }} , 
 	{ "name": "W_real_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce2" }} , 
 	{ "name": "W_real_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q2" }} , 
 	{ "name": "W_real_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address3" }} , 
 	{ "name": "W_real_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce3" }} , 
 	{ "name": "W_real_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q3" }} , 
 	{ "name": "W_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address0" }} , 
 	{ "name": "W_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce0" }} , 
 	{ "name": "W_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q0" }} , 
 	{ "name": "W_imag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address1" }} , 
 	{ "name": "W_imag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce1" }} , 
 	{ "name": "W_imag_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q1" }} , 
 	{ "name": "W_imag_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address2" }} , 
 	{ "name": "W_imag_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce2" }} , 
 	{ "name": "W_imag_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q2" }} , 
 	{ "name": "W_imag_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address3" }} , 
 	{ "name": "W_imag_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce3" }} , 
 	{ "name": "W_imag_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q3" }} , 
 	{ "name": "grp_fu_628_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_628_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_628_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_628_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_628_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_628_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_628_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_628_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_628_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_628_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_632_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_632_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_632_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_632_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_632_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_632_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_632_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_632_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_632_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_632_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_636_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_636_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_636_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_636_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_636_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_636_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_636_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_636_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_636_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_636_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_640_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_640_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_640_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_640_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_640_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_640_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_640_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_640_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_640_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_640_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_644_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_644_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_644_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_644_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_644_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_644_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_644_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_644_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_644_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_644_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_648_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_648_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_648_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_648_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_648_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_648_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_648_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_648_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_648_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_648_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_652_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_652_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_652_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_652_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_652_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_652_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_652_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_652_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_652_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_652_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_656_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_656_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_656_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_656_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_656_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_656_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_656_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_656_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_656_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_656_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_660_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_660_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_660_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_660_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_660_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_660_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_660_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_660_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_660_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_660_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_664_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_664_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_664_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_664_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_664_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_664_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_664_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_664_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_664_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_664_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_668_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_668_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_668_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_668_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_668_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_668_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_668_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_668_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_668_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_668_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_672_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_672_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_672_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_672_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_672_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_672_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_672_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_672_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_672_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_672_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_676_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_676_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_676_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_676_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_676_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_676_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_676_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_676_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_676_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_676_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_680_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_680_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_680_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_680_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_680_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_680_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_680_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_680_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_680_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_680_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_684_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_684_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_684_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_684_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_684_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_684_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_684_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_684_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_684_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_684_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_688_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_688_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_688_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_688_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_688_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_688_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_688_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_688_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_688_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_688_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_692_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_692_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_692_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_692_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_692_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_692_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_692_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_692_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_692_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_692_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_696_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_696_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_696_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_696_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_696_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_696_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_696_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_696_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_696_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_696_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_700_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_700_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_700_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_700_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_700_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_700_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_700_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_700_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_700_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_700_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_704_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_704_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_704_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_704_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_704_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_704_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_704_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_704_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_704_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_704_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_708_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_708_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_708_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_708_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_708_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_708_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_708_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_708_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_708_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_708_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_712_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_712_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_712_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_712_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_712_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_712_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_712_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_712_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_712_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_712_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_716_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_716_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_716_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_716_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_716_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_716_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_716_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_716_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_716_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_716_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_720_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_720_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_720_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_720_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_720_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_720_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_720_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_720_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_720_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_720_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_724_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_724_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_724_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_724_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_724_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_724_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_724_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_724_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_728_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_728_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_728_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_728_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_728_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_728_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_728_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_728_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_732_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_732_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_732_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_732_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_732_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_732_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_732_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_732_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_736_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_736_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_736_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_736_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_736_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_736_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_736_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_736_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_740_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_740_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_740_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_740_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_740_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_740_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_740_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_740_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_744_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_744_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_744_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_744_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_744_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_744_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_744_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_744_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_748_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_748_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_748_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_748_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_748_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_748_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_748_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_748_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_752_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_752_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_752_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_752_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_752_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_752_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_752_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_752_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_756_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_756_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_756_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_756_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_756_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_756_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_756_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_756_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_760_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_760_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_760_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_760_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_760_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_760_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_760_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_760_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_764_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_764_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_764_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_764_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_764_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_764_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_764_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_764_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_768_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_768_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_768_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_768_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_768_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_768_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_768_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_768_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_772_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_772_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_772_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_772_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_772_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_772_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_772_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_772_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_776_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_776_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_776_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_776_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_776_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_776_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_776_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_776_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_780_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_780_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_780_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_780_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_780_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_780_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_780_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_780_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_784_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_784_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_784_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_784_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_784_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_784_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_784_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_784_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		W_imag {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "146", "Max" : "146"}
	, {"Name" : "Interval", "Min" : "146", "Max" : "146"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Stage4_I_3 { ap_memory {  { Stage4_I_3_address0 mem_address 1 8 }  { Stage4_I_3_ce0 mem_ce 1 1 }  { Stage4_I_3_we0 mem_we 1 1 }  { Stage4_I_3_d0 mem_din 1 32 }  { Stage4_I_3_address1 MemPortADDR2 1 8 }  { Stage4_I_3_ce1 MemPortCE2 1 1 }  { Stage4_I_3_we1 MemPortWE2 1 1 }  { Stage4_I_3_d1 MemPortDIN2 1 32 } } }
	Stage4_I_2 { ap_memory {  { Stage4_I_2_address0 mem_address 1 8 }  { Stage4_I_2_ce0 mem_ce 1 1 }  { Stage4_I_2_we0 mem_we 1 1 }  { Stage4_I_2_d0 mem_din 1 32 }  { Stage4_I_2_address1 MemPortADDR2 1 8 }  { Stage4_I_2_ce1 MemPortCE2 1 1 }  { Stage4_I_2_we1 MemPortWE2 1 1 }  { Stage4_I_2_d1 MemPortDIN2 1 32 } } }
	Stage4_I_1 { ap_memory {  { Stage4_I_1_address0 mem_address 1 8 }  { Stage4_I_1_ce0 mem_ce 1 1 }  { Stage4_I_1_we0 mem_we 1 1 }  { Stage4_I_1_d0 mem_din 1 32 }  { Stage4_I_1_address1 MemPortADDR2 1 8 }  { Stage4_I_1_ce1 MemPortCE2 1 1 }  { Stage4_I_1_we1 MemPortWE2 1 1 }  { Stage4_I_1_d1 MemPortDIN2 1 32 } } }
	Stage4_I { ap_memory {  { Stage4_I_address0 mem_address 1 8 }  { Stage4_I_ce0 mem_ce 1 1 }  { Stage4_I_we0 mem_we 1 1 }  { Stage4_I_d0 mem_din 1 32 }  { Stage4_I_address1 MemPortADDR2 1 8 }  { Stage4_I_ce1 MemPortCE2 1 1 }  { Stage4_I_we1 MemPortWE2 1 1 }  { Stage4_I_d1 MemPortDIN2 1 32 } } }
	Stage4_R_3 { ap_memory {  { Stage4_R_3_address0 mem_address 1 8 }  { Stage4_R_3_ce0 mem_ce 1 1 }  { Stage4_R_3_we0 mem_we 1 1 }  { Stage4_R_3_d0 mem_din 1 32 }  { Stage4_R_3_address1 MemPortADDR2 1 8 }  { Stage4_R_3_ce1 MemPortCE2 1 1 }  { Stage4_R_3_we1 MemPortWE2 1 1 }  { Stage4_R_3_d1 MemPortDIN2 1 32 } } }
	Stage4_R_2 { ap_memory {  { Stage4_R_2_address0 mem_address 1 8 }  { Stage4_R_2_ce0 mem_ce 1 1 }  { Stage4_R_2_we0 mem_we 1 1 }  { Stage4_R_2_d0 mem_din 1 32 }  { Stage4_R_2_address1 MemPortADDR2 1 8 }  { Stage4_R_2_ce1 MemPortCE2 1 1 }  { Stage4_R_2_we1 MemPortWE2 1 1 }  { Stage4_R_2_d1 MemPortDIN2 1 32 } } }
	Stage4_R_1 { ap_memory {  { Stage4_R_1_address0 mem_address 1 8 }  { Stage4_R_1_ce0 mem_ce 1 1 }  { Stage4_R_1_we0 mem_we 1 1 }  { Stage4_R_1_d0 mem_din 1 32 }  { Stage4_R_1_address1 MemPortADDR2 1 8 }  { Stage4_R_1_ce1 MemPortCE2 1 1 }  { Stage4_R_1_we1 MemPortWE2 1 1 }  { Stage4_R_1_d1 MemPortDIN2 1 32 } } }
	Stage4_R { ap_memory {  { Stage4_R_address0 mem_address 1 8 }  { Stage4_R_ce0 mem_ce 1 1 }  { Stage4_R_we0 mem_we 1 1 }  { Stage4_R_d0 mem_din 1 32 }  { Stage4_R_address1 MemPortADDR2 1 8 }  { Stage4_R_ce1 MemPortCE2 1 1 }  { Stage4_R_we1 MemPortWE2 1 1 }  { Stage4_R_d1 MemPortDIN2 1 32 } } }
	Stage3_R { ap_memory {  { Stage3_R_address0 mem_address 1 8 }  { Stage3_R_ce0 mem_ce 1 1 }  { Stage3_R_q0 mem_dout 0 32 }  { Stage3_R_address1 MemPortADDR2 1 8 }  { Stage3_R_ce1 MemPortCE2 1 1 }  { Stage3_R_q1 MemPortDOUT2 0 32 } } }
	Stage3_I { ap_memory {  { Stage3_I_address0 mem_address 1 8 }  { Stage3_I_ce0 mem_ce 1 1 }  { Stage3_I_q0 mem_dout 0 32 }  { Stage3_I_address1 MemPortADDR2 1 8 }  { Stage3_I_ce1 MemPortCE2 1 1 }  { Stage3_I_q1 MemPortDOUT2 0 32 } } }
	Stage3_R_1 { ap_memory {  { Stage3_R_1_address0 mem_address 1 8 }  { Stage3_R_1_ce0 mem_ce 1 1 }  { Stage3_R_1_q0 mem_dout 0 32 }  { Stage3_R_1_address1 MemPortADDR2 1 8 }  { Stage3_R_1_ce1 MemPortCE2 1 1 }  { Stage3_R_1_q1 MemPortDOUT2 0 32 } } }
	Stage3_I_1 { ap_memory {  { Stage3_I_1_address0 mem_address 1 8 }  { Stage3_I_1_ce0 mem_ce 1 1 }  { Stage3_I_1_q0 mem_dout 0 32 }  { Stage3_I_1_address1 MemPortADDR2 1 8 }  { Stage3_I_1_ce1 MemPortCE2 1 1 }  { Stage3_I_1_q1 MemPortDOUT2 0 32 } } }
	Stage3_R_2 { ap_memory {  { Stage3_R_2_address0 mem_address 1 8 }  { Stage3_R_2_ce0 mem_ce 1 1 }  { Stage3_R_2_q0 mem_dout 0 32 }  { Stage3_R_2_address1 MemPortADDR2 1 8 }  { Stage3_R_2_ce1 MemPortCE2 1 1 }  { Stage3_R_2_q1 MemPortDOUT2 0 32 } } }
	Stage3_I_2 { ap_memory {  { Stage3_I_2_address0 mem_address 1 8 }  { Stage3_I_2_ce0 mem_ce 1 1 }  { Stage3_I_2_q0 mem_dout 0 32 }  { Stage3_I_2_address1 MemPortADDR2 1 8 }  { Stage3_I_2_ce1 MemPortCE2 1 1 }  { Stage3_I_2_q1 MemPortDOUT2 0 32 } } }
	Stage3_R_3 { ap_memory {  { Stage3_R_3_address0 mem_address 1 8 }  { Stage3_R_3_ce0 mem_ce 1 1 }  { Stage3_R_3_q0 mem_dout 0 32 }  { Stage3_R_3_address1 MemPortADDR2 1 8 }  { Stage3_R_3_ce1 MemPortCE2 1 1 }  { Stage3_R_3_q1 MemPortDOUT2 0 32 } } }
	Stage3_I_3 { ap_memory {  { Stage3_I_3_address0 mem_address 1 8 }  { Stage3_I_3_ce0 mem_ce 1 1 }  { Stage3_I_3_q0 mem_dout 0 32 }  { Stage3_I_3_address1 MemPortADDR2 1 8 }  { Stage3_I_3_ce1 MemPortCE2 1 1 }  { Stage3_I_3_q1 MemPortDOUT2 0 32 } } }
	W_real { ap_memory {  { W_real_address0 mem_address 1 9 }  { W_real_ce0 mem_ce 1 1 }  { W_real_q0 mem_dout 0 32 }  { W_real_address1 MemPortADDR2 1 9 }  { W_real_ce1 MemPortCE2 1 1 }  { W_real_q1 MemPortDOUT2 0 32 }  { W_real_address2 MemPortADDR2 1 9 }  { W_real_ce2 MemPortCE2 1 1 }  { W_real_q2 MemPortDOUT2 0 32 }  { W_real_address3 MemPortADDR2 1 9 }  { W_real_ce3 MemPortCE2 1 1 }  { W_real_q3 MemPortDOUT2 0 32 } } }
	W_imag { ap_memory {  { W_imag_address0 mem_address 1 9 }  { W_imag_ce0 mem_ce 1 1 }  { W_imag_q0 mem_dout 0 32 }  { W_imag_address1 MemPortADDR2 1 9 }  { W_imag_ce1 MemPortCE2 1 1 }  { W_imag_q1 MemPortDOUT2 0 32 }  { W_imag_address2 MemPortADDR2 1 9 }  { W_imag_ce2 MemPortCE2 1 1 }  { W_imag_q2 MemPortDOUT2 0 32 }  { W_imag_address3 MemPortADDR2 1 9 }  { W_imag_ce3 MemPortCE2 1 1 }  { W_imag_q3 MemPortDOUT2 0 32 } } }
}
