open_project QOI
set_top top
add_files common.hpp
add_files polar_code.hpp
add_files polar_decoder.cpp
add_files polar_encoder.cpp
add_files qoi.cpp
add_files qoi.hpp
add_files top.cpp
add_files top.hpp
add_files -tb testbench.cpp
add_files -tb checker.bin

open_solution "solution1"
set_part  {xc7z020clg400-1}
create_clock -period 20

csynth_design

export_design -format ip_catalog