`ifndef PP_LOOP_INTF__SV
    `define PP_LOOP_INTF__SV
    `timescale 1ns/1ps
    interface pp_loop_intf#(parameter FSM_WIDTH = 2)(input clock,input reset);
        logic [FSM_WIDTH-1:0] cur_state;
        logic pre_states_valid;
        logic [FSM_WIDTH-1:0] pre_loop_state0;
        logic [1:0] post_states_valid;
        logic [FSM_WIDTH-1:0] post_loop_state0;
        logic [FSM_WIDTH-1:0] post_loop_state1;
        logic [FSM_WIDTH-1:0] loop_quit_state;
        logic [FSM_WIDTH-1:0] iter_start_state;
        logic  iter_start_enable;
        logic  iter_start_block;
        logic [FSM_WIDTH-1:0] iter_end_state;
        logic  iter_end_enable;
        logic  iter_end_block;
        logic  quit_at_end;
        logic  finish;
    endinterface
`endif
