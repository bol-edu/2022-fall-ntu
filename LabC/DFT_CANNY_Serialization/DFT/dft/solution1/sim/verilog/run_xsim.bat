
set PATH=
call C:/Xilinx/Vivado/2022.1/bin/xelab xil_defaultlib.apatb_dft_top glbl -Oenable_linking_all_libraries  -prj dft.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_14 --lib "ieee_proposed=./ieee_proposed" -s dft -debug wave
call C:/Xilinx/Vivado/2022.1/bin/xsim --noieeewarnings dft -tclbatch dft.tcl -view dft_dataflow_ana.wcfg -protoinst dft.protoinst

