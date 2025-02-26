#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 16
#define N_INPUT_1_1 16
#define N_LAYER_3 64
#define N_LAYER_3 64
#define N_LAYER_3 64
#define N_LAYER_8 32
#define N_LAYER_8 32
#define N_LAYER_8 32
#define N_LAYER_13 32
#define N_LAYER_13 32
#define N_LAYER_13 32
#define N_LAYER_18 5
#define N_LAYER_18 5


// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<12,6> input_21_t;
typedef ap_fixed<11,6> h_quantize_9_t;
typedef ap_fixed<23,7> h_dense_36_accum_t;
typedef ap_fixed<9,7> h_dense_36_t;
typedef ap_fixed<16,5> h_dense_36_weight_t;
typedef ap_fixed<23,7> h_dense_36_bias_t;
typedef ap_uint<1> layer3_index;
typedef ap_ufixed<8,6> re_lu_12_t;
typedef ap_fixed<18,8> re_lu_12_table_t;
typedef ap_ufixed<8,6> h_dense_36_relu_quantizer_t;
typedef ap_fixed<17,8> h_dense_37_accum_t;
typedef ap_fixed<9,8> h_dense_37_t;
typedef ap_fixed<10,3> h_dense_37_weight_t;
typedef ap_fixed<17,8> h_dense_37_bias_t;
typedef ap_uint<1> layer8_index;
typedef ap_ufixed<8,8> re_lu_13_t;
typedef ap_fixed<18,8> re_lu_13_table_t;
typedef ap_ufixed<8,8> h_dense_37_relu_quantizer_t;
typedef ap_fixed<15,7> h_dense_38_accum_t;
typedef ap_fixed<9,7> h_dense_38_t;
typedef ap_fixed<11,3> h_dense_38_weight_t;
typedef ap_fixed<15,7> h_dense_38_bias_t;
typedef ap_uint<1> layer13_index;
typedef ap_ufixed<8,6> re_lu_14_t;
typedef ap_fixed<18,8> re_lu_14_table_t;
typedef ap_ufixed<8,6> h_dense_38_relu_quantizer_t;
typedef ap_fixed<13,6> h_dense_39_accum_t;
typedef ap_fixed<12,6> h_dense_39_t;
typedef ap_fixed<8,3> h_dense_39_weight_t;
typedef ap_fixed<13,6> h_dense_39_bias_t;
typedef ap_uint<1> layer18_index;
typedef ap_fixed<12,6> result_t;


#endif
