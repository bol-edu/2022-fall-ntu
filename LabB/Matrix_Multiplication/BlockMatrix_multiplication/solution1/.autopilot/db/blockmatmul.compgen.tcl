# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 16
set hasByteEnable 0
set MemName blockmatmul_AB_memcore
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 32
set AddrRange 16
set AddrWd 4
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 10
set RegisteredInput 0
set memSimGenFunc ap_gen_simcore_mem
set memImplGenFunc ::AESL_LIB_VIRTEX::xil_gen_RAM
eval "set memGenArgs  { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "

set Depth 2
set FullThresh 0
set CoreName ap_simcore_mem_df_channel
set MemName blockmatmul_AB
if {${::AESL::PGuard_autocg_gen} || ${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem_df_channel] == "ap_gen_simcore_mem_df_channel"} {
    eval "ap_gen_simcore_mem_df_channel { \
    id ${ID} \
    name ${MemName} \
    memcorename ${MemName}_memcore \
    corename ${CoreName} \
    op mem_df_channel \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage} \
    max_latency ${MaxLatency} \
    registered_input ${RegisteredInput} \
    port_num 2 \
    use_pre_full 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
    depth ${Depth} \
    full_thresh ${FullThresh} \
    memSimGenFunc $memSimGenFunc\
    memImplGenFunc $memImplGenFunc\
    memGenArgs \{$memGenArgs\} \
} "
} else {
puts "@W \[IMPL-105\] Cannot find ap_gen_simcore_mem_df_channel, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name ABpartial_out \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename ABpartial_out \
    op interface \
    ports { ABpartial_out_address0 { O 4 vector } ABpartial_out_ce0 { O 1 bit } ABpartial_out_d0 { O 32 vector } ABpartial_out_q0 { I 32 vector } ABpartial_out_we0 { O 1 bit } ABpartial_out_address1 { O 4 vector } ABpartial_out_ce1 { O 1 bit } ABpartial_out_d1 { O 32 vector } ABpartial_out_q1 { I 32 vector } ABpartial_out_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ABpartial_out'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name Arows_V_a_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows_V_a_0 \
    op interface \
    ports { Arows_V_a_0_dout { I 32 vector } Arows_V_a_0_empty_n { I 1 bit } Arows_V_a_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name Arows_V_a_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows_V_a_1 \
    op interface \
    ports { Arows_V_a_1_dout { I 32 vector } Arows_V_a_1_empty_n { I 1 bit } Arows_V_a_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name Arows_V_a_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows_V_a_2 \
    op interface \
    ports { Arows_V_a_2_dout { I 32 vector } Arows_V_a_2_empty_n { I 1 bit } Arows_V_a_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name Arows_V_a_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Arows_V_a_3 \
    op interface \
    ports { Arows_V_a_3_dout { I 32 vector } Arows_V_a_3_empty_n { I 1 bit } Arows_V_a_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name Bcols_V_a_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bcols_V_a_0 \
    op interface \
    ports { Bcols_V_a_0_dout { I 32 vector } Bcols_V_a_0_empty_n { I 1 bit } Bcols_V_a_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name Bcols_V_a_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bcols_V_a_1 \
    op interface \
    ports { Bcols_V_a_1_dout { I 32 vector } Bcols_V_a_1_empty_n { I 1 bit } Bcols_V_a_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name Bcols_V_a_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bcols_V_a_2 \
    op interface \
    ports { Bcols_V_a_2_dout { I 32 vector } Bcols_V_a_2_empty_n { I 1 bit } Bcols_V_a_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name Bcols_V_a_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bcols_V_a_3 \
    op interface \
    ports { Bcols_V_a_3_dout { I 32 vector } Bcols_V_a_3_empty_n { I 1 bit } Bcols_V_a_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name it \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_it \
    op interface \
    ports { it { I 32 vector } } \
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


