# This script segment is generated automatically by AutoPilot

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
    id 526 \
    name this_pMem \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_pMem \
    op interface \
    ports { this_pMem_address0 { O 8 vector } this_pMem_ce0 { O 1 bit } this_pMem_we0 { O 1024 vector } this_pMem_d0 { O 8192 vector } this_pMem_q0 { I 8192 vector } this_pMem_address1 { O 8 vector } this_pMem_ce1 { O 1 bit } this_pMem_q1 { I 8192 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_pMem'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name this_p1_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_p1_7_reload \
    op interface \
    ports { this_p1_7_reload { I 8192 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name this_pMem_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_pMem_load_12 \
    op interface \
    ports { this_pMem_load_12 { I 8192 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name this_p3_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_p3_7_reload \
    op interface \
    ports { this_p3_7_reload { I 8192 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name this_p4_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_p4_7_reload \
    op interface \
    ports { this_p4_7_reload { I 8192 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name itr_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itr_cast \
    op interface \
    ports { itr_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name addr3_cast_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_addr3_cast_cast \
    op interface \
    ports { addr3_cast_cast { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name this_p1_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_this_p1_8_out \
    op interface \
    ports { this_p1_8_out { O 8192 vector } this_p1_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name this_p2_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_this_p2_4_out \
    op interface \
    ports { this_p2_4_out { O 8192 vector } this_p2_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name this_p3_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_this_p3_8_out \
    op interface \
    ports { this_p3_8_out { O 8192 vector } this_p3_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name this_p4_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_this_p4_8_out \
    op interface \
    ports { this_p4_8_out { O 8192 vector } this_p4_8_out_ap_vld { O 1 bit } } \
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
set InstName dpu_keygen_flow_control_loop_pipe_sequential_init_U
set CompName dpu_keygen_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix dpu_keygen_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


