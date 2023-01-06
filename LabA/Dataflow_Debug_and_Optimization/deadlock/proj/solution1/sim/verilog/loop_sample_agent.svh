`ifndef LOOP_SAMPLE_AGENT__SV
    `define LOOP_SAMPLE_AGENT__SV
    class loop_sample_agent extends sample_agent;
        logic [31:0] loop_start_arr[$];
        logic [31:0] loop_end_arr[$];
        logic [31:0] iter_start_arr[$];
        logic [31:0] iter_end_arr[$];
        logic [31:0] iter_cnt[$];
        logic [31:0] iter_start_index[$];
        logic [31:0] performance_arr[12];

        function new(dump_file_agent file_inst);
            super.new(file_inst);
        endfunction

        virtual function void output_to_file();
        endfunction

        virtual task data_monitor();
        endtask

        function void collect_performance();
            remove_garbage_data();
            calc_loop_latency();
            calc_loop_ii();
            calc_iter_latency();
            calc_iter_ii();
        endfunction

        function void calc_loop_latency();
            integer loop_lat_max = -1;
            integer loop_lat_min = -1;
            integer loop_lat_avg = -1;
            integer loop_lat_cur = 0;
            integer loop_lat_total = 0;
            integer loop_run_times = this.iter_cnt.size;
            if (loop_run_times == 1) begin
                loop_lat_max = this.loop_end_arr[0] - this.loop_start_arr[0] + 1;
                loop_lat_min = this.loop_end_arr[0] - this.loop_start_arr[0] + 1;
                loop_lat_avg = this.loop_end_arr[0] - this.loop_start_arr[0] + 1;

            end
            else if (loop_run_times >= 2) begin
                for(integer i=0;i<loop_run_times;i++) begin
                    loop_lat_cur = this.loop_end_arr[i] - this.loop_start_arr[i] + 1;
                    if (loop_lat_min == -1) begin
                        loop_lat_max = loop_lat_cur;
                        loop_lat_min = loop_lat_cur;
                        loop_lat_total = loop_lat_cur;
                    end
                    else begin
                        if (loop_lat_cur > loop_lat_max)
                            loop_lat_max = loop_lat_cur;
                        if (loop_lat_cur < loop_lat_min)
                            loop_lat_min = loop_lat_cur;
                        loop_lat_total = loop_lat_total + loop_lat_cur;
                    end
                end
                loop_lat_avg = loop_lat_total / loop_run_times;
            end
            this.performance_arr[0] = loop_lat_avg;
            this.performance_arr[1] = loop_lat_max;
            this.performance_arr[2] = loop_lat_min;
        endfunction

        function void calc_loop_ii();
            integer loop_ii_max = -1;
            integer loop_ii_min = -1;
            integer loop_ii_avg = -1;
            integer loop_ii_cur = 0;
            integer loop_ii_total = 0;
            integer loop_run_times = this.iter_cnt.size;
            if (loop_run_times <= 1) begin
                this.performance_arr[4] = loop_ii_avg;
                this.performance_arr[5] = loop_ii_max;
                this.performance_arr[6] = loop_ii_min;
            end
            else begin
                for(integer i=1;i<loop_run_times;i++) begin
                    loop_ii_cur = this.loop_start_arr[i] - this.loop_start_arr[i-1];
                    if (loop_ii_min == -1) begin
                        loop_ii_max = loop_ii_cur;
                        loop_ii_min = loop_ii_cur;
                        loop_ii_total = loop_ii_cur;
                    end
                    else begin
                        if (loop_ii_cur > loop_ii_max)
                            loop_ii_max = loop_ii_cur;
                        if (loop_ii_cur < loop_ii_max)
                            loop_ii_min = loop_ii_cur;
                        loop_ii_total = loop_ii_total + loop_ii_cur;
                    end
                end
                loop_ii_avg = loop_ii_total / (loop_run_times - 1);
                this.performance_arr[3] = loop_ii_avg;
                this.performance_arr[4] = loop_ii_max;
                this.performance_arr[5] = loop_ii_min;
            end
        endfunction

        function void calc_iter_latency();
            integer iter_lat_max = -1;
            integer iter_lat_min = -1;
            integer iter_lat_avg = -1;
            integer iter_lat_cur = 0;
            integer iter_lat_total = 0;
            integer iter_run_times = this.iter_end_arr.size;
            if (iter_run_times == 1) begin
                iter_lat_max = this.iter_end_arr[0] - this.iter_start_arr[0];
                iter_lat_min = this.iter_end_arr[0] - this.iter_start_arr[0];
                iter_lat_avg = this.iter_end_arr[0] - this.iter_start_arr[0];
            end
            else if (iter_run_times >= 2) begin
                for (integer i=0;i<iter_run_times;i++) begin
                    iter_lat_cur = this.iter_end_arr[i] - this.iter_start_arr[i] + 1;
                    if (iter_lat_min == -1) begin
                        iter_lat_max = iter_lat_cur;
                        iter_lat_min = iter_lat_cur;
                        iter_lat_total = iter_lat_cur;
                    end
                    else begin
                        if (iter_lat_cur > iter_lat_max)
                            iter_lat_max = iter_lat_cur;
                        if (iter_lat_cur < iter_lat_min)
                            iter_lat_min = iter_lat_cur;
                        iter_lat_total = iter_lat_total + iter_lat_cur;
                    end
                end
                iter_lat_avg = iter_lat_total / iter_run_times;
            end
            this.performance_arr[6] = iter_lat_avg;
            this.performance_arr[7] = iter_lat_max;
            this.performance_arr[8] = iter_lat_min;
        endfunction

        function void calc_iter_ii();
            integer iter_ii_max = -1;
            integer iter_ii_min = -1;
            integer iter_ii_avg = -1;
            integer iter_ii_cur = 0;
            integer iter_ii_total = 0;
            integer iter_num_in_loop = 0;
            integer processed_iter_num = 0;
            integer calculated_iter_num = 0;
            integer loop_run_times = this.iter_cnt.size;
            if (loop_run_times <= 1) begin
                iter_num_in_loop = this.iter_start_arr.size;
                if (iter_num_in_loop >= 2) begin
                    for(integer i=1;i<iter_num_in_loop;i++) begin
                        iter_ii_cur = this.iter_start_arr[i] - this.iter_start_arr[i - 1];
                        if (iter_ii_min == -1) begin
                            iter_ii_max = iter_ii_cur;
                            iter_ii_min = iter_ii_cur;
                            iter_ii_total = iter_ii_cur;
                        end
                        else begin
                            if (iter_ii_cur > iter_ii_max)
                                iter_ii_max = iter_ii_cur;
                            if (iter_ii_cur < iter_ii_min)
                                iter_ii_min = iter_ii_cur;
                            iter_ii_total = iter_ii_total + iter_ii_cur;
                        end
                    end
                    iter_ii_avg = iter_ii_total / (iter_num_in_loop - 1);
                end
            end
            else begin
                for(integer j=0;j<loop_run_times;j++) begin
                    iter_num_in_loop = this.iter_cnt[j];
                    if (iter_num_in_loop >= 2) begin
                        for(integer i=1;i<iter_num_in_loop;i++) begin
                            iter_ii_cur = this.iter_start_arr[processed_iter_num + i] - this.iter_start_arr[processed_iter_num + i - 1];
                            if (iter_ii_min == -1) begin
                                iter_ii_max = iter_ii_cur;
                                iter_ii_min = iter_ii_cur;
                                iter_ii_total = iter_ii_cur;
                            end
                            else begin
                                if (iter_ii_cur > iter_ii_max)
                                    iter_ii_max = iter_ii_cur;
                                if (iter_ii_cur < iter_ii_min)
                                    iter_ii_min = iter_ii_cur;
                                iter_ii_total = iter_ii_total + iter_ii_cur;
                            end
                        end
                        calculated_iter_num = calculated_iter_num + iter_num_in_loop - 1;
                    end
                    processed_iter_num = processed_iter_num + iter_num_in_loop;
                end
                iter_ii_avg = iter_ii_total / calculated_iter_num;
            end
            this.performance_arr[9] = iter_ii_avg;
            this.performance_arr[10] = iter_ii_max;
            this.performance_arr[11] = iter_ii_min;
        endfunction
        
        function void remove_garbage_data();
            integer loop_runtimes = 0;
            integer iter_start_offset = 0;
            integer iter_end_num;
            integer iter_start_num;
            //remove unfinished loop start timestamps
            while(loop_start_arr.size > loop_end_arr.size())
                loop_start_arr.pop_back();
        
            //remove unfinished or dummy iter start timestamps
            loop_runtimes = iter_cnt.size;
            for(integer j = 0;j < loop_runtimes;j++) begin
                iter_end_num = iter_cnt[j];
                if (j < iter_start_index.size) begin
                    iter_start_num = iter_start_index[j + 1] - iter_start_offset;
                    while(iter_start_num > iter_end_num) begin
                        iter_start_arr.delete(iter_end_num);
                        iter_start_num = iter_start_num - 1;
                        iter_start_offset = iter_start_offset + 1;
                    end
                end 
            end
            while(iter_start_arr.size > iter_end_arr.size())
                iter_start_arr.pop_back();
        
            //calculate iter num for each loop run.
            for(integer j=loop_runtimes-1;j>0;j--) begin
                iter_cnt[j] = iter_cnt[j] - iter_cnt[j - 1];
            end
        endfunction
        
    endclass
`endif
