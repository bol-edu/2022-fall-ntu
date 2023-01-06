
set FREQ_MHZ 100
set NUM_AXILITE 2
if {$NUM_AXILITE > 9} {
    error "Maximum 10 AXI-Lite interfaces supported"
}
set NUM_AXIMM 2
set BOARD Pynq-Z2
set FPGA_PART xc7z020clg400-1
create_project finn_zynq_link ./ -part $FPGA_PART

# set board part repo paths to find PYNQ-Z1/Z2
set paths_prop [get_property BOARD_PART_REPO_PATHS [current_project]]
set paths_param [get_param board.repoPaths]
lappend paths_prop $::env(FINN_ROOT)/deps/board_files
lappend paths_param $::env(FINN_ROOT)/deps/board_files
set_property BOARD_PART_REPO_PATHS $paths_prop [current_project]
set_param board.repoPaths $paths_param

if {$BOARD == "ZCU104"} {
    set_property board_part xilinx.com:zcu104:part0:1.1 [current_project]
    set ZYNQ_TYPE "zynq_us+"
} elseif {$BOARD == "ZCU102"} {
    set_property board_part xilinx.com:zcu102:part0:3.3 [current_project]
    set ZYNQ_TYPE "zynq_us+"
} elseif {$BOARD == "RFSoC2x2"} {
    set_property board_part xilinx.com:rfsoc2x2:part0:1.1 [current_project]
    set ZYNQ_TYPE "zynq_us+"
} elseif {$BOARD == "Ultra96"} {
    set_property board_part avnet.com:ultra96v1:part0:1.2 [current_project]
    set ZYNQ_TYPE "zynq_us+"
} elseif {$BOARD == "Pynq-Z2"} {
    set ZYNQ_TYPE "zynq_7000"
    set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
} elseif {$BOARD == "Pynq-Z1"} {
    set ZYNQ_TYPE "zynq_7000"
    set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]
} else {
    puts "Unrecognized board"
}

create_bd_design "top"
if {$ZYNQ_TYPE == "zynq_us+"} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.4 zynq_ps
    apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset "1" }  [get_bd_cells zynq_ps]
    #activate one slave port, deactivate the second master port
    set_property -dict [list CONFIG.PSU__USE__S_AXI_GP2 {1}] [get_bd_cells zynq_ps]
    set_property -dict [list CONFIG.PSU__USE__M_AXI_GP1 {0}] [get_bd_cells zynq_ps]
    #set frequency of PS clock (this can't always be exactly met)
    set_property -dict [list CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0}] [get_bd_cells zynq_ps]
    set_property -dict [list CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ [expr int($FREQ_MHZ)]] [get_bd_cells zynq_ps]
} elseif {$ZYNQ_TYPE == "zynq_7000"} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 zynq_ps
    apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells zynq_ps]
    set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1}] [get_bd_cells zynq_ps]
    set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ [expr int($FREQ_MHZ)]] [get_bd_cells zynq_ps]
} else {
    puts "Unrecognized Zynq type"
}

#instantiate axi interconnect, axi smartconnect
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0
#set number of axilite interfaces, and number of axi master interfaces
set_property -dict [list CONFIG.NUM_SI $NUM_AXIMM] [get_bd_cells smartconnect_0]
set_property -dict [list CONFIG.NUM_MI $NUM_AXILITE] [get_bd_cells axi_interconnect_0]

#create reset controller and connect interconnects to PS
if {$ZYNQ_TYPE == "zynq_us+"} {
    set axi_peripheral_base 0xA0000000
    connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins zynq_ps/S_AXI_HP0_FPD]
    connect_bd_intf_net [get_bd_intf_pins zynq_ps/M_AXI_HPM0_FPD] -boundary_type upper [get_bd_intf_pins axi_interconnect_0/S00_AXI]
    #connect interconnect clocks and resets
    apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ps/pl_clk0} Freq {} Ref_Clk0 {} Ref_Clk1 {} Ref_Clk2 {}}  [get_bd_pins axi_interconnect_0/ACLK]
    apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ps/pl_clk0} Freq {} Ref_Clk0 {} Ref_Clk1 {} Ref_Clk2 {}}  [get_bd_pins axi_interconnect_0/S00_ACLK]
    apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ps/pl_clk0} Freq {} Ref_Clk0 {} Ref_Clk1 {} Ref_Clk2 {}}  [get_bd_pins zynq_ps/saxihp0_fpd_aclk]
} elseif {$ZYNQ_TYPE == "zynq_7000"} {
    set axi_peripheral_base 0x40000000
    connect_bd_intf_net -boundary_type upper [get_bd_intf_pins zynq_ps/M_AXI_GP0] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
    connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins zynq_ps/S_AXI_HP0]
    apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ps/FCLK_CLK0} Freq {} Ref_Clk0 {} Ref_Clk1 {} Ref_Clk2 {}}  [get_bd_pins axi_interconnect_0/ACLK]
    apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ps/FCLK_CLK0} Freq {} Ref_Clk0 {} Ref_Clk1 {} Ref_Clk2 {}}  [get_bd_pins axi_interconnect_0/S00_ACLK]
    apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ps/FCLK_CLK0} Freq {} Ref_Clk0 {} Ref_Clk1 {} Ref_Clk2 {}}  [get_bd_pins zynq_ps/S_AXI_HP0_ACLK]
}
connect_bd_net [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins smartconnect_0/aresetn]

#procedure used by below IP instantiations to map BD address segments based on the axi interface aperture
proc assign_axi_addr_proc {axi_intf_path} {
    #global variable holds current base address
    global axi_peripheral_base
    #infer range
    set range [expr 2**[get_property CONFIG.ADDR_WIDTH [get_bd_intf_pins $axi_intf_path]]]
    set range [expr $range < 4096 ? 4096 : $range]
    #align base address to range
    set offset [expr ($axi_peripheral_base + ($range-1)) & ~($range-1)]
    #perform assignment
    assign_bd_address [get_bd_addr_segs $axi_intf_path/Reg*] -offset $offset -range $range
    #advance base address
    set axi_peripheral_base [expr $offset + $range]
}

#custom IP instantiations/connections start here
set_property ip_repo_paths [concat [get_property ip_repo_paths [current_project]] [list /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_0_IODMA_0_oiqtyo8k/project_StreamingDataflowPartition_0_IODMA_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_34mimd_p/ip]] [current_project]
update_ip_catalog -rebuild -scan_changes
create_bd_cell -type ip -vlnv xilinx_finn:finn:StreamingDataflowPartition_0:1.0 idma0
connect_bd_intf_net [get_bd_intf_pins idma0/m_axi_gmem0] [get_bd_intf_pins smartconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins idma0/s_axi_control_0] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
assign_axi_addr_proc idma0/s_axi_control_0
connect_bd_net [get_bd_pins idma0/ap_clk] [get_bd_pins smartconnect_0/aclk]
connect_bd_net [get_bd_pins idma0/ap_rst_n] [get_bd_pins smartconnect_0/aresetn]
set_property ip_repo_paths [concat [get_property ip_repo_paths [current_project]] [list /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_0_hcs32cw6/project_StreamingDataflowPartition_1_StreamingFIFO_0/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_0_2hkffz68/project_StreamingDataflowPartition_1_Thresholding_Batch_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_eom2jd6l/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_0_gbq1dprb/project_StreamingDataflowPartition_1_FMPadding_Batch_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_0__mro12ar/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_1_loxhbvh9/project_StreamingDataflowPartition_1_StreamingFIFO_1/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_0_vdnuk9r7/project_StreamingDataflowPartition_1_MatrixVectorActivation_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_ob1n6mhp/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_0_9_sre2py/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_knh2tqd9/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_u5lhz2x3/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_1_qqqn_vm6/project_StreamingDataflowPartition_1_FMPadding_Batch_1/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DownSampler_0_r2j3sq54/project_StreamingDataflowPartition_1_DownSampler_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_f4t58ocd/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_91a9t9eb/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_2_byz3bu4g/project_StreamingDataflowPartition_1_StreamingFIFO_2/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_1_lf75f1t8/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_1/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_3_kq1f0fjr/project_StreamingDataflowPartition_1_StreamingFIFO_3/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_1_nwqll47l/project_StreamingDataflowPartition_1_MatrixVectorActivation_1/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_z6jri9ly/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_2_4qgb6dm8/project_StreamingDataflowPartition_1_MatrixVectorActivation_2/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_hf909l3a/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_2_03wunw4v/project_StreamingDataflowPartition_1_FMPadding_Batch_2/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_1zdrr6rx/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_2_smteaear/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_2/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_4_ew3gn8n0/project_StreamingDataflowPartition_1_StreamingFIFO_4/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_3_wjwc2wfb/project_StreamingDataflowPartition_1_MatrixVectorActivation_3/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9_r3pconos/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_9/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_0_3bl8x49a/project_StreamingDataflowPartition_1_AddStreams_Batch_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_1_698mpms5/project_StreamingDataflowPartition_1_Thresholding_Batch_1/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_1_9rtkilvk/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_1/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10_qdgt6oru/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_10/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11_lamhi9bj/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_11/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_3_e3rqtzrk/project_StreamingDataflowPartition_1_FMPadding_Batch_3/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DownSampler_1_8z6hksx3/project_StreamingDataflowPartition_1_DownSampler_1/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12_srt92uhw/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_12/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13_38zv5cwd/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_13/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_5_b5podlbb/project_StreamingDataflowPartition_1_StreamingFIFO_5/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_3_thk_wy39/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_3/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_6_cswp0zqa/project_StreamingDataflowPartition_1_StreamingFIFO_6/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_4_l15czz7y/project_StreamingDataflowPartition_1_MatrixVectorActivation_4/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14_cg2ip7xl/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_14/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_5_pbhs87jk/project_StreamingDataflowPartition_1_MatrixVectorActivation_5/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15_odee9h53/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_15/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_4_ggman5yj/project_StreamingDataflowPartition_1_FMPadding_Batch_4/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16_4h3m4ixc/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_16/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_4_i1je5cga/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_4/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_7_6_89_4fi/project_StreamingDataflowPartition_1_StreamingFIFO_7/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_6_ekgpc_6o/project_StreamingDataflowPartition_1_MatrixVectorActivation_6/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_1_t5om4ape/project_StreamingDataflowPartition_1_AddStreams_Batch_1/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_2_9xa49pc2/project_StreamingDataflowPartition_1_Thresholding_Batch_2/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DuplicateStreams_Batch_2_hlbdou86/project_StreamingDataflowPartition_1_DuplicateStreams_Batch_2/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17_hwa1mncs/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_17/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_18_nryyabvx/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_18/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_5_sarappc8/project_StreamingDataflowPartition_1_FMPadding_Batch_5/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_DownSampler_2_cqxf_ld5/project_StreamingDataflowPartition_1_DownSampler_2/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_19_vczyxuxo/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_19/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_20_vt2w20tz/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_20/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_8_on_g_13e/project_StreamingDataflowPartition_1_StreamingFIFO_8/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_5_gao79p9m/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_5/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_9_tre5azv1/project_StreamingDataflowPartition_1_StreamingFIFO_9/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_7_kp0kdjm0/project_StreamingDataflowPartition_1_MatrixVectorActivation_7/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_8_s_oyhrpk/project_StreamingDataflowPartition_1_MatrixVectorActivation_8/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_21_yqsakz_2/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_21/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_FMPadding_Batch_6_zdbku4yx/project_StreamingDataflowPartition_1_FMPadding_Batch_6/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_22_cs33vp6x/project_StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_22/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_ConvolutionInputGenerator_6_e0ev0vtk/project_StreamingDataflowPartition_1_ConvolutionInputGenerator_6/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_10_3ry6ovpz/project_StreamingDataflowPartition_1_StreamingFIFO_10/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_MatrixVectorActivation_9_d2snx_yf/project_StreamingDataflowPartition_1_MatrixVectorActivation_9/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_AddStreams_Batch_2_wh3p7g75/project_StreamingDataflowPartition_1_AddStreams_Batch_2/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_Thresholding_Batch_3_iq93ev6e/project_StreamingDataflowPartition_1_Thresholding_Batch_3/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFIFO_11__dm2iqtb/project_StreamingDataflowPartition_1_StreamingFIFO_11/sol1/impl/verilog /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_607znna7/ip $::env(FINN_ROOT)/finn-rtllib/memstream]] [current_project]
update_ip_catalog -rebuild -scan_changes
create_bd_cell -type ip -vlnv xilinx_finn:finn:StreamingDataflowPartition_1:1.0 StreamingDataflowPartition_1
connect_bd_net [get_bd_pins StreamingDataflowPartition_1/ap_clk] [get_bd_pins smartconnect_0/aclk]
connect_bd_net [get_bd_pins StreamingDataflowPartition_1/ap_rst_n] [get_bd_pins smartconnect_0/aresetn]
connect_bd_intf_net [get_bd_intf_pins StreamingDataflowPartition_1/s_axis_0] [get_bd_intf_pins idma0/m_axis_0]
set_property ip_repo_paths [concat [get_property ip_repo_paths [current_project]] [list /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/code_gen_ipgen_StreamingDataflowPartition_2_IODMA_0_4kejk8bo/project_StreamingDataflowPartition_2_IODMA_0/sol1/impl/ip /home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_stitch_proj_2e5siq3k/ip]] [current_project]
update_ip_catalog -rebuild -scan_changes
create_bd_cell -type ip -vlnv xilinx_finn:finn:StreamingDataflowPartition_2:1.0 odma0
connect_bd_intf_net [get_bd_intf_pins odma0/m_axi_gmem0] [get_bd_intf_pins smartconnect_0/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins odma0/s_axi_control_0] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
assign_axi_addr_proc odma0/s_axi_control_0
connect_bd_net [get_bd_pins odma0/ap_clk] [get_bd_pins smartconnect_0/aclk]
connect_bd_net [get_bd_pins odma0/ap_rst_n] [get_bd_pins smartconnect_0/aresetn]
connect_bd_intf_net [get_bd_intf_pins odma0/s_axis_0] [get_bd_intf_pins StreamingDataflowPartition_1/m_axis_0]


# set up debug
if {0 == 1} {
    set_property HDL_ATTRIBUTE.DEBUG true [get_bd_intf_nets {idma0_m_axis_0}]
    set_property HDL_ATTRIBUTE.DEBUG true [get_bd_intf_nets {StreamingDataflowPartition_1_m_axis_0}]
    set_property HDL_ATTRIBUTE.DEBUG true [get_bd_intf_nets {smartconnect_0_M00_AXI}]
    apply_bd_automation -rule xilinx.com:bd_rule:debug -dict [list                                                               [get_bd_intf_nets smartconnect_0_M00_AXI] {AXI_R_ADDRESS "Data and Trigger" AXI_R_DATA "Data and Trigger" AXI_W_ADDRESS "Data and Trigger" AXI_W_DATA "Data and Trigger" AXI_W_RESPONSE "Data and Trigger" CLK_SRC "/zynq_ps/FCLK_CLK0" SYSTEM_ILA "Auto" APC_EN "0" }                                                               [get_bd_intf_nets idma0_m_axis_0] {AXIS_SIGNALS "Data and Trigger" CLK_SRC "/zynq_ps/FCLK_CLK0" SYSTEM_ILA "Auto" APC_EN "0" }                                                               [get_bd_intf_nets StreamingDataflowPartition_1_m_axis_0] {AXIS_SIGNALS "Data and Trigger" CLK_SRC "/zynq_ps/FCLK_CLK0" SYSTEM_ILA "Auto" APC_EN "0" }                                                              ]
}

#finalize clock and reset connections for interconnects
if {$ZYNQ_TYPE == "zynq_us+"} {
    apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ps/pl_clk0} }  [get_bd_pins axi_interconnect_0/M*_ACLK]
} elseif {$ZYNQ_TYPE == "zynq_7000"} {
    apply_bd_automation -rule xilinx.com:bd_rule:clkrst -config { Clk {/zynq_ps/FCLK_CLK0} }  [get_bd_pins axi_interconnect_0/M*_ACLK]
}

save_bd_design
assign_bd_address
validate_bd_design

set_property SYNTH_CHECKPOINT_MODE "Hierarchical" [ get_files top.bd ]
make_wrapper -files [get_files top.bd] -import -fileset sources_1 -top

set_property strategy Flow_PerfOptimized_high [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.DIRECTIVE AlternateRoutability [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs synth_1]
set_property strategy Performance_ExtraTimingOpt [get_runs impl_1]
set_property STEPS.OPT_DESIGN.ARGS.DIRECTIVE Explore [get_runs impl_1]
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.DIRECTIVE AggressiveExplore [get_runs impl_1]
set_property STEPS.PHYS_OPT_DESIGN.ARGS.DIRECTIVE AggressiveExplore [get_runs impl_1]
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]

# out-of-context synth can't be used for bitstream generation
# set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
launch_runs -to_step write_bitstream impl_1
wait_on_run [get_runs impl_1]

# generate synthesis report
open_run impl_1
report_utilization -hierarchical -hierarchical_depth 4 -file synth_report.xml -format xml
close_project
