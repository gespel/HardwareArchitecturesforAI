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


// wrapc file define: "w"
#define AUTOTB_TVIN_w  "../tv/cdatafile/c.neuron.autotvin_w.dat"
// wrapc file define: "x"
#define AUTOTB_TVIN_x  "../tv/cdatafile/c.neuron.autotvin_x.dat"
// wrapc file define: "b"
#define AUTOTB_TVIN_b  "../tv/cdatafile/c.neuron.autotvin_b.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.neuron.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.neuron.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			w_depth = 0;
			x_depth = 0;
			b_depth = 0;
			ap_return_depth = 0;
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
			total_list << "{w " << w_depth << "}\n";
			total_list << "{x " << x_depth << "}\n";
			total_list << "{b " << b_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int w_depth;
		int x_depth;
		int b_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern float neuron (
float w,
float x,
float b);

float AESL_WRAP_neuron (
float w,
float x,
float b)
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

		float AESL_return;

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<32> ap_return_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
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
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(31, 0)
					// {
						// celement: return(31, 0)
						// {
							sc_lv<32> return_lv0_0_1_0;
						// }
					// }

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(31, 0) = sc_bv<32>(ap_return_pc_buffer.range(31, 0));
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : *(int*)&AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "w"
		char* tvin_w = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_w);

		// "x"
		char* tvin_x = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_x);

		// "b"
		char* tvin_b = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_w, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_w, tvin_w);

		sc_bv<32> w_tvin_wrapc_buffer;

		// RTL Name: w
		{
			// bitslice(31, 0)
			{
				// celement: w(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : w
						// sub_1st_elem          : 
						// ori_name_1st_elem     : w
						// regulate_c_name       : w
						// input_type_conversion : *(int*)&w
						if (&(w) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> w_tmp_mem;
							w_tmp_mem = *(int*)&w;
							w_tvin_wrapc_buffer.range(31, 0) = w_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_w, "%s\n", (w_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_w, tvin_w);
		}

		tcl_file.set_num(1, &tcl_file.w_depth);
		sprintf(tvin_w, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_w, tvin_w);

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
						// input_type_conversion : *(int*)&x
						if (&(x) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> x_tmp_mem;
							x_tmp_mem = *(int*)&x;
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

		// [[transaction]]
		sprintf(tvin_b, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b, tvin_b);

		sc_bv<32> b_tvin_wrapc_buffer;

		// RTL Name: b
		{
			// bitslice(31, 0)
			{
				// celement: b(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : b
						// sub_1st_elem          : 
						// ori_name_1st_elem     : b
						// regulate_c_name       : b
						// input_type_conversion : *(int*)&b
						if (&(b) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> b_tmp_mem;
							b_tmp_mem = *(int*)&b;
							b_tvin_wrapc_buffer.range(31, 0) = b_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b, "%s\n", (b_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b, tvin_b);
		}

		tcl_file.set_num(1, &tcl_file.b_depth);
		sprintf(tvin_b, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b, tvin_b);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		float AESL_return = neuron(w, x, b);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<32> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(31, 0)
			{
				// celement: return(31, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : *(int*)&AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> return_tmp_mem;
							return_tmp_mem = *(int*)&AESL_return;
							ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "w"
		delete [] tvin_w;
		// release memory allocation: "x"
		delete [] tvin_x;
		// release memory allocation: "b"
		delete [] tvin_b;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

