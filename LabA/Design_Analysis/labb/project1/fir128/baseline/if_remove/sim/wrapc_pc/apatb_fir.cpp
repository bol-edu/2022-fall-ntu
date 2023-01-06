// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "y"
#define AUTOTB_TVOUT_y  "../tv/cdatafile/c.fir.autotvout_y.dat"
// wrapc file define: "x"
#define AUTOTB_TVIN_x  "../tv/cdatafile/c.fir.autotvin_x.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "y"
#define AUTOTB_TVOUT_PC_y  "../tv/rtldatafile/rtl.fir.autotvout_y.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			y_depth = 0;
			x_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{y " << y_depth << "}\n";
			total_list << "{x " << x_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int y_depth;
		int x_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void fir (
int* y,
int x);

void AESL_WRAP_fir (
int* y,
int x)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "y"
		aesl_fh.read(AUTOTB_TVOUT_PC_y, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_y, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_y, AESL_token); // data

			sc_bv<32> *y_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'y', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'y', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					y_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_y, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_y))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: y
				{
					// bitslice(31, 0)
					// {
						// celement: y(31, 0)
						// {
							sc_lv<32>* y_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: y(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(y[0]) != NULL) // check the null address if the c port is array or others
								{
									y_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(y_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: y(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : y[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : y[0]
								// output_left_conversion : y[i_0]
								// output_type_conversion : (y_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(y[0]) != NULL) // check the null address if the c port is array or others
								{
									y[i_0] = (y_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] y_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "y"
		char* tvout_y = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_y);

		// "x"
		char* tvin_x = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_x);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_x, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_x, tvin_x);

		sc_bv<32> x_tvin_wrapc_buffer;

		// RTL Name: x
		{
			// bitslice(31, 0)
			{
				// celement: x(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : x
						// sub_1st_elem          : 
						// ori_name_1st_elem     : x
						// regulate_c_name       : x
						// input_type_conversion : x
						if (&(x) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> x_tmp_mem;
							x_tmp_mem = x;
							x_tvin_wrapc_buffer.range(31, 0) = x_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_x, "%s\n", (x_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_x, tvin_x);
		}

		tcl_file.set_num(1, &tcl_file.x_depth);
		sprintf(tvin_x, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_x, tvin_x);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		fir(y, x);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_y, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_y, tvout_y);

		sc_bv<32>* y_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: y
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: y(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : y[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : y[0]
						// regulate_c_name       : y
						// input_type_conversion : y[i_0]
						if (&(y[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y_tmp_mem;
							y_tmp_mem = y[i_0];
							y_tvout_wrapc_buffer[hls_map_index].range(31, 0) = y_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_y, "%s\n", (y_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_y, tvout_y);
		}

		tcl_file.set_num(1, &tcl_file.y_depth);
		sprintf(tvout_y, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_y, tvout_y);

		// release memory allocation
		delete [] y_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "y"
		delete [] tvout_y;
		// release memory allocation: "x"
		delete [] tvin_x;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

