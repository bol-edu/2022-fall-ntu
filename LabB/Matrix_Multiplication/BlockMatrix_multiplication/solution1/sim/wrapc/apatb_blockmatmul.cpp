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
    typedef struct  {
        int a[4];
       } blockvec;

          typedef struct  {
              int out[4][4];
             } blockmat;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "Arows_V_a_0"
#define AUTOTB_TVIN_Arows_V_a_0  "../tv/cdatafile/c.blockmatmul.autotvin_Arows_V_a_0.dat"
#define WRAPC_STREAM_SIZE_IN_Arows_V_a_0  "../tv/stream_size/stream_size_in_Arows_V_a_0.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0  "../tv/stream_size/stream_ingress_status_Arows_V_a_0.dat"
// wrapc file define: "Arows_V_a_1"
#define AUTOTB_TVIN_Arows_V_a_1  "../tv/cdatafile/c.blockmatmul.autotvin_Arows_V_a_1.dat"
#define WRAPC_STREAM_SIZE_IN_Arows_V_a_1  "../tv/stream_size/stream_size_in_Arows_V_a_1.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1  "../tv/stream_size/stream_ingress_status_Arows_V_a_1.dat"
// wrapc file define: "Arows_V_a_2"
#define AUTOTB_TVIN_Arows_V_a_2  "../tv/cdatafile/c.blockmatmul.autotvin_Arows_V_a_2.dat"
#define WRAPC_STREAM_SIZE_IN_Arows_V_a_2  "../tv/stream_size/stream_size_in_Arows_V_a_2.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2  "../tv/stream_size/stream_ingress_status_Arows_V_a_2.dat"
// wrapc file define: "Arows_V_a_3"
#define AUTOTB_TVIN_Arows_V_a_3  "../tv/cdatafile/c.blockmatmul.autotvin_Arows_V_a_3.dat"
#define WRAPC_STREAM_SIZE_IN_Arows_V_a_3  "../tv/stream_size/stream_size_in_Arows_V_a_3.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3  "../tv/stream_size/stream_ingress_status_Arows_V_a_3.dat"
// wrapc file define: "Bcols_V_a_0"
#define AUTOTB_TVIN_Bcols_V_a_0  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols_V_a_0.dat"
#define WRAPC_STREAM_SIZE_IN_Bcols_V_a_0  "../tv/stream_size/stream_size_in_Bcols_V_a_0.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0  "../tv/stream_size/stream_ingress_status_Bcols_V_a_0.dat"
// wrapc file define: "Bcols_V_a_1"
#define AUTOTB_TVIN_Bcols_V_a_1  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols_V_a_1.dat"
#define WRAPC_STREAM_SIZE_IN_Bcols_V_a_1  "../tv/stream_size/stream_size_in_Bcols_V_a_1.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1  "../tv/stream_size/stream_ingress_status_Bcols_V_a_1.dat"
// wrapc file define: "Bcols_V_a_2"
#define AUTOTB_TVIN_Bcols_V_a_2  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols_V_a_2.dat"
#define WRAPC_STREAM_SIZE_IN_Bcols_V_a_2  "../tv/stream_size/stream_size_in_Bcols_V_a_2.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2  "../tv/stream_size/stream_ingress_status_Bcols_V_a_2.dat"
// wrapc file define: "Bcols_V_a_3"
#define AUTOTB_TVIN_Bcols_V_a_3  "../tv/cdatafile/c.blockmatmul.autotvin_Bcols_V_a_3.dat"
#define WRAPC_STREAM_SIZE_IN_Bcols_V_a_3  "../tv/stream_size/stream_size_in_Bcols_V_a_3.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3  "../tv/stream_size/stream_ingress_status_Bcols_V_a_3.dat"
// wrapc file define: "ABpartial_out"
#define AUTOTB_TVOUT_ABpartial_out  "../tv/cdatafile/c.blockmatmul.autotvout_ABpartial_out.dat"
#define AUTOTB_TVIN_ABpartial_out  "../tv/cdatafile/c.blockmatmul.autotvin_ABpartial_out.dat"
// wrapc file define: "it"
#define AUTOTB_TVIN_it  "../tv/cdatafile/c.blockmatmul.autotvin_it.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "ABpartial_out"
#define AUTOTB_TVOUT_PC_ABpartial_out  "../tv/rtldatafile/rtl.blockmatmul.autotvout_ABpartial_out.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			Arows_V_a_0_depth = 0;
			Arows_V_a_1_depth = 0;
			Arows_V_a_2_depth = 0;
			Arows_V_a_3_depth = 0;
			Bcols_V_a_0_depth = 0;
			Bcols_V_a_1_depth = 0;
			Bcols_V_a_2_depth = 0;
			Bcols_V_a_3_depth = 0;
			ABpartial_out_depth = 0;
			it_depth = 0;
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
			total_list << "{Arows_V_a_0 " << Arows_V_a_0_depth << "}\n";
			total_list << "{Arows_V_a_1 " << Arows_V_a_1_depth << "}\n";
			total_list << "{Arows_V_a_2 " << Arows_V_a_2_depth << "}\n";
			total_list << "{Arows_V_a_3 " << Arows_V_a_3_depth << "}\n";
			total_list << "{Bcols_V_a_0 " << Bcols_V_a_0_depth << "}\n";
			total_list << "{Bcols_V_a_1 " << Bcols_V_a_1_depth << "}\n";
			total_list << "{Bcols_V_a_2 " << Bcols_V_a_2_depth << "}\n";
			total_list << "{Bcols_V_a_3 " << Bcols_V_a_3_depth << "}\n";
			total_list << "{ABpartial_out " << ABpartial_out_depth << "}\n";
			total_list << "{it " << it_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int Arows_V_a_0_depth;
		int Arows_V_a_1_depth;
		int Arows_V_a_2_depth;
		int Arows_V_a_3_depth;
		int Bcols_V_a_0_depth;
		int Bcols_V_a_1_depth;
		int Bcols_V_a_2_depth;
		int Bcols_V_a_3_depth;
		int ABpartial_out_depth;
		int it_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void blockmatmul (
hls::stream<blockvec > (&Arows),
hls::stream<blockvec > (&Bcols),
blockmat (&ABpartial),
int it);

void AESL_WRAP_blockmatmul (
hls::stream<blockvec > (&Arows),
hls::stream<blockvec > (&Bcols),
blockmat (&ABpartial),
int it)
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

		// pop stream input: "Arows"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_Arows_V_a_0, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_Arows_V_a_0, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_Arows_V_a_0, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				Arows.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_Arows_V_a_0, AESL_token); // [[/transaction]]
		}

		// pop stream input: "Bcols"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_Bcols_V_a_0, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_Bcols_V_a_0, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_Bcols_V_a_0, AESL_token); // pop_size
			int aesl_tmp_4 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_4; i++)
			{
				Bcols.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_Bcols_V_a_0, AESL_token); // [[/transaction]]
		}

		// output port post check: "ABpartial_out"
		aesl_fh.read(AUTOTB_TVOUT_PC_ABpartial_out, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ABpartial_out, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ABpartial_out, AESL_token); // data

			sc_bv<32> *ABpartial_out_pc_buffer = new sc_bv<32>[16];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ABpartial_out', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ABpartial_out', possible cause: There are uninitialized variables in the C design." << endl;
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
					ABpartial_out_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ABpartial_out, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ABpartial_out))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ABpartial_out
				{
					// bitslice(31, 0)
					// {
						// celement: ABpartial.out(31, 0)
						// {
							sc_lv<32>* ABpartial_out_lv0_0_3_1_lv1_0_3_1 = new sc_lv<32>[16];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: ABpartial.out(31, 0)
						{
							// carray: (0) => (3) @ (1)
							for (int i_0 = 0; i_0 <= 3; i_0 += 1)
							{
								// carray: (0) => (3) @ (1)
								for (int i_1 = 0; i_1 <= 3; i_1 += 1)
								{
									if (&(ABpartial.out[0][0]) != NULL) // check the null address if the c port is array or others
									{
										ABpartial_out_lv0_0_3_1_lv1_0_3_1[hls_map_index].range(31, 0) = sc_bv<32>(ABpartial_out_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: ABpartial.out(31, 0)
						{
							// carray: (0) => (3) @ (1)
							for (int i_0 = 0; i_0 <= 3; i_0 += 1)
							{
								// carray: (0) => (3) @ (1)
								for (int i_1 = 0; i_1 <= 3; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : ABpartial.out[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : ABpartial.out[0][0]
									// output_left_conversion : ABpartial.out[i_0][i_1]
									// output_type_conversion : (ABpartial_out_lv0_0_3_1_lv1_0_3_1[hls_map_index]).to_uint64()
									if (&(ABpartial.out[0][0]) != NULL) // check the null address if the c port is array or others
									{
										ABpartial.out[i_0][i_1] = (ABpartial_out_lv0_0_3_1_lv1_0_3_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] ABpartial_out_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "Arows_V_a_0"
		char* tvin_Arows_V_a_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Arows_V_a_0);
		char* wrapc_stream_size_in_Arows_V_a_0 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Arows_V_a_0);
		char* wrapc_stream_ingress_status_Arows_V_a_0 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0);

		// "Arows_V_a_1"
		char* tvin_Arows_V_a_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Arows_V_a_1);
		char* wrapc_stream_size_in_Arows_V_a_1 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Arows_V_a_1);
		char* wrapc_stream_ingress_status_Arows_V_a_1 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1);

		// "Arows_V_a_2"
		char* tvin_Arows_V_a_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Arows_V_a_2);
		char* wrapc_stream_size_in_Arows_V_a_2 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Arows_V_a_2);
		char* wrapc_stream_ingress_status_Arows_V_a_2 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2);

		// "Arows_V_a_3"
		char* tvin_Arows_V_a_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Arows_V_a_3);
		char* wrapc_stream_size_in_Arows_V_a_3 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Arows_V_a_3);
		char* wrapc_stream_ingress_status_Arows_V_a_3 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3);

		// "Bcols_V_a_0"
		char* tvin_Bcols_V_a_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Bcols_V_a_0);
		char* wrapc_stream_size_in_Bcols_V_a_0 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Bcols_V_a_0);
		char* wrapc_stream_ingress_status_Bcols_V_a_0 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0);

		// "Bcols_V_a_1"
		char* tvin_Bcols_V_a_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Bcols_V_a_1);
		char* wrapc_stream_size_in_Bcols_V_a_1 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Bcols_V_a_1);
		char* wrapc_stream_ingress_status_Bcols_V_a_1 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1);

		// "Bcols_V_a_2"
		char* tvin_Bcols_V_a_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Bcols_V_a_2);
		char* wrapc_stream_size_in_Bcols_V_a_2 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Bcols_V_a_2);
		char* wrapc_stream_ingress_status_Bcols_V_a_2 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2);

		// "Bcols_V_a_3"
		char* tvin_Bcols_V_a_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Bcols_V_a_3);
		char* wrapc_stream_size_in_Bcols_V_a_3 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Bcols_V_a_3);
		char* wrapc_stream_ingress_status_Bcols_V_a_3 = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3);

		// "ABpartial_out"
		char* tvin_ABpartial_out = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_ABpartial_out);
		char* tvout_ABpartial_out = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ABpartial_out);

		// "it"
		char* tvin_it = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_it);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "Arows"
		std::vector<blockvec > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!Arows.empty())
		{
			aesl_tmp_0.push_back(Arows.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "Bcols"
		std::vector<blockvec > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!Bcols.empty())
		{
			aesl_tmp_3.push_back(Bcols.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_ABpartial_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_ABpartial_out, tvin_ABpartial_out);

		sc_bv<32>* ABpartial_out_tvin_wrapc_buffer = new sc_bv<32>[16];

		// RTL Name: ABpartial_out
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: ABpartial.out(31, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (3) @ (1)
						for (int i_1 = 0; i_1 <= 3; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : ABpartial.out[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : ABpartial.out[0][0]
							// regulate_c_name       : ABpartial_out
							// input_type_conversion : ABpartial.out[i_0][i_1]
							if (&(ABpartial.out[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> ABpartial_out_tmp_mem;
								ABpartial_out_tmp_mem = ABpartial.out[i_0][i_1];
								ABpartial_out_tvin_wrapc_buffer[hls_map_index].range(31, 0) = ABpartial_out_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvin_ABpartial_out, "%s\n", (ABpartial_out_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_ABpartial_out, tvin_ABpartial_out);
		}

		tcl_file.set_num(16, &tcl_file.ABpartial_out_depth);
		sprintf(tvin_ABpartial_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_ABpartial_out, tvin_ABpartial_out);

		// release memory allocation
		delete [] ABpartial_out_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_it, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_it, tvin_it);

		sc_bv<32> it_tvin_wrapc_buffer;

		// RTL Name: it
		{
			// bitslice(31, 0)
			{
				// celement: it(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : it
						// sub_1st_elem          : 
						// ori_name_1st_elem     : it
						// regulate_c_name       : it
						// input_type_conversion : it
						if (&(it) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> it_tmp_mem;
							it_tmp_mem = it;
							it_tvin_wrapc_buffer.range(31, 0) = it_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_it, "%s\n", (it_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_it, tvin_it);
		}

		tcl_file.set_num(1, &tcl_file.it_depth);
		sprintf(tvin_it, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_it, tvin_it);

		// push back input stream: "Arows"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			Arows.write(aesl_tmp_0[i]);
		}

		// push back input stream: "Bcols"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			Bcols.write(aesl_tmp_3[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		blockmatmul(Arows, Bcols, ABpartial, it);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "Arows"
		int aesl_tmp_2 = Arows.size();

		// record input size to tv3: "Bcols"
		int aesl_tmp_5 = Bcols.size();

		// [[transaction]]
		sprintf(tvin_Arows_V_a_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Arows_V_a_0, tvin_Arows_V_a_0);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0, tvin_Arows_V_a_0);

		sc_bv<32>* Arows_V_a_0_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: Arows_V_a_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Arows.V.a(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].a[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].a[0]
							// regulate_c_name       : Arows_V_a
							// input_type_conversion : aesl_tmp_0[i_0].a[i_1]
							if (&(aesl_tmp_0[0].a[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> Arows_V_a_tmp_mem;
								Arows_V_a_tmp_mem = aesl_tmp_0[i_0].a[i_1];
								Arows_V_a_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Arows_V_a_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_Arows_V_a_0, "%s\n", (Arows_V_a_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Arows_V_a_0, tvin_Arows_V_a_0);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_Arows_V_a_0 = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0, stream_ingress_size_Arows_V_a_0.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_Arows_V_a_0--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0, stream_ingress_size_Arows_V_a_0.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_Arows_V_a_0 = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0, stream_ingress_size_Arows_V_a_0.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.Arows_V_a_0_depth);
		sprintf(tvin_Arows_V_a_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Arows_V_a_0, tvin_Arows_V_a_0);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_0, tvin_Arows_V_a_0);

		// release memory allocation
		delete [] Arows_V_a_0_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_Arows_V_a_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_0, wrapc_stream_size_in_Arows_V_a_0);
		sprintf(wrapc_stream_size_in_Arows_V_a_0, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_0, wrapc_stream_size_in_Arows_V_a_0);
		sprintf(wrapc_stream_size_in_Arows_V_a_0, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_0, wrapc_stream_size_in_Arows_V_a_0);

		// [[transaction]]
		sprintf(tvin_Arows_V_a_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Arows_V_a_1, tvin_Arows_V_a_1);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1, tvin_Arows_V_a_1);

		sc_bv<32>* Arows_V_a_1_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: Arows_V_a_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Arows.V.a(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].a[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].a[0]
							// regulate_c_name       : Arows_V_a
							// input_type_conversion : aesl_tmp_0[i_0].a[i_1]
							if (&(aesl_tmp_0[0].a[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> Arows_V_a_tmp_mem;
								Arows_V_a_tmp_mem = aesl_tmp_0[i_0].a[i_1];
								Arows_V_a_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Arows_V_a_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_Arows_V_a_1, "%s\n", (Arows_V_a_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Arows_V_a_1, tvin_Arows_V_a_1);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_Arows_V_a_1 = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1, stream_ingress_size_Arows_V_a_1.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_Arows_V_a_1--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1, stream_ingress_size_Arows_V_a_1.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_Arows_V_a_1 = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1, stream_ingress_size_Arows_V_a_1.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.Arows_V_a_1_depth);
		sprintf(tvin_Arows_V_a_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Arows_V_a_1, tvin_Arows_V_a_1);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_1, tvin_Arows_V_a_1);

		// release memory allocation
		delete [] Arows_V_a_1_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_Arows_V_a_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_1, wrapc_stream_size_in_Arows_V_a_1);
		sprintf(wrapc_stream_size_in_Arows_V_a_1, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_1, wrapc_stream_size_in_Arows_V_a_1);
		sprintf(wrapc_stream_size_in_Arows_V_a_1, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_1, wrapc_stream_size_in_Arows_V_a_1);

		// [[transaction]]
		sprintf(tvin_Arows_V_a_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Arows_V_a_2, tvin_Arows_V_a_2);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2, tvin_Arows_V_a_2);

		sc_bv<32>* Arows_V_a_2_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: Arows_V_a_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Arows.V.a(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].a[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].a[0]
							// regulate_c_name       : Arows_V_a
							// input_type_conversion : aesl_tmp_0[i_0].a[i_1]
							if (&(aesl_tmp_0[0].a[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> Arows_V_a_tmp_mem;
								Arows_V_a_tmp_mem = aesl_tmp_0[i_0].a[i_1];
								Arows_V_a_2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Arows_V_a_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_Arows_V_a_2, "%s\n", (Arows_V_a_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Arows_V_a_2, tvin_Arows_V_a_2);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_Arows_V_a_2 = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2, stream_ingress_size_Arows_V_a_2.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_Arows_V_a_2--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2, stream_ingress_size_Arows_V_a_2.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_Arows_V_a_2 = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2, stream_ingress_size_Arows_V_a_2.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.Arows_V_a_2_depth);
		sprintf(tvin_Arows_V_a_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Arows_V_a_2, tvin_Arows_V_a_2);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_2, tvin_Arows_V_a_2);

		// release memory allocation
		delete [] Arows_V_a_2_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_Arows_V_a_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_2, wrapc_stream_size_in_Arows_V_a_2);
		sprintf(wrapc_stream_size_in_Arows_V_a_2, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_2, wrapc_stream_size_in_Arows_V_a_2);
		sprintf(wrapc_stream_size_in_Arows_V_a_2, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_2, wrapc_stream_size_in_Arows_V_a_2);

		// [[transaction]]
		sprintf(tvin_Arows_V_a_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Arows_V_a_3, tvin_Arows_V_a_3);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3, tvin_Arows_V_a_3);

		sc_bv<32>* Arows_V_a_3_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: Arows_V_a_3
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Arows.V.a(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (3) => (3) @ (2)
						for (int i_1 = 3; i_1 <= 3; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].a[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].a[0]
							// regulate_c_name       : Arows_V_a
							// input_type_conversion : aesl_tmp_0[i_0].a[i_1]
							if (&(aesl_tmp_0[0].a[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> Arows_V_a_tmp_mem;
								Arows_V_a_tmp_mem = aesl_tmp_0[i_0].a[i_1];
								Arows_V_a_3_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Arows_V_a_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_Arows_V_a_3, "%s\n", (Arows_V_a_3_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Arows_V_a_3, tvin_Arows_V_a_3);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_Arows_V_a_3 = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3, stream_ingress_size_Arows_V_a_3.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_Arows_V_a_3--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3, stream_ingress_size_Arows_V_a_3.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_Arows_V_a_3 = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3, stream_ingress_size_Arows_V_a_3.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.Arows_V_a_3_depth);
		sprintf(tvin_Arows_V_a_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Arows_V_a_3, tvin_Arows_V_a_3);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Arows_V_a_3, tvin_Arows_V_a_3);

		// release memory allocation
		delete [] Arows_V_a_3_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_Arows_V_a_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_3, wrapc_stream_size_in_Arows_V_a_3);
		sprintf(wrapc_stream_size_in_Arows_V_a_3, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_3, wrapc_stream_size_in_Arows_V_a_3);
		sprintf(wrapc_stream_size_in_Arows_V_a_3, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Arows_V_a_3, wrapc_stream_size_in_Arows_V_a_3);

		// [[transaction]]
		sprintf(tvin_Bcols_V_a_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_0, tvin_Bcols_V_a_0);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0, tvin_Bcols_V_a_0);

		sc_bv<32>* Bcols_V_a_0_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: Bcols_V_a_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Bcols.V.a(31, 0)
				{
					// carray: (0) => (aesl_tmp_4 - aesl_tmp_5 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].a[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].a[0]
							// regulate_c_name       : Bcols_V_a
							// input_type_conversion : aesl_tmp_3[i_0].a[i_1]
							if (&(aesl_tmp_3[0].a[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> Bcols_V_a_tmp_mem;
								Bcols_V_a_tmp_mem = aesl_tmp_3[i_0].a[i_1];
								Bcols_V_a_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Bcols_V_a_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvin_Bcols_V_a_0, "%s\n", (Bcols_V_a_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_0, tvin_Bcols_V_a_0);
		}

		// dump stream ingress status to file
     if (aesl_tmp_4 > aesl_tmp_5)
     {
		sc_int<32> stream_ingress_size_Bcols_V_a_0 = aesl_tmp_4;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0, stream_ingress_size_Bcols_V_a_0.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0, "\n");

		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			stream_ingress_size_Bcols_V_a_0--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0, stream_ingress_size_Bcols_V_a_0.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_Bcols_V_a_0 = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0, stream_ingress_size_Bcols_V_a_0.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0, "\n");
     }

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.Bcols_V_a_0_depth);
		sprintf(tvin_Bcols_V_a_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_0, tvin_Bcols_V_a_0);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_0, tvin_Bcols_V_a_0);

		// release memory allocation
		delete [] Bcols_V_a_0_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_Bcols_V_a_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_0, wrapc_stream_size_in_Bcols_V_a_0);
		sprintf(wrapc_stream_size_in_Bcols_V_a_0, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_0, wrapc_stream_size_in_Bcols_V_a_0);
		sprintf(wrapc_stream_size_in_Bcols_V_a_0, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_0, wrapc_stream_size_in_Bcols_V_a_0);

		// [[transaction]]
		sprintf(tvin_Bcols_V_a_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_1, tvin_Bcols_V_a_1);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1, tvin_Bcols_V_a_1);

		sc_bv<32>* Bcols_V_a_1_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: Bcols_V_a_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Bcols.V.a(31, 0)
				{
					// carray: (0) => (aesl_tmp_4 - aesl_tmp_5 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1; i_0 += 1)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].a[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].a[0]
							// regulate_c_name       : Bcols_V_a
							// input_type_conversion : aesl_tmp_3[i_0].a[i_1]
							if (&(aesl_tmp_3[0].a[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> Bcols_V_a_tmp_mem;
								Bcols_V_a_tmp_mem = aesl_tmp_3[i_0].a[i_1];
								Bcols_V_a_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Bcols_V_a_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvin_Bcols_V_a_1, "%s\n", (Bcols_V_a_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_1, tvin_Bcols_V_a_1);
		}

		// dump stream ingress status to file
     if (aesl_tmp_4 > aesl_tmp_5)
     {
		sc_int<32> stream_ingress_size_Bcols_V_a_1 = aesl_tmp_4;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1, stream_ingress_size_Bcols_V_a_1.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1, "\n");

		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			stream_ingress_size_Bcols_V_a_1--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1, stream_ingress_size_Bcols_V_a_1.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_Bcols_V_a_1 = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1, stream_ingress_size_Bcols_V_a_1.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1, "\n");
     }

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.Bcols_V_a_1_depth);
		sprintf(tvin_Bcols_V_a_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_1, tvin_Bcols_V_a_1);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_1, tvin_Bcols_V_a_1);

		// release memory allocation
		delete [] Bcols_V_a_1_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_Bcols_V_a_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_1, wrapc_stream_size_in_Bcols_V_a_1);
		sprintf(wrapc_stream_size_in_Bcols_V_a_1, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_1, wrapc_stream_size_in_Bcols_V_a_1);
		sprintf(wrapc_stream_size_in_Bcols_V_a_1, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_1, wrapc_stream_size_in_Bcols_V_a_1);

		// [[transaction]]
		sprintf(tvin_Bcols_V_a_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_2, tvin_Bcols_V_a_2);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2, tvin_Bcols_V_a_2);

		sc_bv<32>* Bcols_V_a_2_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: Bcols_V_a_2
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Bcols.V.a(31, 0)
				{
					// carray: (0) => (aesl_tmp_4 - aesl_tmp_5 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1; i_0 += 1)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].a[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].a[0]
							// regulate_c_name       : Bcols_V_a
							// input_type_conversion : aesl_tmp_3[i_0].a[i_1]
							if (&(aesl_tmp_3[0].a[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> Bcols_V_a_tmp_mem;
								Bcols_V_a_tmp_mem = aesl_tmp_3[i_0].a[i_1];
								Bcols_V_a_2_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Bcols_V_a_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvin_Bcols_V_a_2, "%s\n", (Bcols_V_a_2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_2, tvin_Bcols_V_a_2);
		}

		// dump stream ingress status to file
     if (aesl_tmp_4 > aesl_tmp_5)
     {
		sc_int<32> stream_ingress_size_Bcols_V_a_2 = aesl_tmp_4;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2, stream_ingress_size_Bcols_V_a_2.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2, "\n");

		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			stream_ingress_size_Bcols_V_a_2--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2, stream_ingress_size_Bcols_V_a_2.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_Bcols_V_a_2 = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2, stream_ingress_size_Bcols_V_a_2.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2, "\n");
     }

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.Bcols_V_a_2_depth);
		sprintf(tvin_Bcols_V_a_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_2, tvin_Bcols_V_a_2);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_2, tvin_Bcols_V_a_2);

		// release memory allocation
		delete [] Bcols_V_a_2_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_Bcols_V_a_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_2, wrapc_stream_size_in_Bcols_V_a_2);
		sprintf(wrapc_stream_size_in_Bcols_V_a_2, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_2, wrapc_stream_size_in_Bcols_V_a_2);
		sprintf(wrapc_stream_size_in_Bcols_V_a_2, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_2, wrapc_stream_size_in_Bcols_V_a_2);

		// [[transaction]]
		sprintf(tvin_Bcols_V_a_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_3, tvin_Bcols_V_a_3);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3, tvin_Bcols_V_a_3);

		sc_bv<32>* Bcols_V_a_3_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: Bcols_V_a_3
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Bcols.V.a(31, 0)
				{
					// carray: (0) => (aesl_tmp_4 - aesl_tmp_5 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1; i_0 += 1)
					{
						// carray: (3) => (3) @ (2)
						for (int i_1 = 3; i_1 <= 3; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].a[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].a[0]
							// regulate_c_name       : Bcols_V_a
							// input_type_conversion : aesl_tmp_3[i_0].a[i_1]
							if (&(aesl_tmp_3[0].a[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> Bcols_V_a_tmp_mem;
								Bcols_V_a_tmp_mem = aesl_tmp_3[i_0].a[i_1];
								Bcols_V_a_3_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Bcols_V_a_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvin_Bcols_V_a_3, "%s\n", (Bcols_V_a_3_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_3, tvin_Bcols_V_a_3);
		}

		// dump stream ingress status to file
     if (aesl_tmp_4 > aesl_tmp_5)
     {
		sc_int<32> stream_ingress_size_Bcols_V_a_3 = aesl_tmp_4;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3, stream_ingress_size_Bcols_V_a_3.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3, "\n");

		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			stream_ingress_size_Bcols_V_a_3--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3, stream_ingress_size_Bcols_V_a_3.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_Bcols_V_a_3 = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3, stream_ingress_size_Bcols_V_a_3.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3, "\n");
     }

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.Bcols_V_a_3_depth);
		sprintf(tvin_Bcols_V_a_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Bcols_V_a_3, tvin_Bcols_V_a_3);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Bcols_V_a_3, tvin_Bcols_V_a_3);

		// release memory allocation
		delete [] Bcols_V_a_3_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_Bcols_V_a_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_3, wrapc_stream_size_in_Bcols_V_a_3);
		sprintf(wrapc_stream_size_in_Bcols_V_a_3, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_3, wrapc_stream_size_in_Bcols_V_a_3);
		sprintf(wrapc_stream_size_in_Bcols_V_a_3, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_Bcols_V_a_3, wrapc_stream_size_in_Bcols_V_a_3);

		// [[transaction]]
		sprintf(tvout_ABpartial_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ABpartial_out, tvout_ABpartial_out);

		sc_bv<32>* ABpartial_out_tvout_wrapc_buffer = new sc_bv<32>[16];

		// RTL Name: ABpartial_out
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: ABpartial.out(31, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (3) @ (1)
						for (int i_1 = 0; i_1 <= 3; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : ABpartial.out[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : ABpartial.out[0][0]
							// regulate_c_name       : ABpartial_out
							// input_type_conversion : ABpartial.out[i_0][i_1]
							if (&(ABpartial.out[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> ABpartial_out_tmp_mem;
								ABpartial_out_tmp_mem = ABpartial.out[i_0][i_1];
								ABpartial_out_tvout_wrapc_buffer[hls_map_index].range(31, 0) = ABpartial_out_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvout_ABpartial_out, "%s\n", (ABpartial_out_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ABpartial_out, tvout_ABpartial_out);
		}

		tcl_file.set_num(16, &tcl_file.ABpartial_out_depth);
		sprintf(tvout_ABpartial_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ABpartial_out, tvout_ABpartial_out);

		// release memory allocation
		delete [] ABpartial_out_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "Arows_V_a_0"
		delete [] tvin_Arows_V_a_0;
		delete [] wrapc_stream_size_in_Arows_V_a_0;
		// release memory allocation: "Arows_V_a_1"
		delete [] tvin_Arows_V_a_1;
		delete [] wrapc_stream_size_in_Arows_V_a_1;
		// release memory allocation: "Arows_V_a_2"
		delete [] tvin_Arows_V_a_2;
		delete [] wrapc_stream_size_in_Arows_V_a_2;
		// release memory allocation: "Arows_V_a_3"
		delete [] tvin_Arows_V_a_3;
		delete [] wrapc_stream_size_in_Arows_V_a_3;
		// release memory allocation: "Bcols_V_a_0"
		delete [] tvin_Bcols_V_a_0;
		delete [] wrapc_stream_size_in_Bcols_V_a_0;
		// release memory allocation: "Bcols_V_a_1"
		delete [] tvin_Bcols_V_a_1;
		delete [] wrapc_stream_size_in_Bcols_V_a_1;
		// release memory allocation: "Bcols_V_a_2"
		delete [] tvin_Bcols_V_a_2;
		delete [] wrapc_stream_size_in_Bcols_V_a_2;
		// release memory allocation: "Bcols_V_a_3"
		delete [] tvin_Bcols_V_a_3;
		delete [] wrapc_stream_size_in_Bcols_V_a_3;
		// release memory allocation: "ABpartial_out"
		delete [] tvout_ABpartial_out;
		delete [] tvin_ABpartial_out;
		// release memory allocation: "it"
		delete [] tvin_it;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

