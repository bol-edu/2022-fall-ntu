# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 19
set hasByteEnable 0
set MemName dpu_keygen_KeccakF1600_StatePermute_KeccakF_RoundConstants_ROM_AUTO_1R
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 64
set AddrRange 24
set AddrWd 5
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000000000000000000000000000000000000000000000000000000000000001" "0000000000000000000000000000000000000000000000001000000010000010" "1000000000000000000000000000000000000000000000001000000010001010" "1000000000000000000000000000000010000000000000001000000000000000" "0000000000000000000000000000000000000000000000001000000010001011" "0000000000000000000000000000000010000000000000000000000000000001" "1000000000000000000000000000000010000000000000001000000010000001" "1000000000000000000000000000000000000000000000001000000000001001" "0000000000000000000000000000000000000000000000000000000010001010" "0000000000000000000000000000000000000000000000000000000010001000" "0000000000000000000000000000000010000000000000001000000000001001" "0000000000000000000000000000000010000000000000000000000000001010" "0000000000000000000000000000000010000000000000001000000010001011" "1000000000000000000000000000000000000000000000000000000010001011" "1000000000000000000000000000000000000000000000001000000010001001" "1000000000000000000000000000000000000000000000001000000000000011" "1000000000000000000000000000000000000000000000001000000000000010" "1000000000000000000000000000000000000000000000000000000010000000" "0000000000000000000000000000000000000000000000001000000000001010" "1000000000000000000000000000000010000000000000000000000000001010" "1000000000000000000000000000000010000000000000001000000010000001" "1000000000000000000000000000000000000000000000001000000010000000" "0000000000000000000000000000000010000000000000000000000000000001" "1000000000000000000000000000000010000000000000001000000000001000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.297
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
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
    id 20 \
    name this_s \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_s \
    op interface \
    ports { this_s_address0 { O 5 vector } this_s_ce0 { O 1 bit } this_s_we0 { O 1 bit } this_s_d0 { O 64 vector } this_s_q0 { I 64 vector } this_s_address1 { O 5 vector } this_s_ce1 { O 1 bit } this_s_we1 { O 1 bit } this_s_d1 { O 64 vector } this_s_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_s'"
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


