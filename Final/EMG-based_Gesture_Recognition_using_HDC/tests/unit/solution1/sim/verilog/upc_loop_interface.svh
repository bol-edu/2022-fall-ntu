`ifndef UPC_LOOP_INTF__SV
    `define UPC_LOOP_INTF__SV
    `timescale 1ns/1ps
    interface upc_loop_intf#(parameter FSM_WIDTH = 2)(input clock, input reset);
        logic loop_start;
        logic loop_ready;
        logic loop_done;
        logic loop_continue;
        logic [FSM_WIDTH-1:0] cur_state;
        logic [FSM_WIDTH-1:0] iter_start_state;
        logic  iter_start_enable;
        logic  iter_start_block;
        logic [FSM_WIDTH-1:0] iter_end_state;
        logic  iter_end_enable;
        logic  iter_end_block;
        logic [FSM_WIDTH-1:0] quit_state;
        logic  quit_enable;
        logic  quit_block;
        logic  quit_at_end;
        logic  finish;
    endinterface
`endif
