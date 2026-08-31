// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
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


// wrapc file define: "mat"
#define AUTOTB_TVIN_mat  "../tv/cdatafile/c.matrix_vector_mult.autotvin_mat.dat"
// wrapc file define: "vec"
#define AUTOTB_TVIN_vec  "../tv/cdatafile/c.matrix_vector_mult.autotvin_vec.dat"
// wrapc file define: "result"
#define AUTOTB_TVOUT_result  "../tv/cdatafile/c.matrix_vector_mult.autotvout_result.dat"
#define AUTOTB_TVIN_result  "../tv/cdatafile/c.matrix_vector_mult.autotvin_result.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "result"
#define AUTOTB_TVOUT_PC_result  "../tv/rtldatafile/rtl.matrix_vector_mult.autotvout_result.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			mat_depth = 0;
			vec_depth = 0;
			result_depth = 0;
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
			total_list << "{mat " << mat_depth << "}\n";
			total_list << "{vec " << vec_depth << "}\n";
			total_list << "{result " << result_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int mat_depth;
		int vec_depth;
		int result_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void matrix_vector_mult (
int mat[3][3],
int vec[3],
int result[3]);

extern "C" void AESL_WRAP_matrix_vector_mult (
int mat[3][3],
int vec[3],
int result[3])
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


		// output port post check: "result"
		aesl_fh.read(AUTOTB_TVOUT_PC_result, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_result, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_result, AESL_token); // data

			sc_bv<32> *result_pc_buffer = new sc_bv<32>[3];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'result', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'result', possible cause: There are uninitialized variables in the C design." << endl;
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
					result_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_result, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_result))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: result
				{
					// bitslice(31, 0)
					// {
						// celement: result(31, 0)
						// {
							sc_lv<32>* result_lv0_0_2_1 = new sc_lv<32>[3];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: result(31, 0)
						{
							// carray: (0) => (2) @ (1)
							for (int i_0 = 0; i_0 <= 2; i_0 += 1)
							{
								if (&(result[0]) != NULL) // check the null address if the c port is array or others
								{
									result_lv0_0_2_1[hls_map_index].range(31, 0) = sc_bv<32>(result_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: result(31, 0)
						{
							// carray: (0) => (2) @ (1)
							for (int i_0 = 0; i_0 <= 2; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : result[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : result[0]
								// output_left_conversion : result[i_0]
								// output_type_conversion : (result_lv0_0_2_1[hls_map_index]).to_uint64()
								if (&(result[0]) != NULL) // check the null address if the c port is array or others
								{
									result[i_0] = (result_lv0_0_2_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] result_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "mat"
		char* tvin_mat = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_mat);

		// "vec"
		char* tvin_vec = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_vec);

		// "result"
		char* tvin_result = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_result);
		char* tvout_result = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_result);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_mat, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_mat, tvin_mat);

		sc_bv<32>* mat_tvin_wrapc_buffer = new sc_bv<32>[9];

		// RTL Name: mat
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: mat(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// carray: (0) => (2) @ (1)
						for (int i_1 = 0; i_1 <= 2; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : mat[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : mat[0][0]
							// regulate_c_name       : mat
							// input_type_conversion : mat[i_0][i_1]
							if (&(mat[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> mat_tmp_mem;
								mat_tmp_mem = mat[i_0][i_1];
								mat_tvin_wrapc_buffer[hls_map_index].range(31, 0) = mat_tmp_mem.range(31, 0);
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
			sprintf(tvin_mat, "%s\n", (mat_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_mat, tvin_mat);
		}

		tcl_file.set_num(9, &tcl_file.mat_depth);
		sprintf(tvin_mat, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_mat, tvin_mat);

		// release memory allocation
		delete [] mat_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_vec, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_vec, tvin_vec);

		sc_bv<32>* vec_tvin_wrapc_buffer = new sc_bv<32>[3];

		// RTL Name: vec
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: vec(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : vec[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : vec[0]
						// regulate_c_name       : vec
						// input_type_conversion : vec[i_0]
						if (&(vec[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> vec_tmp_mem;
							vec_tmp_mem = vec[i_0];
							vec_tvin_wrapc_buffer[hls_map_index].range(31, 0) = vec_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvin_vec, "%s\n", (vec_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_vec, tvin_vec);
		}

		tcl_file.set_num(3, &tcl_file.vec_depth);
		sprintf(tvin_vec, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_vec, tvin_vec);

		// release memory allocation
		delete [] vec_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_result, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_result, tvin_result);

		sc_bv<32>* result_tvin_wrapc_buffer = new sc_bv<32>[3];

		// RTL Name: result
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: result(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : result[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : result[0]
						// regulate_c_name       : result
						// input_type_conversion : result[i_0]
						if (&(result[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> result_tmp_mem;
							result_tmp_mem = result[i_0];
							result_tvin_wrapc_buffer[hls_map_index].range(31, 0) = result_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvin_result, "%s\n", (result_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_result, tvin_result);
		}

		tcl_file.set_num(3, &tcl_file.result_depth);
		sprintf(tvin_result, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_result, tvin_result);

		// release memory allocation
		delete [] result_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		matrix_vector_mult(mat, vec, result);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_result, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_result, tvout_result);

		sc_bv<32>* result_tvout_wrapc_buffer = new sc_bv<32>[3];

		// RTL Name: result
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: result(31, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : result[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : result[0]
						// regulate_c_name       : result
						// input_type_conversion : result[i_0]
						if (&(result[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> result_tmp_mem;
							result_tmp_mem = result[i_0];
							result_tvout_wrapc_buffer[hls_map_index].range(31, 0) = result_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvout_result, "%s\n", (result_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_result, tvout_result);
		}

		tcl_file.set_num(3, &tcl_file.result_depth);
		sprintf(tvout_result, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_result, tvout_result);

		// release memory allocation
		delete [] result_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "mat"
		delete [] tvin_mat;
		// release memory allocation: "vec"
		delete [] tvin_vec;
		// release memory allocation: "result"
		delete [] tvout_result;
		delete [] tvin_result;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

