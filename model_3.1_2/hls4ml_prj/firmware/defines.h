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
typedef ap_fixed<14,5> input_6_t;
typedef ap_fixed<13,5> h_quantize_6_t;
typedef ap_fixed<21,7> h_dense_24_accum_t;
typedef ap_fixed<13,7> h_dense_24_t;
typedef ap_fixed<10,4> h_dense_24_weight_t;
typedef ap_fixed<21,7> h_dense_24_bias_t;
typedef ap_uint<1> layer3_index;
typedef ap_ufixed<11,5> re_lu_3_t;
typedef ap_fixed<18,8> re_lu_3_table_t;
typedef ap_ufixed<11,5> h_dense_24_relu_quantizer_t;
typedef ap_fixed<21,10> h_dense_25_accum_t;
typedef ap_fixed<13,10> h_dense_25_t;
typedef ap_fixed<9,4> h_dense_25_weight_t;
typedef ap_fixed<21,10> h_dense_25_bias_t;
typedef ap_uint<1> layer8_index;
typedef ap_ufixed<9,6> re_lu_4_t;
typedef ap_fixed<18,8> re_lu_4_table_t;
typedef ap_ufixed<9,6> h_dense_25_relu_quantizer_t;
typedef ap_fixed<18,9> h_dense_26_accum_t;
typedef ap_fixed<13,9> h_dense_26_t;
typedef ap_fixed<9,3> h_dense_26_weight_t;
typedef ap_fixed<18,9> h_dense_26_bias_t;
typedef ap_uint<1> layer13_index;
typedef ap_ufixed<10,6> re_lu_5_t;
typedef ap_fixed<18,8> re_lu_5_table_t;
typedef ap_ufixed<10,6> h_dense_26_relu_quantizer_t;
typedef ap_fixed<17,6> h_dense_27_accum_t;
typedef ap_fixed<12,6> h_dense_27_t;
typedef ap_fixed<8,1> h_dense_27_weight_t;
typedef ap_fixed<17,6> h_dense_27_bias_t;
typedef ap_uint<1> layer18_index;
typedef ap_fixed<12,6> result_t;


#endif
