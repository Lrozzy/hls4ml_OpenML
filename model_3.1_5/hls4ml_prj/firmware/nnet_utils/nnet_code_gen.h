#ifndef NNET_INSTR_GEN_H_
#define NNET_INSTR_GEN_H_

#include "nnet_conv1d_latency.h"
#include "nnet_helpers.h"

#include "hls_stream.h"
#include "nnet_common.h"
#include "nnet_function_stubs.h"
#include "nnet_mult.h"

namespace nnet {

template <class data_T, class res_T, typename CONFIG_T> class PointwiseConv1D {
  public:
    static void pointwise_conv(data_T data[CONFIG_T::in_width * CONFIG_T::n_chan],
                               res_T res[CONFIG_T::out_width * CONFIG_T::n_filt],
                               typename CONFIG_T::weight_t weights[CONFIG_T::n_chan * CONFIG_T::n_filt],
                               typename CONFIG_T::bias_t biases[CONFIG_T::n_filt]) {
        // To be implemented in subclasses
    }
};

// hls4ml insert code

template<typename input_t, typename output_t>
void h_quantize_9(input_t *inp, output_t *out) {
    #pragma HLS INLINE

    out[0] = ap_fixed<6,4,AP_RND,AP_WRAP>(inp[0]);
    out[1] = ap_fixed<6,4,AP_RND,AP_WRAP>(inp[1]);
    out[2] = ap_fixed<9,4,AP_RND,AP_WRAP>(inp[2]);
    out[3] = 0;
    out[4] = ap_fixed<8,4,AP_RND,AP_WRAP>(inp[4]);
    out[5] = ap_fixed<6,5,AP_RND,AP_WRAP>(inp[5]);
    out[6] = ap_fixed<6,4,AP_RND,AP_WRAP>(inp[6]);
    out[7] = ap_fixed<5,4,AP_RND,AP_WRAP>(inp[7]);
    out[8] = ap_fixed<6,4,AP_RND,AP_WRAP>(inp[8]);
    out[9] = 0;
    out[10] = 0;
    out[11] = ap_fixed<5,3,AP_RND,AP_WRAP>(inp[11]);
    out[12] = ap_fixed<6,3,AP_RND,AP_WRAP>(inp[12]);
    out[13] = 0;
    out[14] = ap_ufixed<1,5,AP_RND,AP_WRAP>(inp[14]);
    out[15] = ap_fixed<8,4,AP_RND,AP_WRAP>(inp[15]);
}

template<typename input_t, typename output_t>
void h_dense_36_relu_quantizer(input_t *inp, output_t *out) {
    #pragma HLS INLINE

    out[0] = 0;
    out[1] = 0;
    out[2] = 0;
    out[3] = 0;
    out[4] = ap_ufixed<3,5,AP_TRN,AP_WRAP>(inp[4]);
    out[5] = 0;
    out[6] = ap_ufixed<7,6,AP_TRN,AP_WRAP>(inp[6]);
    out[7] = 0;
    out[8] = 0;
    out[9] = 0;
    out[10] = 0;
    out[11] = 0;
    out[12] = ap_ufixed<6,6,AP_TRN,AP_WRAP>(inp[12]);
    out[13] = 0;
    out[14] = 0;
    out[15] = 0;
    out[16] = 0;
    out[17] = 0;
    out[18] = 0;
    out[19] = 0;
    out[20] = 0;
    out[21] = 0;
    out[22] = 0;
    out[23] = 0;
    out[24] = 0;
    out[25] = 0;
    out[26] = 0;
    out[27] = 0;
    out[28] = 0;
    out[29] = 0;
    out[30] = 0;
    out[31] = 0;
    out[32] = 0;
    out[33] = 0;
    out[34] = 0;
    out[35] = 0;
    out[36] = 0;
    out[37] = 0;
    out[38] = 0;
    out[39] = 0;
    out[40] = 0;
    out[41] = ap_ufixed<8,6,AP_TRN,AP_WRAP>(inp[41]);
    out[42] = 0;
    out[43] = 0;
    out[44] = 0;
    out[45] = 0;
    out[46] = 0;
    out[47] = 0;
    out[48] = 0;
    out[49] = ap_ufixed<2,4,AP_TRN,AP_WRAP>(inp[49]);
    out[50] = 0;
    out[51] = 0;
    out[52] = 0;
    out[53] = 0;
    out[54] = ap_ufixed<5,5,AP_TRN,AP_WRAP>(inp[54]);
    out[55] = 0;
    out[56] = 0;
    out[57] = 0;
    out[58] = 0;
    out[59] = 0;
    out[60] = 0;
    out[61] = 0;
    out[62] = 0;
    out[63] = 0;
}

template<typename input_t, typename output_t>
void h_dense_37_relu_quantizer(input_t *inp, output_t *out) {
    #pragma HLS INLINE

    out[0] = 0;
    out[1] = 0;
    out[2] = 0;
    out[3] = 0;
    out[4] = 0;
    out[5] = ap_ufixed<7,7,AP_TRN,AP_WRAP>(inp[5]);
    out[6] = 0;
    out[7] = 0;
    out[8] = 0;
    out[9] = 0;
    out[10] = 0;
    out[11] = 0;
    out[12] = 0;
    out[13] = 0;
    out[14] = 0;
    out[15] = 0;
    out[16] = 0;
    out[17] = 0;
    out[18] = 0;
    out[19] = 0;
    out[20] = 0;
    out[21] = 0;
    out[22] = 0;
    out[23] = 0;
    out[24] = 0;
    out[25] = 0;
    out[26] = 0;
    out[27] = 0;
    out[28] = 0;
    out[29] = 0;
    out[30] = 0;
    out[31] = 0;
}

template<typename input_t, typename output_t>
void h_dense_38_relu_quantizer(input_t *inp, output_t *out) {
    #pragma HLS INLINE

    out[0] = 0;
    out[1] = 0;
    out[2] = 0;
    out[3] = 0;
    out[4] = 0;
    out[5] = 0;
    out[6] = 0;
    out[7] = 0;
    out[8] = 0;
    out[9] = 0;
    out[10] = 0;
    out[11] = 0;
    out[12] = ap_ufixed<7,6,AP_TRN,AP_WRAP>(inp[12]);
    out[13] = 0;
    out[14] = 0;
    out[15] = 0;
    out[16] = 0;
    out[17] = 0;
    out[18] = 0;
    out[19] = 0;
    out[20] = 0;
    out[21] = 0;
    out[22] = 0;
    out[23] = 0;
    out[24] = 0;
    out[25] = 0;
    out[26] = 0;
    out[27] = ap_ufixed<4,2,AP_TRN,AP_WRAP>(inp[27]);
    out[28] = 0;
    out[29] = 0;
    out[30] = 0;
    out[31] = 0;
}

template<typename input_t, typename output_t>
void h_dense_39_quantizer(input_t *inp, output_t *out) {
    #pragma HLS INLINE

    out[0] = ap_fixed<10,5,AP_TRN,AP_WRAP>(inp[0]);
    out[1] = ap_fixed<8,3,AP_TRN,AP_WRAP>(inp[1]);
    out[2] = ap_fixed<11,5,AP_TRN,AP_WRAP>(inp[2]);
    out[3] = ap_fixed<11,6,AP_TRN,AP_WRAP>(inp[3]);
    out[4] = ap_fixed<12,6,AP_TRN,AP_WRAP>(inp[4]);
}

} // namespace nnet

#endif
