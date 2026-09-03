/*******************************************************************************
Vendor: Xilinx
Associated Filename: mlp.h
Purpose: Hardware Architectures for AI - Lab 7
         Single-precision floating-point MLP (golden model taken from Lab 5)
*******************************************************************************/
#ifndef MLP_H
#define MLP_H

#include <ap_int.h>

/* ---------------------------------------------------------------------------
 * Network topology (Lab 5, first / floating-point model)
 *
 *   Input(28x28) -> Flatten -> 784
 *     -> Dense(5)  -> ReLU
 *     -> Dense(8)  -> ReLU
 *     -> Dense(8)  -> ReLU
 *     -> Dense(10) -> softmax
 * ------------------------------------------------------------------------- */
#define IN_SIZE   784
#define L1_SIZE     5
#define L2_SIZE     8
#define L3_SIZE     8
#define OUT_SIZE   10

typedef float data_t;


data_t neuron(const data_t in[], const data_t w[], data_t bias, int n, bool do_relu);

void mlp(const data_t input[IN_SIZE], data_t output[OUT_SIZE]);

#endif /* MLP_H */
