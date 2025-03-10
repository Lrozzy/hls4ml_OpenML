// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module myproject_dense_latency_ap_ufixed_9_7_5_3_0_ap_fixed_12_10_5_3_0_config13_s (
        ap_ready,
        data_8_val,
        data_15_val,
        data_23_val,
        data_26_val,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_rst
);


output   ap_ready;
input  [6:0] data_8_val;
input  [6:0] data_15_val;
input  [7:0] data_23_val;
input  [8:0] data_26_val;
output  [11:0] ap_return_0;
output  [11:0] ap_return_1;
output  [11:0] ap_return_2;
output  [11:0] ap_return_3;
output  [11:0] ap_return_4;
output  [11:0] ap_return_5;
output  [11:0] ap_return_6;
output  [11:0] ap_return_7;
input   ap_rst;

wire   [7:0] tmp_30_fu_140_p3;
wire   [8:0] zext_ln73_1_fu_148_p1;
wire   [8:0] mult_fu_152_p2;
wire   [9:0] tmp_31_fu_162_p3;
wire   [10:0] zext_ln73_2_fu_170_p1;
wire   [10:0] zext_ln73_4_fu_174_p1;
wire   [10:0] mult_1_fu_178_p2;
wire   [10:0] mult_2_fu_188_p3;
wire   [9:0] mult_3_fu_208_p3;
wire   [10:0] tmp_32_fu_220_p3;
wire   [11:0] zext_ln73_6_fu_228_p1;
wire   [11:0] mult_4_fu_232_p2;
wire   [11:0] tmp_33_fu_242_p3;
wire   [12:0] zext_ln73_9_fu_254_p1;
wire   [12:0] zext_ln73_7_fu_250_p1;
wire   [13:0] tmp_34_fu_268_p3;
wire   [8:0] tmp_35_fu_280_p3;
wire   [9:0] zext_ln73_13_fu_288_p1;
wire   [9:0] mult_6_fu_292_p2;
wire   [9:0] mult_7_fu_302_p3;
wire   [12:0] tmp_36_fu_314_p3;
wire   [10:0] tmp_37_fu_326_p3;
wire   [13:0] zext_ln73_15_fu_334_p1;
wire   [13:0] zext_ln73_14_fu_322_p1;
wire   [11:0] tmp_38_fu_352_p3;
wire   [12:0] zext_ln73_16_fu_360_p1;
wire   [12:0] zext_ln73_12_fu_348_p1;
wire   [12:0] mult_9_fu_364_p2;
wire   [10:0] tmp_39_fu_374_p3;
wire  signed [9:0] sext_ln17_fu_158_p1;
wire  signed [9:0] add_ln58_fu_386_p2;
wire   [14:0] zext_ln17_2_fu_216_p1;
wire   [14:0] zext_ln73_11_fu_276_p1;
wire   [14:0] sub_ln58_fu_400_p2;
wire  signed [15:0] sext_ln58_2_fu_406_p1;
wire  signed [15:0] sext_ln58_fu_392_p1;
wire   [7:0] zext_ln73_fu_136_p1;
wire   [7:0] zext_ln73_3_fu_200_p1;
wire   [7:0] add_ln58_2_fu_416_p2;
wire   [12:0] tmp_40_fu_422_p3;
wire   [13:0] zext_ln58_fu_430_p1;
wire   [13:0] sub_ln58_1_fu_434_p2;
wire   [9:0] sub_ln58_2_fu_444_p2;
wire  signed [14:0] sext_ln58_4_fu_450_p1;
wire  signed [14:0] sext_ln58_3_fu_440_p1;
wire   [10:0] sub_ln58_3_fu_460_p2;
wire   [9:0] zext_ln73_10_fu_344_p1;
wire   [9:0] zext_ln73_8_fu_264_p1;
wire   [9:0] tmp_fu_470_p2;
wire   [14:0] tmp_41_fu_476_p3;
wire   [15:0] p_shl9_fu_484_p1;
wire   [15:0] sub_ln58_4_fu_488_p2;
wire  signed [15:0] sext_ln17_1_fu_238_p1;
wire   [8:0] tmp3_fu_500_p3;
wire   [9:0] zext_ln58_1_fu_508_p1;
wire   [9:0] sub_ln58_5_fu_512_p2;
wire   [13:0] zext_ln17_4_fu_370_p1;
wire   [13:0] add_ln58_5_fu_522_p2;
wire  signed [13:0] sext_ln58_5_fu_518_p1;
wire   [12:0] zext_ln17_fu_184_p1;
wire   [12:0] mult_5_fu_258_p2;
wire   [12:0] add_ln58_7_fu_534_p2;
wire   [11:0] zext_ln73_17_fu_382_p1;
wire   [11:0] sub_ln58_6_fu_544_p2;
wire  signed [12:0] sext_ln58_7_fu_550_p1;
wire  signed [12:0] sext_ln17_2_fu_298_p1;
wire   [12:0] add_ln58_8_fu_554_p2;
wire  signed [13:0] sext_ln58_8_fu_560_p1;
wire  signed [13:0] sext_ln58_6_fu_540_p1;
wire   [11:0] mul_ln58_cast_fu_466_p1;
wire   [11:0] sub_ln58_7_fu_570_p2;
wire  signed [12:0] sext_ln58_9_fu_576_p1;
wire  signed [12:0] sext_ln58_1_fu_396_p1;
wire   [9:0] zext_ln73_5_fu_204_p1;
wire   [9:0] tmp4_fu_586_p2;
wire   [11:0] zext_ln58_2_fu_592_p1;
wire   [11:0] p_shl_fu_596_p3;
wire   [13:0] zext_ln17_1_fu_196_p1;
wire   [13:0] mult_8_fu_338_p2;
wire   [11:0] sub_ln58_8_fu_604_p2;
wire   [11:0] add_ln58_12_fu_616_p2;
wire  signed [13:0] sext_ln58_10_fu_622_p1;
wire   [13:0] add_ln58_11_fu_610_p2;
wire   [10:0] zext_ln17_3_fu_310_p1;
wire   [15:0] add_ln58_1_fu_410_p2;
wire   [15:0] add_ln58_4_fu_494_p2;
wire   [13:0] add_ln58_6_fu_528_p2;
wire   [9:0] trunc_ln111_2_fu_658_p4;
wire   [10:0] add_ln58_14_fu_632_p2;
wire   [6:0] lshr_ln111_3_fu_672_p4;
wire   [14:0] add_ln58_3_fu_454_p2;
wire   [10:0] trunc_ln111_3_fu_686_p4;
wire   [13:0] add_ln58_9_fu_564_p2;
wire   [9:0] trunc_ln111_4_fu_700_p4;
wire   [12:0] add_ln58_10_fu_580_p2;
wire   [8:0] trunc_ln111_5_fu_714_p4;
wire   [13:0] add_ln58_13_fu_626_p2;
wire   [9:0] trunc_ln111_6_fu_728_p4;
wire  signed [11:0] sext_ln111_fu_668_p1;
wire   [11:0] zext_ln111_fu_682_p1;
wire  signed [11:0] sext_ln111_1_fu_696_p1;
wire  signed [11:0] sext_ln111_2_fu_710_p1;
wire  signed [11:0] sext_ln111_3_fu_724_p1;
wire  signed [11:0] sext_ln111_4_fu_738_p1;

assign add_ln58_10_fu_580_p2 = ($signed(sext_ln58_9_fu_576_p1) + $signed(sext_ln58_1_fu_396_p1));

assign add_ln58_11_fu_610_p2 = (zext_ln17_1_fu_196_p1 + mult_8_fu_338_p2);

assign add_ln58_12_fu_616_p2 = (sub_ln58_8_fu_604_p2 + 12'd88);

assign add_ln58_13_fu_626_p2 = ($signed(sext_ln58_10_fu_622_p1) + $signed(add_ln58_11_fu_610_p2));

assign add_ln58_14_fu_632_p2 = (zext_ln17_3_fu_310_p1 + 11'd256);

assign add_ln58_1_fu_410_p2 = ($signed(sext_ln58_2_fu_406_p1) + $signed(sext_ln58_fu_392_p1));

assign add_ln58_2_fu_416_p2 = (zext_ln73_fu_136_p1 + zext_ln73_3_fu_200_p1);

assign add_ln58_3_fu_454_p2 = ($signed(sext_ln58_4_fu_450_p1) + $signed(sext_ln58_3_fu_440_p1));

assign add_ln58_4_fu_494_p2 = ($signed(sub_ln58_4_fu_488_p2) + $signed(sext_ln17_1_fu_238_p1));

assign add_ln58_5_fu_522_p2 = ($signed(zext_ln17_4_fu_370_p1) + $signed(14'd16328));

assign add_ln58_6_fu_528_p2 = ($signed(add_ln58_5_fu_522_p2) + $signed(sext_ln58_5_fu_518_p1));

assign add_ln58_7_fu_534_p2 = (zext_ln17_fu_184_p1 + mult_5_fu_258_p2);

assign add_ln58_8_fu_554_p2 = ($signed(sext_ln58_7_fu_550_p1) + $signed(sext_ln17_2_fu_298_p1));

assign add_ln58_9_fu_564_p2 = ($signed(sext_ln58_8_fu_560_p1) + $signed(sext_ln58_6_fu_540_p1));

assign add_ln58_fu_386_p2 = ($signed(sext_ln17_fu_158_p1) + $signed(10'd952));

assign ap_ready = 1'b1;

assign lshr_ln111_3_fu_672_p4 = {{add_ln58_14_fu_632_p2[10:4]}};

assign mul_ln58_cast_fu_466_p1 = sub_ln58_3_fu_460_p2;

assign mult_1_fu_178_p2 = (zext_ln73_2_fu_170_p1 + zext_ln73_4_fu_174_p1);

assign mult_2_fu_188_p3 = {{data_8_val}, {4'd0}};

assign mult_3_fu_208_p3 = {{data_15_val}, {3'd0}};

assign mult_4_fu_232_p2 = (12'd0 - zext_ln73_6_fu_228_p1);

assign mult_5_fu_258_p2 = (zext_ln73_9_fu_254_p1 - zext_ln73_7_fu_250_p1);

assign mult_6_fu_292_p2 = (10'd0 - zext_ln73_13_fu_288_p1);

assign mult_7_fu_302_p3 = {{data_23_val}, {2'd0}};

assign mult_8_fu_338_p2 = (zext_ln73_15_fu_334_p1 - zext_ln73_14_fu_322_p1);

assign mult_9_fu_364_p2 = (zext_ln73_16_fu_360_p1 + zext_ln73_12_fu_348_p1);

assign mult_fu_152_p2 = (9'd0 - zext_ln73_1_fu_148_p1);

assign p_shl9_fu_484_p1 = tmp_41_fu_476_p3;

assign p_shl_fu_596_p3 = {{tmp4_fu_586_p2}, {2'd0}};

assign sext_ln111_1_fu_696_p1 = $signed(trunc_ln111_3_fu_686_p4);

assign sext_ln111_2_fu_710_p1 = $signed(trunc_ln111_4_fu_700_p4);

assign sext_ln111_3_fu_724_p1 = $signed(trunc_ln111_5_fu_714_p4);

assign sext_ln111_4_fu_738_p1 = $signed(trunc_ln111_6_fu_728_p4);

assign sext_ln111_fu_668_p1 = $signed(trunc_ln111_2_fu_658_p4);

assign sext_ln17_1_fu_238_p1 = $signed(mult_4_fu_232_p2);

assign sext_ln17_2_fu_298_p1 = $signed(mult_6_fu_292_p2);

assign sext_ln17_fu_158_p1 = $signed(mult_fu_152_p2);

assign sext_ln58_10_fu_622_p1 = $signed(add_ln58_12_fu_616_p2);

assign sext_ln58_1_fu_396_p1 = add_ln58_fu_386_p2;

assign sext_ln58_2_fu_406_p1 = $signed(sub_ln58_fu_400_p2);

assign sext_ln58_3_fu_440_p1 = $signed(sub_ln58_1_fu_434_p2);

assign sext_ln58_4_fu_450_p1 = $signed(sub_ln58_2_fu_444_p2);

assign sext_ln58_5_fu_518_p1 = $signed(sub_ln58_5_fu_512_p2);

assign sext_ln58_6_fu_540_p1 = $signed(add_ln58_7_fu_534_p2);

assign sext_ln58_7_fu_550_p1 = $signed(sub_ln58_6_fu_544_p2);

assign sext_ln58_8_fu_560_p1 = $signed(add_ln58_8_fu_554_p2);

assign sext_ln58_9_fu_576_p1 = $signed(sub_ln58_7_fu_570_p2);

assign sext_ln58_fu_392_p1 = add_ln58_fu_386_p2;

assign sub_ln58_1_fu_434_p2 = (14'd0 - zext_ln58_fu_430_p1);

assign sub_ln58_2_fu_444_p2 = (10'd176 - zext_ln73_13_fu_288_p1);

assign sub_ln58_3_fu_460_p2 = (mult_2_fu_188_p3 - zext_ln73_4_fu_174_p1);

assign sub_ln58_4_fu_488_p2 = (16'd144 - p_shl9_fu_484_p1);

assign sub_ln58_5_fu_512_p2 = (zext_ln58_1_fu_508_p1 - zext_ln73_13_fu_288_p1);

assign sub_ln58_6_fu_544_p2 = (12'd120 - zext_ln73_17_fu_382_p1);

assign sub_ln58_7_fu_570_p2 = (mul_ln58_cast_fu_466_p1 - zext_ln73_17_fu_382_p1);

assign sub_ln58_8_fu_604_p2 = (zext_ln58_2_fu_592_p1 - p_shl_fu_596_p3);

assign sub_ln58_fu_400_p2 = (zext_ln17_2_fu_216_p1 - zext_ln73_11_fu_276_p1);

assign tmp3_fu_500_p3 = {{add_ln58_2_fu_416_p2}, {1'd0}};

assign tmp4_fu_586_p2 = (zext_ln73_10_fu_344_p1 + zext_ln73_5_fu_204_p1);

assign tmp_30_fu_140_p3 = {{data_8_val}, {1'd0}};

assign tmp_31_fu_162_p3 = {{data_8_val}, {3'd0}};

assign tmp_32_fu_220_p3 = {{data_15_val}, {4'd0}};

assign tmp_33_fu_242_p3 = {{data_15_val}, {5'd0}};

assign tmp_34_fu_268_p3 = {{data_23_val}, {6'd0}};

assign tmp_35_fu_280_p3 = {{data_23_val}, {1'd0}};

assign tmp_36_fu_314_p3 = {{data_23_val}, {5'd0}};

assign tmp_37_fu_326_p3 = {{data_23_val}, {3'd0}};

assign tmp_38_fu_352_p3 = {{data_26_val}, {3'd0}};

assign tmp_39_fu_374_p3 = {{data_26_val}, {2'd0}};

assign tmp_40_fu_422_p3 = {{add_ln58_2_fu_416_p2}, {5'd0}};

assign tmp_41_fu_476_p3 = {{tmp_fu_470_p2}, {5'd0}};

assign tmp_fu_470_p2 = (zext_ln73_10_fu_344_p1 + zext_ln73_8_fu_264_p1);

assign trunc_ln111_2_fu_658_p4 = {{add_ln58_6_fu_528_p2[13:4]}};

assign trunc_ln111_3_fu_686_p4 = {{add_ln58_3_fu_454_p2[14:4]}};

assign trunc_ln111_4_fu_700_p4 = {{add_ln58_9_fu_564_p2[13:4]}};

assign trunc_ln111_5_fu_714_p4 = {{add_ln58_10_fu_580_p2[12:4]}};

assign trunc_ln111_6_fu_728_p4 = {{add_ln58_13_fu_626_p2[13:4]}};

assign zext_ln111_fu_682_p1 = lshr_ln111_3_fu_672_p4;

assign zext_ln17_1_fu_196_p1 = mult_2_fu_188_p3;

assign zext_ln17_2_fu_216_p1 = mult_3_fu_208_p3;

assign zext_ln17_3_fu_310_p1 = mult_7_fu_302_p3;

assign zext_ln17_4_fu_370_p1 = mult_9_fu_364_p2;

assign zext_ln17_fu_184_p1 = mult_1_fu_178_p2;

assign zext_ln58_1_fu_508_p1 = tmp3_fu_500_p3;

assign zext_ln58_2_fu_592_p1 = tmp4_fu_586_p2;

assign zext_ln58_fu_430_p1 = tmp_40_fu_422_p3;

assign zext_ln73_10_fu_344_p1 = data_26_val;

assign zext_ln73_11_fu_276_p1 = tmp_34_fu_268_p3;

assign zext_ln73_12_fu_348_p1 = data_26_val;

assign zext_ln73_13_fu_288_p1 = tmp_35_fu_280_p3;

assign zext_ln73_14_fu_322_p1 = tmp_36_fu_314_p3;

assign zext_ln73_15_fu_334_p1 = tmp_37_fu_326_p3;

assign zext_ln73_16_fu_360_p1 = tmp_38_fu_352_p3;

assign zext_ln73_17_fu_382_p1 = tmp_39_fu_374_p3;

assign zext_ln73_1_fu_148_p1 = tmp_30_fu_140_p3;

assign zext_ln73_2_fu_170_p1 = tmp_31_fu_162_p3;

assign zext_ln73_3_fu_200_p1 = data_15_val;

assign zext_ln73_4_fu_174_p1 = tmp_30_fu_140_p3;

assign zext_ln73_5_fu_204_p1 = data_15_val;

assign zext_ln73_6_fu_228_p1 = tmp_32_fu_220_p3;

assign zext_ln73_7_fu_250_p1 = tmp_33_fu_242_p3;

assign zext_ln73_8_fu_264_p1 = data_23_val;

assign zext_ln73_9_fu_254_p1 = mult_3_fu_208_p3;

assign zext_ln73_fu_136_p1 = data_8_val;

assign ap_return_0 = {{add_ln58_1_fu_410_p2[15:4]}};

assign ap_return_1 = {{add_ln58_4_fu_494_p2[15:4]}};

assign ap_return_2 = sext_ln111_fu_668_p1;

assign ap_return_3 = zext_ln111_fu_682_p1;

assign ap_return_4 = sext_ln111_1_fu_696_p1;

assign ap_return_5 = sext_ln111_2_fu_710_p1;

assign ap_return_6 = sext_ln111_3_fu_724_p1;

assign ap_return_7 = sext_ln111_4_fu_738_p1;

endmodule //myproject_dense_latency_ap_ufixed_9_7_5_3_0_ap_fixed_12_10_5_3_0_config13_s
