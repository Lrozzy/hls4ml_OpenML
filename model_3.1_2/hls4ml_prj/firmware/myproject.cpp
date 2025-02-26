#include <iostream>

#include "myproject.h"
#include "parameters.h"


void myproject(
    input_6_t input_6[N_INPUT_1_1],
    result_t layer20_out[N_LAYER_18]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_6 complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer20_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=input_6,layer20_out 
    #pragma HLS PIPELINE

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<h_dense_24_weight_t, 1024>(w3, "w3.txt");
        nnet::load_weights_from_txt<h_dense_24_bias_t, 64>(b3, "b3.txt");
        nnet::load_weights_from_txt<h_dense_25_weight_t, 2048>(w8, "w8.txt");
        nnet::load_weights_from_txt<h_dense_25_bias_t, 32>(b8, "b8.txt");
        nnet::load_weights_from_txt<h_dense_26_weight_t, 1024>(w13, "w13.txt");
        nnet::load_weights_from_txt<h_dense_26_bias_t, 32>(b13, "b13.txt");
        nnet::load_weights_from_txt<h_dense_27_weight_t, 160>(w18, "w18.txt");
        nnet::load_weights_from_txt<h_dense_27_bias_t, 5>(b18, "b18.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    h_quantize_6_t layer2_out[N_INPUT_1_1];
    #pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0
    nnet::h_quantize_6<input_6_t, h_quantize_6_t>(input_6, layer2_out); // h_quantize_6

    h_dense_24_t layer3_out[N_LAYER_3];
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
    nnet::dense<h_quantize_6_t, h_dense_24_t, config3>(layer2_out, layer3_out, w3, b3); // h_dense_24

    re_lu_3_t layer6_out[N_LAYER_3];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
    nnet::relu<h_dense_24_t, re_lu_3_t, ReLU_config6>(layer3_out, layer6_out); // re_lu_3

    h_dense_24_relu_quantizer_t layer7_out[N_LAYER_3];
    #pragma HLS ARRAY_PARTITION variable=layer7_out complete dim=0
    nnet::h_dense_24_relu_quantizer<re_lu_3_t, h_dense_24_relu_quantizer_t>(layer6_out, layer7_out); // h_dense_24_relu_quantizer

    h_dense_25_t layer8_out[N_LAYER_8];
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
    nnet::dense<h_dense_24_relu_quantizer_t, h_dense_25_t, config8>(layer7_out, layer8_out, w8, b8); // h_dense_25

    re_lu_4_t layer11_out[N_LAYER_8];
    #pragma HLS ARRAY_PARTITION variable=layer11_out complete dim=0
    nnet::relu<h_dense_25_t, re_lu_4_t, ReLU_config11>(layer8_out, layer11_out); // re_lu_4

    h_dense_25_relu_quantizer_t layer12_out[N_LAYER_8];
    #pragma HLS ARRAY_PARTITION variable=layer12_out complete dim=0
    nnet::h_dense_25_relu_quantizer<re_lu_4_t, h_dense_25_relu_quantizer_t>(layer11_out, layer12_out); // h_dense_25_relu_quantizer

    h_dense_26_t layer13_out[N_LAYER_13];
    #pragma HLS ARRAY_PARTITION variable=layer13_out complete dim=0
    nnet::dense<h_dense_25_relu_quantizer_t, h_dense_26_t, config13>(layer12_out, layer13_out, w13, b13); // h_dense_26

    re_lu_5_t layer16_out[N_LAYER_13];
    #pragma HLS ARRAY_PARTITION variable=layer16_out complete dim=0
    nnet::relu<h_dense_26_t, re_lu_5_t, ReLU_config16>(layer13_out, layer16_out); // re_lu_5

    h_dense_26_relu_quantizer_t layer17_out[N_LAYER_13];
    #pragma HLS ARRAY_PARTITION variable=layer17_out complete dim=0
    nnet::h_dense_26_relu_quantizer<re_lu_5_t, h_dense_26_relu_quantizer_t>(layer16_out, layer17_out); // h_dense_26_relu_quantizer

    h_dense_27_t layer18_out[N_LAYER_18];
    #pragma HLS ARRAY_PARTITION variable=layer18_out complete dim=0
    nnet::dense<h_dense_26_relu_quantizer_t, h_dense_27_t, config18>(layer17_out, layer18_out, w18, b18); // h_dense_27

    nnet::h_dense_27_quantizer<h_dense_27_t, result_t>(layer18_out, layer20_out); // h_dense_27_quantizer

}

