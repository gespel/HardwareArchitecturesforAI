/*******************************************************************************
Vendor: Xilinx
Associated Filename: mlp.h
Purpose: Hardware Architectures for AI - Lab 7
         Fixed-point PRUNED MLP - golden model taken from Lab 6.

Topology (Lab 6, magnitude-pruned model, ~78.95 % of the kernel weights = 0):
    Input(28x28) -> Flatten -> 784
      -> Dense(5)  -> ReLU
      -> Dense(8)  -> ReLU
      -> Dense(8)  -> ReLU
      -> Dense(10) -> softmax

Pruning : the trained FP32 kernels (weights_floatingpoint.weights.h5) with every
          weight |w| < 0.24091238 forced to 0 (one global magnitude threshold,
          exactly the Lab 6 deliverable reconstruction).  Biases are NOT pruned.
          Per-layer sparsity: 81.28 / 30.00 / 26.56 / 31.25 %  (global 78.95 %).
*******************************************************************************/
#ifndef MLP_H
#define MLP_H

#include <ap_fixed.h>

#define IN_SIZE   784
#define L1_SIZE     5
#define L2_SIZE     8
#define L3_SIZE     8
#define OUT_SIZE   10

/* ---------------------------------------------------------------------------
 * Fixed-point word length of the datapath.
 *
 *   IW = INTEGER bits (sign included, ap_fixed convention)
 *   FW = FRACTIONAL bits
 *   W  = IW + FW = total word length
 *
 * Pruned-model activations / MAC accumulator reach ~8 in magnitude, so at
 * least 5-6 integer bits are needed; fewer integer bits overflow and wrap.
 * IW/FW were swept and the C simulation compared against the Python pruned
 * reference (deliverables/prune_export.py):
 *
 *   ap_fixed< 8,3>  -> max|dP| ~ 0.84 , 2/5 match golden   (overflow wrap)
 *   ap_fixed<16,4>  -> max|dP| ~ 0.77 , 4/5 match golden   (overflow wrap)
 *   ap_fixed<12,6>  -> max|dP| ~ 0.10 , 5/5 match golden   (too few frac bits)
 *   ap_fixed<16,6>  -> max|dP| ~ 4e-3 , 5/5 match golden   (acceptable)
 *   ap_fixed<20,6>  -> max|dP| ~ 2e-4 , 5/5 match golden   (chosen)
 * ------------------------------------------------------------------------- */
#ifndef IW
#define IW   6
#endif
#ifndef FW
#define FW  14
#endif
#define W   (IW + FW)

typedef ap_fixed<W, IW> data_t;   /* single knob for the whole datapath */

/* one fully-connected neuron : y = act( bias + sum_i in[i]*w[i] ) */
data_t neuron(const data_t in[], const data_t w[], data_t bias, int n, bool do_relu);

/* top-level MLP : one image in, 10 softmax probabilities out */
void mlp(const data_t input[IN_SIZE], float output[OUT_SIZE]);

#endif /* MLP_H */
