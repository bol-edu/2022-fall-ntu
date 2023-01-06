create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/User/Documents/HLS/LabC/DFT/dft/solution1/syn/verilog/dft_faddfsub_32ns_32ns_32_13_no_dsp_1_ip.tcl"
source "C:/Users/User/Documents/HLS/LabC/DFT/dft/solution1/syn/verilog/dft_fadd_32ns_32ns_32_13_no_dsp_1_ip.tcl"
source "C:/Users/User/Documents/HLS/LabC/DFT/dft/solution1/syn/verilog/dft_fmul_32ns_32ns_32_8_max_dsp_1_ip.tcl"
source "C:/Users/User/Documents/HLS/LabC/DFT/dft/solution1/syn/verilog/dft_fsub_32ns_32ns_32_13_no_dsp_1_ip.tcl"
