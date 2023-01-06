`ifndef SEQ_LOOP_MONITOR__SV
    `define SEQ_LOOP_MONITOR__SV
    class seq_loop_monitor#(FSM_WIDTH=2) extends loop_sample_agent;
        virtual seq_loop_intf #(FSM_WIDTH) in_intf;
        logic [FSM_WIDTH-1:0] last_state;
        logic  last_state_block;
        logic [31:0] total_run_time;

        function new(virtual seq_loop_intf #(FSM_WIDTH) intf_inst,dump_file_agent file_inst);
            super.new(file_inst);
            this.in_intf = intf_inst;
            this.total_run_time = 32'h0;
            this.last_state = 0;
            this.last_state_block = 0;
            for (integer i=0;i<12;i++)
                this.performance_arr[i] = 32'hffff_ffff;// initial to -1
        endfunction

        virtual function void output_to_file();
            collect_performance();
            this.file_dumper.open_file();
            this.file_dumper.dump_1_col(performance_arr);
            this.file_dumper.dump_1_line(loop_start_arr,loop_end_arr);
            this.file_dumper.dump_1_line_sep(iter_start_arr,iter_end_arr,iter_cnt);
            this.file_dumper.finish_dump();
        endfunction

        virtual task data_monitor();
            wait(in_intf.reset == 0);
            forever begin
                @(posedge in_intf.clock);
                this.total_run_time = this.total_run_time + 32'h1;
                if (in_intf.cur_state == in_intf.iter_start_state && (this.last_state == in_intf.pre_loop_state0 && in_intf.pre_states_valid == 1'b1)) begin
                    this.loop_start_arr.push_back(this.total_run_time);
                    this.iter_start_index.push_back(this.iter_start_arr.size);
                end
                if (in_intf.cur_state == in_intf.iter_start_state && ((this.last_state == in_intf.pre_loop_state0 && in_intf.pre_states_valid == 1'b1) || (this.last_state == in_intf.iter_end_state0 && in_intf.iter_end_states_valid == 1'b1)) && in_intf.one_state_loop == 1'b0) begin
                    this.iter_start_arr.push_back(this.total_run_time);
                 end else if (in_intf.cur_state == in_intf.iter_start_state && this.last_state_block == 1'b0 && in_intf.one_state_loop == 1'b1) begin
                    this.iter_start_arr.push_back(this.total_run_time);
                end
                if (in_intf.cur_state == in_intf.iter_start_state && (this.last_state == in_intf.iter_end_state0 && in_intf.iter_end_states_valid == 1'b1) && in_intf.one_state_loop == 1'b0) begin
                    this.iter_end_arr.push_back(this.total_run_time - 1);
                end else if (in_intf.cur_state == in_intf.iter_start_state && in_intf.one_state_block == 1'b0 && in_intf.one_state_loop == 1'b1) begin
                    this.iter_end_arr.push_back(this.total_run_time);
                end
                if ((this.last_state == in_intf.quit_loop_state0 && in_intf.quit_states_valid == 1'b1) && ((in_intf.cur_state == in_intf.post_loop_state0 && in_intf.post_states_valid[0] == 1'b1) || (in_intf.cur_state == in_intf.post_loop_state1 && in_intf.post_states_valid[1] == 1'b1))) begin
                    this.loop_end_arr.push_back(this.total_run_time - 1);
                    if (this.last_state != in_intf.iter_start_state) begin
                        this.iter_end_arr.push_back(this.total_run_time - 1);
                    end
                    this.iter_cnt.push_back(this.iter_end_arr.size);
                end
                this.last_state = in_intf.cur_state;
                this.last_state_block = in_intf.one_state_block;
                if (in_intf.finish == 1'b1)
                    break;
            end
        endtask

    endclass
`endif
