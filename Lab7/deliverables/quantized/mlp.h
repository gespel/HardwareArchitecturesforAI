#ifndef MLP_H
#define MLP_H

#include <ap_fixed.h>

#define IN_SIZE   784
#define L1_SIZE     5
#define L2_SIZE     8
#define L3_SIZE     8
#define OUT_SIZE   10

#ifndef IW
#define IW   6
#endif
#ifndef FW
#define FW  14
#endif
#define W   (IW + FW)

typedef ap_fixed<W, IW> data_t;   /* single knob for the whole datapath */

data_t neuron(const data_t in[], const data_t w[], data_t bias, int n, bool do_relu);

void mlp(const data_t input[IN_SIZE], float output[OUT_SIZE]);

#endif /* MLP_H */
