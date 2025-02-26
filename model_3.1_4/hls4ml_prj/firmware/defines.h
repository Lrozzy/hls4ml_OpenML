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
typedef ap_fixed<13,5> input_16_t;
typedef ap_fixed<12,5> h_quantize_8_t;
typedef ap_fixed<19,8> h_dense_32_accum_t;
typedef ap_fixed<11,8> h_dense_32_t;
typedef ap_fixed<9,5> h_dense_32_weight_t;
typedef ap_fixed<19,8> h_dense_32_bias_t;
typedef ap_uint<1> layer3_index;
typedef ap_ufixed<10,7> re_lu_9_t;
typedef ap_fixed<18,8> re_lu_9_table_t;
typedef ap_ufixed<10,7> h_dense_32_relu_quantizer_t;
typedef ap_fixed<16,9> h_dense_33_accum_t;
typedef ap_fixed<11,9> h_dense_33_t;
typedef ap_fixed<7,3> h_dense_33_weight_t;
typedef ap_fixed<16,9> h_dense_33_bias_t;
typedef ap_uint<1> layer8_index;
typedef ap_ufixed<9,7> re_lu_10_t;
typedef ap_fixed<18,8> re_lu_10_table_t;
typedef ap_ufixed<9,7> h_dense_33_relu_quantizer_t;
typedef ap_fixed<16,10> h_dense_34_accum_t;
typedef ap_fixed<12,10> h_dense_34_t;
typedef ap_fixed<7,3> h_dense_34_weight_t;
typedef ap_fixed<16,10> h_dense_34_bias_t;
typedef ap_uint<1> layer13_index;
typedef ap_ufixed<8,6> re_lu_11_t;
typedef ap_fixed<18,8> re_lu_11_table_t;
typedef ap_ufixed<8,6> h_dense_34_relu_quantizer_t;
typedef ap_fixed<13,6> h_dense_35_accum_t;
typedef ap_fixed<12,6> h_dense_35_t;
typedef ap_fixed<7,2> h_dense_35_weight_t;
typedef ap_fixed<13,6> h_dense_35_bias_t;
typedef ap_uint<1> layer18_index;
typedef ap_fixed<12,6> result_t;


#endif
