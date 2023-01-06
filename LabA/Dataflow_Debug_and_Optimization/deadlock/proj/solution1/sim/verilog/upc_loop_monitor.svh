`ifndef UPC_LOOP_MONITOR__SV
    `define UPC_LOOP_MONITOR__SV
    class upc_loop_monitor#(FSM_WIDTH=2) extends loop_sample_agent;

        virtual upc_loop_intf #(FSM_WIDTH) in_intf;
        logic ready_for_new_start;
        logic [31:0] total_run_time;
        logic  last_iter_start_enable;
        logic  last_iter_start_block;

        function new(virtual upc_loop_intf #(FSM_WIDTH) intf_inst,dump_file_agent file_inst);
            super.new(file_inst);
            this.in_intf = intf_inst;
            this.total_run_time = 32'h0;
            this.ready_for_new_start = 1'b1;
            this.last_iter_start_enable = 1'b0;
            this.last_iter_start_block = 1'b0;
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
            this.ready_for_new_start = 1'b1;
            forever begin
                @(posedge in_intf.clock);
                this.total_run_time = this.total_run_time + 32'h1;
                if (in_intf.loop_start == 1'b1 && this.ready_for_new_start == 1'b1) begin
                    this.loop_start_arr.push_back(this.total_run_time);
                    this.ready_for_new_start = 1'b0;
                    this.iter_start_index.push_back(this.iter_start_arr.size);
                end
                if ((in_intf.iter_start_state == in_intf.cur_state) && (in_intf.iter_start_enable == 1'b1) && (this.last_iter_start_enable == 1'b0 || (this.last_iter_start_enable == 1'b1 && this.last_iter_start_block == 1'b0))) begin
                    this.iter_start_arr.push_back(this.total_run_time);
                end
                if ((in_intf.iter_end_state == in_intf.cur_state) && (in_intf.iter_end_enable == 1'b1) && (in_intf.iter_end_block == 1'b0)) begin
                    this.iter_end_arr.push_back(this.total_run_time);
                end
                //if ((in_intf.quit_at_end == 1'b0) && (in_intf.loop_done == 1'b1) && (in_intf.quit_state == in_intf.cur_state) && (in_intf.quit_enable == 1'b1) && (in_intf.quit_block == 1'b0)) begin
                //    this.iter_end_arr.push_back(this.total_run_time);
                //end
                if ((in_intf.loop_done == 1'b1) && (in_intf.loop_continue == 1'b1)) begin
                    this.loop_end_arr.push_back(this.total_run_time);
                    //this.iter_end_arr.pop_back();// UPC will always monitor the last iteration with exit condition true
                    this.iter_cnt.push_back(this.iter_end_arr.size);
                end
                if ((in_intf.loop_start == 1'b1) && (in_intf.loop_ready == 1'b1)) begin
                    this.ready_for_new_start = 1'b1;
                end
                this.last_iter_start_enable = in_intf.iter_start_enable;
                if (in_intf.cur_state == in_intf.iter_start_state)
                    this.last_iter_start_block = in_intf.iter_start_block;
                if (in_intf.finish == 1'b1)
                    break;
            end
        endtask

    endclass
`endif
