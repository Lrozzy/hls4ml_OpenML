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
typedef ap_fixed<13,5> input_11_t;
typedef ap_fixed<12,5> h_quantize_7_t;
typedef ap_fixed<20,8> h_dense_28_accum_t;
typedef ap_fixed<13,8> h_dense_28_t;
typedef ap_fixed<10,5> h_dense_28_weight_t;
typedef ap_fixed<20,8> h_dense_28_bias_t;
typedef ap_uint<1> layer3_index;
typedef ap_ufixed<12,7> re_lu_6_t;
typedef ap_fixed<18,8> re_lu_6_table_t;
typedef ap_ufixed<12,7> h_dense_28_relu_quantizer_t;
typedef ap_fixed<20,11> h_dense_29_accum_t;
typedef ap_fixed<13,11> h_dense_29_t;
typedef ap_fixed<8,4> h_dense_29_weight_t;
typedef ap_fixed<20,11> h_dense_29_bias_t;
typedef ap_uint<1> layer8_index;
typedef ap_ufixed<9,7> re_lu_7_t;
typedef ap_fixed<18,8> re_lu_7_table_t;
typedef ap_ufixed<9,7> h_dense_29_relu_quantizer_t;
typedef ap_fixed<19,11> h_dense_30_accum_t;
typedef ap_fixed<13,11> h_dense_30_t;
typedef ap_fixed<10,4> h_dense_30_weight_t;
typedef ap_fixed<19,11> h_dense_30_bias_t;
typedef ap_uint<1> layer13_index;
typedef ap_ufixed<8,6> re_lu_8_t;
typedef ap_fixed<18,8> re_lu_8_table_t;
typedef ap_ufixed<8,6> h_dense_30_relu_quantizer_t;
typedef ap_fixed<16,7> h_dense_31_accum_t;
typedef ap_fixed<14,7> h_dense_31_t;
typedef ap_fixed<8,1> h_dense_31_weight_t;
typedef ap_fixed<16,7> h_dense_31_bias_t;
typedef ap_uint<1> layer18_index;
typedef ap_fixed<14,7> result_t;


#endif
