// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

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


// wrapc file define: "w_fxp_V"
#define AUTOTB_TVIN_w_fxp_V  "../tv/cdatafile/c.neuron.autotvin_w_fxp_V.dat"
// wrapc file define: "x_fxp_V"
#define AUTOTB_TVIN_x_fxp_V  "../tv/cdatafile/c.neuron.autotvin_x_fxp_V.dat"
// wrapc file define: "b_fxp_V"
#define AUTOTB_TVIN_b_fxp_V  "../tv/cdatafile/c.neuron.autotvin_b_fxp_V.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.neuron.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.neuron.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			w_fxp_V_depth = 0;
			x_fxp_V_depth = 0;
			b_fxp_V_depth = 0;
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
			total_list << "{w_fxp_V " << w_fxp_V_depth << "}\n";
			total_list << "{x_fxp_V " << x_fxp_V_depth << "}\n";
			total_list << "{b_fxp_V " << b_fxp_V_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int w_fxp_V_depth;
		int x_fxp_V_depth;
		int b_fxp_V_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> neuron (
ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> w_fxp,
ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> x_fxp,
ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> b_fxp);

ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> AESL_WRAP_neuron (
ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> w_fxp,
ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> x_fxp,
ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> b_fxp)
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

		ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> AESL_return;

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

			sc_bv<16> ap_return_pc_buffer;
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
					// bitslice(15, 0)
					// {
						// celement: agg.result.V(15, 0)
						// {
							sc_lv<16> agg_result_V_lv0_0_0_0;
						// }
					// }

					// bitslice(15, 0)
					{
						// celement: agg.result.V(15, 0)
						{
							// carray: (0) => (0) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									agg_result_V_lv0_0_0_0.range(15, 0) = sc_bv<16>(ap_return_pc_buffer.range(15, 0));
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						// celement: agg.result.V(15, 0)
						{
							// carray: (0) => (0) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : (AESL_return).range()
								// output_type_conversion : (agg_result_V_lv0_0_0_0).to_string(SC_BIN).c_str()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									(AESL_return).range() = (agg_result_V_lv0_0_0_0).to_string(SC_BIN).c_str();
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

		// "w_fxp_V"
		char* tvin_w_fxp_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_w_fxp_V);

		// "x_fxp_V"
		char* tvin_x_fxp_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_x_fxp_V);

		// "b_fxp_V"
		char* tvin_b_fxp_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_fxp_V);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_w_fxp_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_w_fxp_V, tvin_w_fxp_V);

		sc_bv<16> w_fxp_V_tvin_wrapc_buffer;

		// RTL Name: w_fxp_V
		{
			// bitslice(15, 0)
			{
				// celement: w_fxp.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : w_fxp
						// sub_1st_elem          : 
						// ori_name_1st_elem     : w_fxp
						// regulate_c_name       : w_fxp_V
						// input_type_conversion : (w_fxp).range().to_string(SC_BIN).c_str()
						if (&(w_fxp) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w_fxp_V_tmp_mem;
							w_fxp_V_tmp_mem = (w_fxp).range().to_string(SC_BIN).c_str();
							w_fxp_V_tvin_wrapc_buffer.range(15, 0) = w_fxp_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_w_fxp_V, "%s\n", (w_fxp_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_w_fxp_V, tvin_w_fxp_V);
		}

		tcl_file.set_num(1, &tcl_file.w_fxp_V_depth);
		sprintf(tvin_w_fxp_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_w_fxp_V, tvin_w_fxp_V);

		// [[transaction]]
		sprintf(tvin_x_fxp_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_x_fxp_V, tvin_x_fxp_V);

		sc_bv<16> x_fxp_V_tvin_wrapc_buffer;

		// RTL Name: x_fxp_V
		{
			// bitslice(15, 0)
			{
				// celement: x_fxp.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : x_fxp
						// sub_1st_elem          : 
						// ori_name_1st_elem     : x_fxp
						// regulate_c_name       : x_fxp_V
						// input_type_conversion : (x_fxp).range().to_string(SC_BIN).c_str()
						if (&(x_fxp) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> x_fxp_V_tmp_mem;
							x_fxp_V_tmp_mem = (x_fxp).range().to_string(SC_BIN).c_str();
							x_fxp_V_tvin_wrapc_buffer.range(15, 0) = x_fxp_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_x_fxp_V, "%s\n", (x_fxp_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_x_fxp_V, tvin_x_fxp_V);
		}

		tcl_file.set_num(1, &tcl_file.x_fxp_V_depth);
		sprintf(tvin_x_fxp_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_x_fxp_V, tvin_x_fxp_V);

		// [[transaction]]
		sprintf(tvin_b_fxp_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_fxp_V, tvin_b_fxp_V);

		sc_bv<16> b_fxp_V_tvin_wrapc_buffer;

		// RTL Name: b_fxp_V
		{
			// bitslice(15, 0)
			{
				// celement: b_fxp.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : b_fxp
						// sub_1st_elem          : 
						// ori_name_1st_elem     : b_fxp
						// regulate_c_name       : b_fxp_V
						// input_type_conversion : (b_fxp).range().to_string(SC_BIN).c_str()
						if (&(b_fxp) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> b_fxp_V_tmp_mem;
							b_fxp_V_tmp_mem = (b_fxp).range().to_string(SC_BIN).c_str();
							b_fxp_V_tvin_wrapc_buffer.range(15, 0) = b_fxp_V_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_fxp_V, "%s\n", (b_fxp_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_fxp_V, tvin_b_fxp_V);
		}

		tcl_file.set_num(1, &tcl_file.b_fxp_V_depth);
		sprintf(tvin_b_fxp_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_fxp_V, tvin_b_fxp_V);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		ap_fixed<16, 10, (ap_q_mode) 5, (ap_o_mode)3, 0> AESL_return = neuron(w_fxp, x_fxp, b_fxp);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<16> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(15, 0)
			{
				// celement: agg.result.V(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : agg_result_V
						// input_type_conversion : (AESL_return).range().to_string(SC_BIN).c_str()
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> agg_result_V_tmp_mem;
							agg_result_V_tmp_mem = (AESL_return).range().to_string(SC_BIN).c_str();
							ap_return_tvout_wrapc_buffer.range(15, 0) = agg_result_V_tmp_mem.range(15, 0);
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
		// release memory allocation: "w_fxp_V"
		delete [] tvin_w_fxp_V;
		// release memory allocation: "x_fxp_V"
		delete [] tvin_x_fxp_V;
		// release memory allocation: "b_fxp_V"
		delete [] tvin_b_fxp_V;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

