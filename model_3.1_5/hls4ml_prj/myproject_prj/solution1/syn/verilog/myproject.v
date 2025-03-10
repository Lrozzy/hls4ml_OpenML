// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="myproject_myproject,hls_ip_2024_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu50-fsvh2104-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=3.338000,HLS_SYN_LAT=4,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=333,HLS_SYN_LUT=1460,HLS_VERSION=2024_1}" *)

module myproject (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_21_ap_vld,
        input_21,
        layer20_out_0,
        layer20_out_0_ap_vld,
        layer20_out_1,
        layer20_out_1_ap_vld,
        layer20_out_2,
        layer20_out_2_ap_vld,
        layer20_out_3,
        layer20_out_3_ap_vld,
        layer20_out_4,
        layer20_out_4_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   input_21_ap_vld;
input  [191:0] input_21;
output  [11:0] layer20_out_0;
output   layer20_out_0_ap_vld;
output  [11:0] layer20_out_1;
output   layer20_out_1_ap_vld;
output  [11:0] layer20_out_2;
output   layer20_out_2_ap_vld;
output  [11:0] layer20_out_3;
output   layer20_out_3_ap_vld;
output  [11:0] layer20_out_4;
output   layer20_out_4_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg layer20_out_0_ap_vld;
reg layer20_out_1_ap_vld;
reg layer20_out_2_ap_vld;
reg layer20_out_3_ap_vld;
reg layer20_out_4_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
reg    input_21_ap_vld_in_sig;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg   [191:0] input_21_preg;
reg   [191:0] input_21_in_sig;
reg    input_21_ap_vld_preg;
reg    input_21_blk_n;
wire    ap_block_pp0_stage0;
wire   [5:0] add_ln30_fu_306_p2;
reg   [5:0] add_ln30_reg_927;
reg    ap_block_pp0_stage0_11001;
wire   [5:0] add_ln31_fu_334_p2;
reg   [5:0] add_ln31_reg_932;
wire   [8:0] layer2_out_10_fu_362_p2;
reg   [8:0] layer2_out_10_reg_937;
wire   [7:0] add_ln34_fu_390_p2;
reg   [7:0] add_ln34_reg_942;
wire   [5:0] add_ln35_fu_418_p2;
reg   [5:0] add_ln35_reg_947;
wire   [5:0] add_ln36_fu_446_p2;
reg   [5:0] add_ln36_reg_952;
wire   [4:0] add_ln37_fu_474_p2;
reg   [4:0] add_ln37_reg_957;
wire   [5:0] add_ln38_fu_502_p2;
reg   [5:0] add_ln38_reg_962;
wire   [4:0] add_ln41_fu_530_p2;
reg   [4:0] add_ln41_reg_967;
wire   [5:0] add_ln42_fu_558_p2;
reg   [5:0] add_ln42_reg_972;
wire   [0:0] xor_ln44_fu_580_p2;
reg   [0:0] xor_ln44_reg_977;
wire   [7:0] add_ln45_fu_608_p2;
reg   [7:0] add_ln45_reg_982;
reg   [8:0] layer3_out_reg_987;
reg   [8:0] layer3_out_1_reg_992;
reg   [8:0] layer3_out_2_reg_997;
reg   [8:0] layer3_out_3_reg_1002;
wire   [8:0] layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_ap_return;
reg   [8:0] layer8_out_reg_1007;
reg   [8:0] layer13_out_reg_1012;
reg   [8:0] layer13_out_1_reg_1017;
wire    call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_ready;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_0_val;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_1_val;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_4_val;
wire   [9:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_5_val;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_6_val;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_7_val;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_8_val;
wire   [7:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_11_val;
wire   [7:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_12_val;
wire   [9:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_14_val;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_15_val;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_0;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_1;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_2;
wire   [8:0] call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_3;
wire    call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_ready;
wire   [7:0] call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_0;
wire   [7:0] call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_1;
wire   [7:0] call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_2;
wire   [7:0] call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_3;
wire    layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_ap_ready;
wire   [7:0] layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_6_val;
wire   [7:0] layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_12_val;
wire   [6:0] layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_54_val;
wire    layer11_out_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s_fu_261_ap_ready;
wire   [6:0] layer11_out_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s_fu_261_ap_return;
wire    call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266_ap_ready;
wire   [8:0] call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266_ap_return_0;
wire   [8:0] call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266_ap_return_1;
wire    call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272_ap_ready;
wire   [7:0] call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272_ap_return_0;
wire   [7:0] call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272_ap_return_1;
wire    call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_ready;
wire   [7:0] call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_data_12_val;
wire   [3:0] call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_data_27_val;
wire   [11:0] call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_0;
wire   [11:0] call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_1;
wire   [11:0] call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_2;
wire   [11:0] call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_3;
wire   [11:0] call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_4;
wire    ap_block_pp0_stage0_ignoreCallOp65;
wire    ap_block_pp0_stage0_ignoreCallOp70;
wire    ap_block_pp0_stage0_ignoreCallOp81;
wire    ap_block_pp0_stage0_ignoreCallOp82;
wire    ap_block_pp0_stage0_ignoreCallOp83;
wire    ap_block_pp0_stage0_ignoreCallOp100;
wire    ap_block_pp0_stage0_ignoreCallOp106;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] tmp_fu_294_p3;
wire   [5:0] trunc_ln30_1_fu_284_p4;
wire   [5:0] zext_ln30_fu_302_p1;
wire   [0:0] tmp_1_fu_322_p3;
wire   [5:0] trunc_ln_fu_312_p4;
wire   [5:0] zext_ln31_fu_330_p1;
wire   [0:0] tmp_2_fu_350_p3;
wire   [8:0] trunc_ln1_fu_340_p4;
wire   [8:0] zext_ln32_fu_358_p1;
wire   [0:0] tmp_3_fu_378_p3;
wire   [7:0] trunc_ln2_fu_368_p4;
wire   [7:0] zext_ln34_fu_386_p1;
wire   [0:0] tmp_4_fu_406_p3;
wire   [5:0] trunc_ln3_fu_396_p4;
wire   [5:0] zext_ln35_fu_414_p1;
wire   [0:0] tmp_5_fu_434_p3;
wire   [5:0] trunc_ln4_fu_424_p4;
wire   [5:0] zext_ln36_fu_442_p1;
wire   [0:0] tmp_6_fu_462_p3;
wire   [4:0] trunc_ln5_fu_452_p4;
wire   [4:0] zext_ln37_fu_470_p1;
wire   [0:0] tmp_7_fu_490_p3;
wire   [5:0] trunc_ln6_fu_480_p4;
wire   [5:0] zext_ln38_fu_498_p1;
wire   [0:0] tmp_8_fu_518_p3;
wire   [4:0] trunc_ln7_fu_508_p4;
wire   [4:0] zext_ln41_fu_526_p1;
wire   [0:0] tmp_9_fu_546_p3;
wire   [5:0] trunc_ln8_fu_536_p4;
wire   [5:0] zext_ln42_fu_554_p1;
wire   [0:0] tmp_10_fu_564_p3;
wire   [0:0] tmp_18_fu_572_p3;
wire   [0:0] tmp_19_fu_596_p3;
wire   [7:0] trunc_ln9_fu_586_p4;
wire   [7:0] zext_ln45_fu_604_p1;
wire   [6:0] tmp_s_fu_735_p4;
wire   [5:0] tmp_11_fu_754_p4;
wire   [4:0] tmp_12_fu_773_p4;
wire   [6:0] tmp_13_fu_808_p4;
wire   [9:0] tmp_14_fu_853_p4;
wire   [10:0] shl_ln_fu_863_p3;
wire   [7:0] tmp_15_fu_876_p4;
wire   [8:0] shl_ln1_fu_886_p3;
wire   [10:0] trunc_ln200_fu_899_p1;
wire   [10:0] tmp_16_fu_908_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to3;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 input_21_preg = 192'd0;
#0 input_21_ap_vld_preg = 1'b0;
end

myproject_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229(
    .ap_ready(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_ready),
    .data_0_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_0_val),
    .data_1_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_1_val),
    .data_2_val(layer2_out_10_reg_937),
    .data_4_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_4_val),
    .data_5_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_5_val),
    .data_6_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_6_val),
    .data_7_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_7_val),
    .data_8_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_8_val),
    .data_11_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_11_val),
    .data_12_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_12_val),
    .data_14_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_14_val),
    .data_15_val(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_15_val),
    .ap_return_0(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_0),
    .ap_return_1(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_1),
    .ap_return_2(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_2),
    .ap_return_3(call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_3),
    .ap_rst(ap_rst)
);

myproject_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245(
    .ap_ready(call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_ready),
    .data_6_val(layer3_out_reg_987),
    .data_12_val(layer3_out_1_reg_992),
    .data_41_val(layer3_out_2_reg_997),
    .data_54_val(layer3_out_3_reg_1002),
    .ap_return_0(call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_0),
    .ap_return_1(call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_1),
    .ap_return_2(call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_2),
    .ap_return_3(call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_3),
    .ap_rst(ap_rst)
);

myproject_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253(
    .ap_ready(layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_ap_ready),
    .data_6_val(layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_6_val),
    .data_12_val(layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_12_val),
    .data_41_val(call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_2),
    .data_54_val(layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_54_val),
    .ap_return(layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_ap_return),
    .ap_rst(ap_rst)
);

myproject_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s layer11_out_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s_fu_261(
    .ap_ready(layer11_out_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s_fu_261_ap_ready),
    .data_5_val(layer8_out_reg_1007),
    .ap_return(layer11_out_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s_fu_261_ap_return),
    .ap_rst(ap_rst)
);

myproject_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266(
    .ap_ready(call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266_ap_ready),
    .data_5_val(layer11_out_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s_fu_261_ap_return),
    .ap_return_0(call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266_ap_return_0),
    .ap_return_1(call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266_ap_return_1),
    .ap_rst(ap_rst)
);

myproject_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272(
    .ap_ready(call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272_ap_ready),
    .data_12_val(layer13_out_reg_1012),
    .data_27_val(layer13_out_1_reg_1017),
    .ap_return_0(call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272_ap_return_0),
    .ap_return_1(call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272_ap_return_1),
    .ap_rst(ap_rst)
);

myproject_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278(
    .ap_ready(call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_ready),
    .data_12_val(call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_data_12_val),
    .data_27_val(call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_data_27_val),
    .ap_return_0(call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_0),
    .ap_return_1(call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_1),
    .ap_return_2(call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_2),
    .ap_return_3(call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_3),
    .ap_return_4(call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_4),
    .ap_rst(ap_rst)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        input_21_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            input_21_ap_vld_preg <= 1'b0;
        end else if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (input_21_ap_vld == 1'b1))) begin
            input_21_ap_vld_preg <= input_21_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        input_21_preg <= 192'd0;
    end else begin
        if ((~((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (input_21_ap_vld == 1'b1))) begin
            input_21_preg <= input_21;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln30_reg_927 <= add_ln30_fu_306_p2;
        add_ln31_reg_932 <= add_ln31_fu_334_p2;
        add_ln34_reg_942 <= add_ln34_fu_390_p2;
        add_ln35_reg_947 <= add_ln35_fu_418_p2;
        add_ln36_reg_952 <= add_ln36_fu_446_p2;
        add_ln37_reg_957 <= add_ln37_fu_474_p2;
        add_ln38_reg_962 <= add_ln38_fu_502_p2;
        add_ln41_reg_967 <= add_ln41_fu_530_p2;
        add_ln42_reg_972 <= add_ln42_fu_558_p2;
        add_ln45_reg_982 <= add_ln45_fu_608_p2;
        layer2_out_10_reg_937 <= layer2_out_10_fu_362_p2;
        layer3_out_1_reg_992 <= call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_1;
        layer3_out_2_reg_997 <= call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_2;
        layer3_out_3_reg_1002 <= call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_3;
        layer3_out_reg_987 <= call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_ap_return_0;
        xor_ln44_reg_977 <= xor_ln44_fu_580_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        layer13_out_1_reg_1017 <= call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266_ap_return_1;
        layer13_out_reg_1012 <= call_ret_dense_latency_ap_ufixed_8_8_5_3_0_ap_fixed_9_7_5_3_0_config13_s_fu_266_ap_return_0;
        layer8_out_reg_1007 <= layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_ap_return;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((input_21_ap_vld == 1'b1)) begin
        input_21_ap_vld_in_sig = input_21_ap_vld;
    end else begin
        input_21_ap_vld_in_sig = input_21_ap_vld_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_21_blk_n = input_21_ap_vld;
    end else begin
        input_21_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((input_21_ap_vld == 1'b1)) begin
        input_21_in_sig = input_21;
    end else begin
        input_21_in_sig = input_21_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        layer20_out_0_ap_vld = 1'b1;
    end else begin
        layer20_out_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        layer20_out_1_ap_vld = 1'b1;
    end else begin
        layer20_out_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        layer20_out_2_ap_vld = 1'b1;
    end else begin
        layer20_out_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        layer20_out_3_ap_vld = 1'b1;
    end else begin
        layer20_out_3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        layer20_out_4_ap_vld = 1'b1;
    end else begin
        layer20_out_4_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln30_fu_306_p2 = (trunc_ln30_1_fu_284_p4 + zext_ln30_fu_302_p1);

assign add_ln31_fu_334_p2 = (trunc_ln_fu_312_p4 + zext_ln31_fu_330_p1);

assign add_ln34_fu_390_p2 = (trunc_ln2_fu_368_p4 + zext_ln34_fu_386_p1);

assign add_ln35_fu_418_p2 = (trunc_ln3_fu_396_p4 + zext_ln35_fu_414_p1);

assign add_ln36_fu_446_p2 = (trunc_ln4_fu_424_p4 + zext_ln36_fu_442_p1);

assign add_ln37_fu_474_p2 = (trunc_ln5_fu_452_p4 + zext_ln37_fu_470_p1);

assign add_ln38_fu_502_p2 = (trunc_ln6_fu_480_p4 + zext_ln38_fu_498_p1);

assign add_ln41_fu_530_p2 = (trunc_ln7_fu_508_p4 + zext_ln41_fu_526_p1);

assign add_ln42_fu_558_p2 = (trunc_ln8_fu_536_p4 + zext_ln42_fu_554_p1);

assign add_ln45_fu_608_p2 = (trunc_ln9_fu_586_p4 + zext_ln45_fu_604_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_start == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0));
end

assign ap_block_pp0_stage0_ignoreCallOp100 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_ignoreCallOp106 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_ignoreCallOp65 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_ignoreCallOp70 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_ignoreCallOp81 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_ignoreCallOp82 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_ignoreCallOp83 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_start == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (input_21_ap_vld_in_sig == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_0_val = {{add_ln30_reg_927}, {3'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_11_val = {{add_ln41_reg_967}, {3'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_12_val = {{add_ln42_reg_972}, {2'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_14_val = {{xor_ln44_reg_977}, {9'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_15_val = {{add_ln45_reg_982}, {1'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_1_val = {{add_ln31_reg_932}, {3'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_4_val = {{add_ln34_reg_942}, {1'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_5_val = {{add_ln35_reg_947}, {4'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_6_val = {{add_ln36_reg_952}, {3'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_7_val = {{add_ln37_reg_957}, {4'd0}};

assign call_ret1_dense_latency_ap_fixed_11_6_5_3_0_ap_fixed_9_7_5_3_0_config3_s_fu_229_data_8_val = {{add_ln38_reg_962}, {3'd0}};

assign call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_data_12_val = {{tmp_13_fu_808_p4}, {1'd0}};

assign call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_data_27_val = call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272_ap_return_1[3:0];

assign layer20_out_0 = $signed(shl_ln_fu_863_p3);

assign layer20_out_1 = $signed(shl_ln1_fu_886_p3);

assign layer20_out_2 = $signed(trunc_ln200_fu_899_p1);

assign layer20_out_3 = {{tmp_16_fu_908_p4}, {1'd0}};

assign layer20_out_4 = call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_4;

assign layer2_out_10_fu_362_p2 = (trunc_ln1_fu_340_p4 + zext_ln32_fu_358_p1);

assign layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_12_val = {{tmp_11_fu_754_p4}, {2'd0}};

assign layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_54_val = {{tmp_12_fu_773_p4}, {2'd0}};

assign layer8_out_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_9_8_5_3_0_config8_s_fu_253_data_6_val = {{tmp_s_fu_735_p4}, {1'd0}};

assign shl_ln1_fu_886_p3 = {{tmp_15_fu_876_p4}, {1'd0}};

assign shl_ln_fu_863_p3 = {{tmp_14_fu_853_p4}, {1'd0}};

assign tmp_10_fu_564_p3 = input_21_in_sig[192'd178];

assign tmp_11_fu_754_p4 = {{call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_1[7:2]}};

assign tmp_12_fu_773_p4 = {{call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_3[6:2]}};

assign tmp_13_fu_808_p4 = {{call_ret4_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config16_s_fu_272_ap_return_0[7:1]}};

assign tmp_14_fu_853_p4 = {{call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_0[10:1]}};

assign tmp_15_fu_876_p4 = {{call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_1[8:1]}};

assign tmp_16_fu_908_p4 = {{call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_3[11:1]}};

assign tmp_18_fu_572_p3 = input_21_in_sig[192'd177];

assign tmp_19_fu_596_p3 = input_21_in_sig[192'd181];

assign tmp_1_fu_322_p3 = input_21_in_sig[192'd15];

assign tmp_2_fu_350_p3 = input_21_in_sig[192'd24];

assign tmp_3_fu_378_p3 = input_21_in_sig[192'd49];

assign tmp_4_fu_406_p3 = input_21_in_sig[192'd64];

assign tmp_5_fu_434_p3 = input_21_in_sig[192'd75];

assign tmp_6_fu_462_p3 = input_21_in_sig[192'd88];

assign tmp_7_fu_490_p3 = input_21_in_sig[192'd99];

assign tmp_8_fu_518_p3 = input_21_in_sig[192'd135];

assign tmp_9_fu_546_p3 = input_21_in_sig[192'd146];

assign tmp_fu_294_p3 = input_21_in_sig[32'd3];

assign tmp_s_fu_735_p4 = {{call_ret2_relu_ap_fixed_9_7_5_3_0_ap_ufixed_8_6_5_3_0_ReLU_config6_s_fu_245_ap_return_0[7:1]}};

assign trunc_ln1_fu_340_p4 = {{input_21_in_sig[33:25]}};

assign trunc_ln200_fu_899_p1 = call_ret5_dense_latency_ap_ufixed_8_6_5_3_0_ap_fixed_12_6_5_3_0_config18_s_fu_278_ap_return_2[10:0];

assign trunc_ln2_fu_368_p4 = {{input_21_in_sig[57:50]}};

assign trunc_ln30_1_fu_284_p4 = {{input_21_in_sig[9:4]}};

assign trunc_ln3_fu_396_p4 = {{input_21_in_sig[70:65]}};

assign trunc_ln4_fu_424_p4 = {{input_21_in_sig[81:76]}};

assign trunc_ln5_fu_452_p4 = {{input_21_in_sig[93:89]}};

assign trunc_ln6_fu_480_p4 = {{input_21_in_sig[105:100]}};

assign trunc_ln7_fu_508_p4 = {{input_21_in_sig[140:136]}};

assign trunc_ln8_fu_536_p4 = {{input_21_in_sig[152:147]}};

assign trunc_ln9_fu_586_p4 = {{input_21_in_sig[189:182]}};

assign trunc_ln_fu_312_p4 = {{input_21_in_sig[21:16]}};

assign xor_ln44_fu_580_p2 = (tmp_18_fu_572_p3 ^ tmp_10_fu_564_p3);

assign zext_ln30_fu_302_p1 = tmp_fu_294_p3;

assign zext_ln31_fu_330_p1 = tmp_1_fu_322_p3;

assign zext_ln32_fu_358_p1 = tmp_2_fu_350_p3;

assign zext_ln34_fu_386_p1 = tmp_3_fu_378_p3;

assign zext_ln35_fu_414_p1 = tmp_4_fu_406_p3;

assign zext_ln36_fu_442_p1 = tmp_5_fu_434_p3;

assign zext_ln37_fu_470_p1 = tmp_6_fu_462_p3;

assign zext_ln38_fu_498_p1 = tmp_7_fu_490_p3;

assign zext_ln41_fu_526_p1 = tmp_8_fu_518_p3;

assign zext_ln42_fu_554_p1 = tmp_9_fu_546_p3;

assign zext_ln45_fu_604_p1 = tmp_19_fu_596_p3;

endmodule //myproject
