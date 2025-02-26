set SynModuleInfo {
  {SRCNAME {dense_latency<ap_fixed<11, 6, 5, 3, 0>, ap_fixed<9, 7, 5, 3, 0>, config3>} MODELNAME dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s RTLNAME myproject_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s}
  {SRCNAME {relu<ap_fixed<9, 7, 5, 3, 0>, ap_ufixed<8, 6, 5, 3, 0>, ReLU_config6>} MODELNAME relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s RTLNAME myproject_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s}
  {SRCNAME {dense_latency<ap_ufixed<8, 6, 5, 3, 0>, ap_fixed<9, 8, 5, 3, 0>, config8>} MODELNAME dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s RTLNAME myproject_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s}
  {SRCNAME {relu<ap_fixed<9, 8, 5, 3, 0>, ap_ufixed<8, 8, 5, 3, 0>, ReLU_config11>} MODELNAME relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s RTLNAME myproject_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s}
  {SRCNAME {dense_latency<ap_ufixed<8, 8, 5, 3, 0>, ap_fixed<9, 7, 5, 3, 0>, config13>} MODELNAME dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s RTLNAME myproject_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s
    SUBMODULES {
      {MODELNAME myproject_mul_7ns_8ns_14_1_1 RTLNAME myproject_mul_7ns_8ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {relu<ap_fixed<9, 7, 5, 3, 0>, ap_ufixed<8, 6, 5, 3, 0>, ReLU_config16>} MODELNAME relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s RTLNAME myproject_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s}
  {SRCNAME {dense_latency<ap_ufixed<8, 6, 5, 3, 0>, ap_fixed<12, 6, 5, 3, 0>, config18>} MODELNAME dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s RTLNAME myproject_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1}
}
