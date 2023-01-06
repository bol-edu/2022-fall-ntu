#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tool/Xilinx/Vitis/2022.1/bin:/tool/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/tool/Xilinx/Vivado/2022.1/bin
else
  PATH=/tool/Xilinx/Vitis/2022.1/bin:/tool/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/tool/Xilinx/Vivado/2022.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/yhp/Documents/Class/111-1_HLS/course-lab_finn/course-lab_finn/FINN_v0.8_lab_packv2/finn/build/vivado_zynq_proj_v51lm0sq/finn_zynq_link.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log top_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source top_wrapper.tcl -notrace


