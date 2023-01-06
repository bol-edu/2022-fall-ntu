# This script segment is generated automatically by AutoPilot

set id 655
set name fft_mux_42_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 659 \
    name OUT_R_o_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename OUT_R_o_0 \
    op interface \
    ports { OUT_R_o_0_address0 { O 8 vector } OUT_R_o_0_ce0 { O 1 bit } OUT_R_o_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_R_o_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 660 \
    name OUT_R_o_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename OUT_R_o_1 \
    op interface \
    ports { OUT_R_o_1_address0 { O 8 vector } OUT_R_o_1_ce0 { O 1 bit } OUT_R_o_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_R_o_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 661 \
    name OUT_R_o_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename OUT_R_o_2 \
    op interface \
    ports { OUT_R_o_2_address0 { O 8 vector } OUT_R_o_2_ce0 { O 1 bit } OUT_R_o_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_R_o_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 662 \
    name OUT_R_o_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename OUT_R_o_3 \
    op interface \
    ports { OUT_R_o_3_address0 { O 8 vector } OUT_R_o_3_ce0 { O 1 bit } OUT_R_o_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_R_o_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name output_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_1 \
    op interface \
    ports { m_axi_output_1_AWVALID { O 1 bit } m_axi_output_1_AWREADY { I 1 bit } m_axi_output_1_AWADDR { O 64 vector } m_axi_output_1_AWID { O 1 vector } m_axi_output_1_AWLEN { O 32 vector } m_axi_output_1_AWSIZE { O 3 vector } m_axi_output_1_AWBURST { O 2 vector } m_axi_output_1_AWLOCK { O 2 vector } m_axi_output_1_AWCACHE { O 4 vector } m_axi_output_1_AWPROT { O 3 vector } m_axi_output_1_AWQOS { O 4 vector } m_axi_output_1_AWREGION { O 4 vector } m_axi_output_1_AWUSER { O 1 vector } m_axi_output_1_WVALID { O 1 bit } m_axi_output_1_WREADY { I 1 bit } m_axi_output_1_WDATA { O 32 vector } m_axi_output_1_WSTRB { O 4 vector } m_axi_output_1_WLAST { O 1 bit } m_axi_output_1_WID { O 1 vector } m_axi_output_1_WUSER { O 1 vector } m_axi_output_1_ARVALID { O 1 bit } m_axi_output_1_ARREADY { I 1 bit } m_axi_output_1_ARADDR { O 64 vector } m_axi_output_1_ARID { O 1 vector } m_axi_output_1_ARLEN { O 32 vector } m_axi_output_1_ARSIZE { O 3 vector } m_axi_output_1_ARBURST { O 2 vector } m_axi_output_1_ARLOCK { O 2 vector } m_axi_output_1_ARCACHE { O 4 vector } m_axi_output_1_ARPROT { O 3 vector } m_axi_output_1_ARQOS { O 4 vector } m_axi_output_1_ARREGION { O 4 vector } m_axi_output_1_ARUSER { O 1 vector } m_axi_output_1_RVALID { I 1 bit } m_axi_output_1_RREADY { O 1 bit } m_axi_output_1_RDATA { I 32 vector } m_axi_output_1_RLAST { I 1 bit } m_axi_output_1_RID { I 1 vector } m_axi_output_1_RFIFONUM { I 9 vector } m_axi_output_1_RUSER { I 1 vector } m_axi_output_1_RRESP { I 2 vector } m_axi_output_1_BVALID { I 1 bit } m_axi_output_1_BREADY { O 1 bit } m_axi_output_1_BRESP { I 2 vector } m_axi_output_1_BID { I 1 vector } m_axi_output_1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 658 \
    name sext_ln36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln36 \
    op interface \
    ports { sext_ln36 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName fft_flow_control_loop_pipe_sequential_init_U
set CompName fft_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix fft_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


