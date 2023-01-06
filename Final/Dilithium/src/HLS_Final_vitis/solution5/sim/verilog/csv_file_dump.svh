// class for csv type file dumper which extended from 'dump_file_agent'
`ifndef CSV_FILE_DUMP__SV
    `define CSV_FILE_DUMP__SV
    class csv_file_dump extends dump_file_agent;
        integer file_handle;

        //initial function
        function new(string name);
            super.new(name);
        endfunction

        //get file handle function
        virtual function integer get_file_handle();
            get_file_handle = this.file_handle;
        endfunction

        virtual function void open_file();
            this.file_handle = $fopen(super.file_name, "w");
            if (this.file_handle)
                 ;
            else
                $display("File %s is opened failed.",super.file_name);
        endfunction

        // dump function for one column
        virtual function void dump_1_col(logic [31:0] arr[$]);
            integer length = arr.size;
            for(integer i = 0; i < length; i++)
                $fdisplay(this.file_handle,"%0d",arr[i]);
        endfunction

        // dump function for 2 column
        virtual function void dump_2_col(logic [31:0] arr1[$], logic [1:0] arr2[$]);
            integer length = arr1.size;
            if (length > arr2.size)
                length = arr2.size;
            for(integer i = 0; i < length; i++)
                $fdisplay(this.file_handle,"%0d,%0d",arr1[i],arr2[i]);
        endfunction

        // dump function for 1 line with multi pairs
        virtual function void dump_1_line(logic [31:0] arr1[$], logic [31:0] arr2[$]);
            integer a1_length = arr1.size;
            integer a2_length = arr2.size;
            integer length = a1_length;
            if (length < a2_length)
                length = a2_length;
            for(integer i = 0; i < length; i++) begin
                if (i <= a1_length)
                    $fwrite(this.file_handle,"%0d",arr1[i]);
                else
                    $fwrite(this.file_handle,"4294967295");// value -1
                $fwrite(this.file_handle,",");
                if (i <= a2_length)
                    $fwrite(this.file_handle,"%0d",arr2[i]);
                else
                    $fwrite(this.file_handle,"4294967295");// value -1
                if (i < length - 1)
                    $fwrite(this.file_handle,";");
            end
                $fwrite(this.file_handle,"\n");
        endfunction

        virtual function void dump_1_line_sep(logic [31:0] arr1[$], logic [31:0] arr2[$], logic [31:0] arr3[$]);
            integer a1_length = arr1.size;
            integer a2_length = arr2.size;
            integer a3_length = arr3.size;
            integer item_size = 0;
            integer offset = 0;
            if (a3_length != 0) begin
                for (integer i = 0; i < a3_length; i++) begin
                    item_size = arr3[i];
                    for (integer j = 0; j< item_size; j++) begin
                        if (offset + j <= a1_length)
                            $fwrite(this.file_handle,"%0d",arr1[offset + j]);
                        else
                            $fwrite(this.file_handle,"4294967295");// value -1
                        $fwrite(this.file_handle,",");
                        if (offset + j <= a2_length)
                            $fwrite(this.file_handle,"%0d",arr2[offset + j]);
                        else
                            $fwrite(this.file_handle,"4294967295");// value -1
                        if (j < item_size - 1)
                            $fwrite(this.file_handle,";");
                    end
                    if (i < a3_length - 1)
                        $fwrite(this.file_handle,":");
                    else
                        $fwrite(this.file_handle,"\n");
                    offset = offset + item_size;
                end
            end
            else begin
                item_size = a2_length;
                if (item_size > a1_length)
                    item_size = a1_length;
                for(integer i = 0; i < item_size; i++) begin
                    $fwrite(this.file_handle,"%0d",arr1[i]);
                    $fwrite(this.file_handle,",");
                    $fwrite(this.file_handle,"%0d",arr2[i]);
                if (i < item_size - 1)
                    $fwrite(this.file_handle,";");
                end
            end
        endfunction

        //close file
        virtual function void finish_dump();
            $fclose(this.file_handle);
        endfunction

    endclass
`endif
