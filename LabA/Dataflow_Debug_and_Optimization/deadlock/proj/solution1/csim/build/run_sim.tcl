# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
# Tool Version Limit: 2022.04
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/opt/Xilinx/Vitis_HLS/2022.1/lnx64/tools/fpo_v6_1
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/opt/Xilinx/Vitis_HLS/2022.1/lnx64/tools/fft_v9_1
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/opt/Xilinx/Vitis_HLS/2022.1/lnx64/tools/fir_v7_0
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/opt/Xilinx/Vitis_HLS/2022.1/lnx64/tools/dds_v6_0
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/usr/lib/x86_64-linux-gnu
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/opt/Xilinx/Vitis_HLS/2022.1/lnx64/csim
### C sim ###
if {![file exists csim.exe]} {
  puts "@E C-simulation is not set up properly. Please re-run csim."
  return -code error
}
set ret [catch {eval exec ./csim.exe | tee temp0.log >&@ stdout} err]
set logfile "temp0.log"
if {$ret || $err != ""} {
    if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
        set status [lindex $::errorCode 2]
        if {$status != ""} {
            puts "@E Simulation failed: Function \'main\' returns nonzero value \'$status\'."
            set ::AESL_CSIM::gnonzeroRetErr 1
            return -code error
        } else {
            puts "@E Simulation failed."
            return -code error
        }
    } else {
        if { [regexp {segmentation violation} $err] } {
            puts "@E Simulation failed: SIGSEGV."
        } else {
            puts "@E Simulation failed."
        }
        return -code error
    }
}

