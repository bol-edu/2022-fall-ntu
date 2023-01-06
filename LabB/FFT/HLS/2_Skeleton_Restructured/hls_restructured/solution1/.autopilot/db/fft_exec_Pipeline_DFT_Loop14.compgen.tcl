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
    id 377 \
    name Stage7_I_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Stage7_I_3 \
    op interface \
    ports { Stage7_I_3_address0 { O 8 vector } Stage7_I_3_ce0 { O 1 bit } Stage7_I_3_we0 { O 1 bit } Stage7_I_3_d0 { O 32 vector } Stage7_I_3_address1 { O 8 vector } Stage7_I_3_ce1 { O 1 bit } Stage7_I_3_we1 { O 1 bit } Stage7_I_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage7_I_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 378 \
    name Stage7_I_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Stage7_I_2 \
    op interface \
    ports { Stage7_I_2_address0 { O 8 vector } Stage7_I_2_ce0 { O 1 bit } Stage7_I_2_we0 { O 1 bit } Stage7_I_2_d0 { O 32 vector } Stage7_I_2_address1 { O 8 vector } Stage7_I_2_ce1 { O 1 bit } Stage7_I_2_we1 { O 1 bit } Stage7_I_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage7_I_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 379 \
    name Stage7_I_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Stage7_I_1 \
    op interface \
    ports { Stage7_I_1_address0 { O 8 vector } Stage7_I_1_ce0 { O 1 bit } Stage7_I_1_we0 { O 1 bit } Stage7_I_1_d0 { O 32 vector } Stage7_I_1_address1 { O 8 vector } Stage7_I_1_ce1 { O 1 bit } Stage7_I_1_we1 { O 1 bit } Stage7_I_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage7_I_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 380 \
    name Stage7_I \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Stage7_I \
    op interface \
    ports { Stage7_I_address0 { O 8 vector } Stage7_I_ce0 { O 1 bit } Stage7_I_we0 { O 1 bit } Stage7_I_d0 { O 32 vector } Stage7_I_address1 { O 8 vector } Stage7_I_ce1 { O 1 bit } Stage7_I_we1 { O 1 bit } Stage7_I_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage7_I'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 381 \
    name Stage7_R_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Stage7_R_3 \
    op interface \
    ports { Stage7_R_3_address0 { O 8 vector } Stage7_R_3_ce0 { O 1 bit } Stage7_R_3_we0 { O 1 bit } Stage7_R_3_d0 { O 32 vector } Stage7_R_3_address1 { O 8 vector } Stage7_R_3_ce1 { O 1 bit } Stage7_R_3_we1 { O 1 bit } Stage7_R_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage7_R_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 382 \
    name Stage7_R_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Stage7_R_2 \
    op interface \
    ports { Stage7_R_2_address0 { O 8 vector } Stage7_R_2_ce0 { O 1 bit } Stage7_R_2_we0 { O 1 bit } Stage7_R_2_d0 { O 32 vector } Stage7_R_2_address1 { O 8 vector } Stage7_R_2_ce1 { O 1 bit } Stage7_R_2_we1 { O 1 bit } Stage7_R_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage7_R_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 383 \
    name Stage7_R_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Stage7_R_1 \
    op interface \
    ports { Stage7_R_1_address0 { O 8 vector } Stage7_R_1_ce0 { O 1 bit } Stage7_R_1_we0 { O 1 bit } Stage7_R_1_d0 { O 32 vector } Stage7_R_1_address1 { O 8 vector } Stage7_R_1_ce1 { O 1 bit } Stage7_R_1_we1 { O 1 bit } Stage7_R_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage7_R_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 384 \
    name Stage7_R \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Stage7_R \
    op interface \
    ports { Stage7_R_address0 { O 8 vector } Stage7_R_ce0 { O 1 bit } Stage7_R_we0 { O 1 bit } Stage7_R_d0 { O 32 vector } Stage7_R_address1 { O 8 vector } Stage7_R_ce1 { O 1 bit } Stage7_R_we1 { O 1 bit } Stage7_R_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage7_R'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 385 \
    name Stage6_R \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage6_R \
    op interface \
    ports { Stage6_R_address0 { O 8 vector } Stage6_R_ce0 { O 1 bit } Stage6_R_q0 { I 32 vector } Stage6_R_address1 { O 8 vector } Stage6_R_ce1 { O 1 bit } Stage6_R_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage6_R'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 386 \
    name Stage6_I \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage6_I \
    op interface \
    ports { Stage6_I_address0 { O 8 vector } Stage6_I_ce0 { O 1 bit } Stage6_I_q0 { I 32 vector } Stage6_I_address1 { O 8 vector } Stage6_I_ce1 { O 1 bit } Stage6_I_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage6_I'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 387 \
    name Stage6_R_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage6_R_1 \
    op interface \
    ports { Stage6_R_1_address0 { O 8 vector } Stage6_R_1_ce0 { O 1 bit } Stage6_R_1_q0 { I 32 vector } Stage6_R_1_address1 { O 8 vector } Stage6_R_1_ce1 { O 1 bit } Stage6_R_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage6_R_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 388 \
    name Stage6_I_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage6_I_1 \
    op interface \
    ports { Stage6_I_1_address0 { O 8 vector } Stage6_I_1_ce0 { O 1 bit } Stage6_I_1_q0 { I 32 vector } Stage6_I_1_address1 { O 8 vector } Stage6_I_1_ce1 { O 1 bit } Stage6_I_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage6_I_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 389 \
    name Stage6_R_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage6_R_2 \
    op interface \
    ports { Stage6_R_2_address0 { O 8 vector } Stage6_R_2_ce0 { O 1 bit } Stage6_R_2_q0 { I 32 vector } Stage6_R_2_address1 { O 8 vector } Stage6_R_2_ce1 { O 1 bit } Stage6_R_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage6_R_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 390 \
    name Stage6_I_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage6_I_2 \
    op interface \
    ports { Stage6_I_2_address0 { O 8 vector } Stage6_I_2_ce0 { O 1 bit } Stage6_I_2_q0 { I 32 vector } Stage6_I_2_address1 { O 8 vector } Stage6_I_2_ce1 { O 1 bit } Stage6_I_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage6_I_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 391 \
    name Stage6_R_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage6_R_3 \
    op interface \
    ports { Stage6_R_3_address0 { O 8 vector } Stage6_R_3_ce0 { O 1 bit } Stage6_R_3_q0 { I 32 vector } Stage6_R_3_address1 { O 8 vector } Stage6_R_3_ce1 { O 1 bit } Stage6_R_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage6_R_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 392 \
    name Stage6_I_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage6_I_3 \
    op interface \
    ports { Stage6_I_3_address0 { O 8 vector } Stage6_I_3_ce0 { O 1 bit } Stage6_I_3_q0 { I 32 vector } Stage6_I_3_address1 { O 8 vector } Stage6_I_3_ce1 { O 1 bit } Stage6_I_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage6_I_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 393 \
    name W_real \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename W_real \
    op interface \
    ports { W_real_address0 { O 9 vector } W_real_ce0 { O 1 bit } W_real_q0 { I 32 vector } W_real_address1 { O 9 vector } W_real_ce1 { O 1 bit } W_real_q1 { I 32 vector } W_real_address2 { O 9 vector } W_real_ce2 { O 1 bit } W_real_q2 { I 32 vector } W_real_address3 { O 9 vector } W_real_ce3 { O 1 bit } W_real_q3 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'W_real'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 394 \
    name W_imag \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename W_imag \
    op interface \
    ports { W_imag_address0 { O 9 vector } W_imag_ce0 { O 1 bit } W_imag_q0 { I 32 vector } W_imag_address1 { O 9 vector } W_imag_ce1 { O 1 bit } W_imag_q1 { I 32 vector } W_imag_address2 { O 9 vector } W_imag_ce2 { O 1 bit } W_imag_q2 { I 32 vector } W_imag_address3 { O 9 vector } W_imag_ce3 { O 1 bit } W_imag_q3 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'W_imag'"
}
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


