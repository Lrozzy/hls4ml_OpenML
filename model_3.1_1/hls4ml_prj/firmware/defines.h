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
typedef ap_fixed<15,5> input_1_t;
typedef ap_fixed<14,5> h_quantize_5_t;
typedef ap_fixed<22,6> h_dense_20_accum_t;
typedef ap_fixed<13,6> h_dense_20_t;
typedef ap_fixed<10,3> h_dense_20_weight_t;
typedef ap_fixed<22,6> h_dense_20_bias_t;
typedef ap_uint<1> layer3_index;
typedef ap_ufixed<12,5> re_lu_t;
typedef ap_fixed<18,8> re_lu_table_t;
typedef ap_ufixed<12,5> h_dense_20_relu_quantizer_t;
typedef ap_fixed<22,9> h_dense_21_accum_t;
typedef ap_fixed<13,9> h_dense_21_t;
typedef ap_fixed<9,3> h_dense_21_weight_t;
typedef ap_fixed<22,9> h_dense_21_bias_t;
typedef ap_uint<1> layer8_index;
typedef ap_ufixed<11,7> re_lu_1_t;
typedef ap_fixed<18,8> re_lu_1_table_t;
typedef ap_ufixed<11,7> h_dense_21_relu_quantizer_t;
typedef ap_fixed<19,9> h_dense_22_accum_t;
typedef ap_fixed<13,9> h_dense_22_t;
typedef ap_fixed<9,3> h_dense_22_weight_t;
typedef ap_fixed<19,9> h_dense_22_bias_t;
typedef ap_uint<1> layer13_index;
typedef ap_ufixed<11,7> re_lu_2_t;
typedef ap_fixed<18,8> re_lu_2_table_t;
typedef ap_ufixed<11,7> h_dense_22_relu_quantizer_t;
typedef ap_fixed<17,6> h_dense_23_accum_t;
typedef ap_fixed<12,6> h_dense_23_t;
typedef ap_fixed<8,1> h_dense_23_weight_t;
typedef ap_fixed<17,6> h_dense_23_bias_t;
typedef ap_uint<1> layer18_index;
typedef ap_fixed<12,6> result_t;


#endif
