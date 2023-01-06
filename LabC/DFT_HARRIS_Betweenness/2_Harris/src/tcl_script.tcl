set Project     harris
set Solution    solution1
set Device      "xcu280-fsvh2892-2l-e"
set Flow        "vitis"
set Clock       10

open_project $Project -reset

set_top harris

add_files harris.cpp -cflags -I.
add_files harris.h -cflags -I. 
add_files -tb src.txt -cflags -I.
add_files -tb dst.txt -cflags -I.
add_files -tb harris_test.cpp -cflags -I.

open_solution -flow_target $Flow -reset $Solution
set_part $Device
create_clock -period $Clock

csim_design
csynth_design
cosim_design

exit
