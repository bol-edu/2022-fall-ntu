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


// wrapc file define: "a"
#define AUTOTB_TVIN_a  "../tv/cdatafile/c.matrixmul.autotvin_a.dat"
// wrapc file define: "b"
#define AUTOTB_TVIN_b  "../tv/cdatafile/c.matrixmul.autotvin_b.dat"
// wrapc file define: "res"
#define AUTOTB_TVOUT_res  "../tv/cdatafile/c.matrixmul.autotvout_res.dat"
#define AUTOTB_TVIN_res  "../tv/cdatafile/c.matrixmul.autotvin_res.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "res"
#define AUTOTB_TVOUT_PC_res  "../tv/rtldatafile/rtl.matrixmul.autotvout_res.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			a_depth = 0;
			b_depth = 0;
			res_depth = 0;
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
			total_list << "{a " << a_depth << "}\n";
			total_list << "{b " << b_depth << "}\n";
			total_list << "{res " << res_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int a_depth;
		int b_depth;
		int res_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void matrixmul (
char a[3][3],
char b[3][3],
short res[3][3]);

void AESL_WRAP_matrixmul (
char a[3][3],
char b[3][3],
short res[3][3])
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


		// output port post check: "res"
		aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // data

			sc_bv<16> *res_pc_buffer = new sc_bv<16>[9];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'res', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'res', possible cause: There are uninitialized variables in the C design." << endl;
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
					res_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_res))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: res
				{
					// bitslice(15, 0)
					// {
						// celement: res(15, 0)
						// {
							sc_lv<16>* res_lv0_0_2_1_lv1_0_2_1 = new sc_lv<16>[9];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: res(15, 0)
						{
							// carray: (0) => (2) @ (1)
							for (int i_0 = 0; i_0 <= 2; i_0 += 1)
							{
								// carray: (0) => (2) @ (1)
								for (int i_1 = 0; i_1 <= 2; i_1 += 1)
								{
									if (&(res[0][0]) != NULL) // check the null address if the c port is array or others
									{
										res_lv0_0_2_1_lv1_0_2_1[hls_map_index].range(15, 0) = sc_bv<16>(res_pc_buffer[hls_map_index].range(15, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: res(15, 0)
						{
							// carray: (0) => (2) @ (1)
							for (int i_0 = 0; i_0 <= 2; i_0 += 1)
							{
								// carray: (0) => (2) @ (1)
								for (int i_1 = 0; i_1 <= 2; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : res[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : res[0][0]
									// output_left_conversion : res[i_0][i_1]
									// output_type_conversion : (res_lv0_0_2_1_lv1_0_2_1[hls_map_index]).to_uint64()
									if (&(res[0][0]) != NULL) // check the null address if the c port is array or others
									{
										res[i_0][i_1] = (res_lv0_0_2_1_lv1_0_2_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] res_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "a"
		char* tvin_a = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a);

		// "b"
		char* tvin_b = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b);

		// "res"
		char* tvin_res = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_res);
		char* tvout_res = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_res);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_a, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a, tvin_a);

		sc_bv<24>* a_tvin_wrapc_buffer = new sc_bv<24>[3];

		// RTL Name: a
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: a(7, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : a[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : a[0][0]
							// regulate_c_name       : a
							// input_type_conversion : a[i_0][i_1]
							if (&(a[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> a_tmp_mem;
								a_tmp_mem = a[i_0][i_1];
								a_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
			// bitslice(15, 8)
			{
				int hls_map_index = 0;
				// celement: a(7, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : a[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : a[0][0]
							// regulate_c_name       : a
							// input_type_conversion : a[i_0][i_1]
							if (&(a[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> a_tmp_mem;
								a_tmp_mem = a[i_0][i_1];
								a_tvin_wrapc_buffer[hls_map_index].range(15, 8) = a_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
			// bitslice(23, 16)
			{
				int hls_map_index = 0;
				// celement: a(7, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : a[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : a[0][0]
							// regulate_c_name       : a
							// input_type_conversion : a[i_0][i_1]
							if (&(a[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> a_tmp_mem;
								a_tmp_mem = a[i_0][i_1];
								a_tvin_wrapc_buffer[hls_map_index].range(23, 16) = a_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvin_a, "%s\n", (a_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a, tvin_a);
		}

		tcl_file.set_num(3, &tcl_file.a_depth);
		sprintf(tvin_a, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a, tvin_a);

		// release memory allocation
		delete [] a_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_b, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b, tvin_b);

		sc_bv<24>* b_tvin_wrapc_buffer = new sc_bv<24>[3];

		// RTL Name: b
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (2)
					for (int i_0 = 0; i_0 <= 0; i_0 += 2)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : b[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : b[0][0]
							// regulate_c_name       : b
							// input_type_conversion : b[i_0][i_1]
							if (&(b[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> b_tmp_mem;
								b_tmp_mem = b[i_0][i_1];
								b_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
			// bitslice(15, 8)
			{
				int hls_map_index = 0;
				// celement: b(7, 0)
				{
					// carray: (1) => (1) @ (2)
					for (int i_0 = 1; i_0 <= 1; i_0 += 2)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : b[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : b[0][0]
							// regulate_c_name       : b
							// input_type_conversion : b[i_0][i_1]
							if (&(b[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> b_tmp_mem;
								b_tmp_mem = b[i_0][i_1];
								b_tvin_wrapc_buffer[hls_map_index].range(15, 8) = b_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
			// bitslice(23, 16)
			{
				int hls_map_index = 0;
				// celement: b(7, 0)
				{
					// carray: (2) => (2) @ (2)
					for (int i_0 = 2; i_0 <= 2; i_0 += 2)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : b[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : b[0][0]
							// regulate_c_name       : b
							// input_type_conversion : b[i_0][i_1]
							if (&(b[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> b_tmp_mem;
								b_tmp_mem = b[i_0][i_1];
								b_tvin_wrapc_buffer[hls_map_index].range(23, 16) = b_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvin_b, "%s\n", (b_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b, tvin_b);
		}

		tcl_file.set_num(3, &tcl_file.b_depth);
		sprintf(tvin_b, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b, tvin_b);

		// release memory allocation
		delete [] b_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_res, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_res, tvin_res);

		sc_bv<16>* res_tvin_wrapc_buffer = new sc_bv<16>[9];

		// RTL Name: res
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: res(15, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : res[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : res[0][0]
							// regulate_c_name       : res
							// input_type_conversion : res[i_0][i_1]
							if (&(res[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<16> res_tmp_mem;
								res_tmp_mem = res[i_0][i_1];
								res_tvin_wrapc_buffer[hls_map_index].range(15, 0) = res_tmp_mem.range(15, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvin_res, "%s\n", (res_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_res, tvin_res);
		}

		tcl_file.set_num(9, &tcl_file.res_depth);
		sprintf(tvin_res, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_res, tvin_res);

		// release memory allocation
		delete [] res_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		matrixmul(a, b, res);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_res, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);

		sc_bv<16>* res_tvout_wrapc_buffer = new sc_bv<16>[9];

		// RTL Name: res
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: res(15, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : res[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : res[0][0]
							// regulate_c_name       : res
							// input_type_conversion : res[i_0][i_1]
							if (&(res[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<16> res_tmp_mem;
								res_tmp_mem = res[i_0][i_1];
								res_tvout_wrapc_buffer[hls_map_index].range(15, 0) = res_tmp_mem.range(15, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvout_res, "%s\n", (res_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);
		}

		tcl_file.set_num(9, &tcl_file.res_depth);
		sprintf(tvout_res, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);

		// release memory allocation
		delete [] res_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "a"
		delete [] tvin_a;
		// release memory allocation: "b"
		delete [] tvin_b;
		// release memory allocation: "res"
		delete [] tvout_res;
		delete [] tvin_res;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

