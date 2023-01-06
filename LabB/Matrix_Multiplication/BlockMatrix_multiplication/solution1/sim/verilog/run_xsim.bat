
set PATH=
call C:/Users/kevin/Desktop/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_blockmatmul_top glbl -prj blockmatmul.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "C:/Users/kevin/Desktop/Vivado/2020.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s blockmatmul 
call C:/Users/kevin/Desktop/Vivado/2020.1/bin/xsim --noieeewarnings blockmatmul -tclbatch blockmatmul.tcl

