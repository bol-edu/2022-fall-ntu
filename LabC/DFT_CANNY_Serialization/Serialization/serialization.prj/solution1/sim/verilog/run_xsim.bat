
set PATH=
call C:/Xilinx/Vivado/2022.1/bin/xelab xil_defaultlib.apatb_dut_top glbl -Oenable_linking_all_libraries  -prj dut.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_14 --lib "ieee_proposed=./ieee_proposed" -s dut -debug wave
call C:/Xilinx/Vivado/2022.1/bin/xsim --noieeewarnings dut -tclbatch dut.tcl -view dut_dataflow_ana.wcfg -protoinst dut.protoinst

