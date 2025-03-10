// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module myproject_relu_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_relu_config10_s (
        ap_ready,
        data_0_val,
        data_1_val,
        data_2_val,
        data_3_val,
        data_4_val,
        data_5_val,
        data_6_val,
        data_9_val,
        data_10_val,
        data_11_val,
        data_12_val,
        data_13_val,
        data_14_val,
        data_15_val,
        data_16_val,
        data_18_val,
        data_20_val,
        data_21_val,
        data_24_val,
        data_27_val,
        data_28_val,
        data_29_val,
        data_30_val,
        data_31_val,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15,
        ap_return_16,
        ap_return_17,
        ap_return_18,
        ap_return_19,
        ap_return_20,
        ap_return_21,
        ap_return_22,
        ap_return_23,
        ap_rst
);


output   ap_ready;
input  [15:0] data_0_val;
input  [15:0] data_1_val;
input  [15:0] data_2_val;
input  [15:0] data_3_val;
input  [15:0] data_4_val;
input  [15:0] data_5_val;
input  [15:0] data_6_val;
input  [15:0] data_9_val;
input  [15:0] data_10_val;
input  [15:0] data_11_val;
input  [15:0] data_12_val;
input  [15:0] data_13_val;
input  [15:0] data_14_val;
input  [15:0] data_15_val;
input  [15:0] data_16_val;
input  [15:0] data_18_val;
input  [15:0] data_20_val;
input  [15:0] data_21_val;
input  [15:0] data_24_val;
input  [15:0] data_27_val;
input  [15:0] data_28_val;
input  [15:0] data_29_val;
input  [15:0] data_30_val;
input  [15:0] data_31_val;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;
output  [15:0] ap_return_3;
output  [15:0] ap_return_4;
output  [15:0] ap_return_5;
output  [15:0] ap_return_6;
output  [15:0] ap_return_7;
output  [15:0] ap_return_8;
output  [15:0] ap_return_9;
output  [15:0] ap_return_10;
output  [15:0] ap_return_11;
output  [15:0] ap_return_12;
output  [15:0] ap_return_13;
output  [15:0] ap_return_14;
output  [15:0] ap_return_15;
output  [15:0] ap_return_16;
output  [15:0] ap_return_17;
output  [15:0] ap_return_18;
output  [15:0] ap_return_19;
output  [15:0] ap_return_20;
output  [15:0] ap_return_21;
output  [15:0] ap_return_22;
output  [15:0] ap_return_23;
input   ap_rst;

wire   [0:0] icmp_ln45_fu_304_p2;
wire   [14:0] trunc_ln42_112_fu_300_p1;
wire   [14:0] datareg_fu_310_p3;
wire   [0:0] icmp_ln45_90_fu_322_p2;
wire   [14:0] trunc_ln42_111_fu_296_p1;
wire   [14:0] datareg_90_fu_328_p3;
wire   [0:0] icmp_ln45_91_fu_340_p2;
wire   [14:0] trunc_ln42_110_fu_292_p1;
wire   [14:0] datareg_91_fu_346_p3;
wire   [0:0] icmp_ln45_92_fu_358_p2;
wire   [14:0] trunc_ln42_109_fu_288_p1;
wire   [14:0] datareg_92_fu_364_p3;
wire   [0:0] icmp_ln45_93_fu_376_p2;
wire   [14:0] trunc_ln42_108_fu_284_p1;
wire   [14:0] datareg_93_fu_382_p3;
wire   [0:0] icmp_ln45_94_fu_394_p2;
wire   [14:0] trunc_ln42_107_fu_280_p1;
wire   [14:0] datareg_94_fu_400_p3;
wire   [0:0] icmp_ln45_95_fu_412_p2;
wire   [14:0] trunc_ln42_106_fu_276_p1;
wire   [14:0] datareg_95_fu_418_p3;
wire   [0:0] icmp_ln45_96_fu_430_p2;
wire   [14:0] trunc_ln42_105_fu_272_p1;
wire   [14:0] datareg_96_fu_436_p3;
wire   [0:0] icmp_ln45_97_fu_448_p2;
wire   [14:0] trunc_ln42_104_fu_268_p1;
wire   [14:0] datareg_97_fu_454_p3;
wire   [0:0] icmp_ln45_98_fu_466_p2;
wire   [14:0] trunc_ln42_103_fu_264_p1;
wire   [14:0] datareg_98_fu_472_p3;
wire   [0:0] icmp_ln45_99_fu_484_p2;
wire   [14:0] trunc_ln42_102_fu_260_p1;
wire   [14:0] datareg_99_fu_490_p3;
wire   [0:0] icmp_ln45_100_fu_502_p2;
wire   [14:0] trunc_ln42_101_fu_256_p1;
wire   [14:0] datareg_100_fu_508_p3;
wire   [0:0] icmp_ln45_101_fu_520_p2;
wire   [14:0] trunc_ln42_100_fu_252_p1;
wire   [14:0] datareg_101_fu_526_p3;
wire   [0:0] icmp_ln45_102_fu_538_p2;
wire   [14:0] trunc_ln42_99_fu_248_p1;
wire   [14:0] datareg_102_fu_544_p3;
wire   [0:0] icmp_ln45_103_fu_556_p2;
wire   [14:0] trunc_ln42_98_fu_244_p1;
wire   [14:0] datareg_103_fu_562_p3;
wire   [0:0] icmp_ln45_104_fu_574_p2;
wire   [14:0] trunc_ln42_97_fu_240_p1;
wire   [14:0] datareg_104_fu_580_p3;
wire   [0:0] icmp_ln45_105_fu_592_p2;
wire   [14:0] trunc_ln42_96_fu_236_p1;
wire   [14:0] datareg_105_fu_598_p3;
wire   [0:0] icmp_ln45_106_fu_610_p2;
wire   [14:0] trunc_ln42_95_fu_232_p1;
wire   [14:0] datareg_106_fu_616_p3;
wire   [0:0] icmp_ln45_107_fu_628_p2;
wire   [14:0] trunc_ln42_94_fu_228_p1;
wire   [14:0] datareg_107_fu_634_p3;
wire   [0:0] icmp_ln45_108_fu_646_p2;
wire   [14:0] trunc_ln42_93_fu_224_p1;
wire   [14:0] datareg_108_fu_652_p3;
wire   [0:0] icmp_ln45_109_fu_664_p2;
wire   [14:0] trunc_ln42_92_fu_220_p1;
wire   [14:0] datareg_109_fu_670_p3;
wire   [0:0] icmp_ln45_110_fu_682_p2;
wire   [14:0] trunc_ln42_91_fu_216_p1;
wire   [14:0] datareg_110_fu_688_p3;
wire   [0:0] icmp_ln45_111_fu_700_p2;
wire   [14:0] trunc_ln42_90_fu_212_p1;
wire   [14:0] datareg_111_fu_706_p3;
wire   [0:0] icmp_ln45_112_fu_718_p2;
wire   [14:0] trunc_ln42_fu_208_p1;
wire   [14:0] datareg_112_fu_724_p3;
wire   [15:0] zext_ln45_fu_318_p1;
wire   [15:0] zext_ln45_90_fu_336_p1;
wire   [15:0] zext_ln45_91_fu_354_p1;
wire   [15:0] zext_ln45_92_fu_372_p1;
wire   [15:0] zext_ln45_93_fu_390_p1;
wire   [15:0] zext_ln45_94_fu_408_p1;
wire   [15:0] zext_ln45_95_fu_426_p1;
wire   [15:0] zext_ln45_96_fu_444_p1;
wire   [15:0] zext_ln45_97_fu_462_p1;
wire   [15:0] zext_ln45_98_fu_480_p1;
wire   [15:0] zext_ln45_99_fu_498_p1;
wire   [15:0] zext_ln45_100_fu_516_p1;
wire   [15:0] zext_ln45_101_fu_534_p1;
wire   [15:0] zext_ln45_102_fu_552_p1;
wire   [15:0] zext_ln45_103_fu_570_p1;
wire   [15:0] zext_ln45_104_fu_588_p1;
wire   [15:0] zext_ln45_105_fu_606_p1;
wire   [15:0] zext_ln45_106_fu_624_p1;
wire   [15:0] zext_ln45_107_fu_642_p1;
wire   [15:0] zext_ln45_108_fu_660_p1;
wire   [15:0] zext_ln45_109_fu_678_p1;
wire   [15:0] zext_ln45_110_fu_696_p1;
wire   [15:0] zext_ln45_111_fu_714_p1;
wire   [15:0] zext_ln45_112_fu_732_p1;

assign ap_ready = 1'b1;

assign datareg_100_fu_508_p3 = ((icmp_ln45_100_fu_502_p2[0:0] == 1'b1) ? trunc_ln42_101_fu_256_p1 : 15'd0);

assign datareg_101_fu_526_p3 = ((icmp_ln45_101_fu_520_p2[0:0] == 1'b1) ? trunc_ln42_100_fu_252_p1 : 15'd0);

assign datareg_102_fu_544_p3 = ((icmp_ln45_102_fu_538_p2[0:0] == 1'b1) ? trunc_ln42_99_fu_248_p1 : 15'd0);

assign datareg_103_fu_562_p3 = ((icmp_ln45_103_fu_556_p2[0:0] == 1'b1) ? trunc_ln42_98_fu_244_p1 : 15'd0);

assign datareg_104_fu_580_p3 = ((icmp_ln45_104_fu_574_p2[0:0] == 1'b1) ? trunc_ln42_97_fu_240_p1 : 15'd0);

assign datareg_105_fu_598_p3 = ((icmp_ln45_105_fu_592_p2[0:0] == 1'b1) ? trunc_ln42_96_fu_236_p1 : 15'd0);

assign datareg_106_fu_616_p3 = ((icmp_ln45_106_fu_610_p2[0:0] == 1'b1) ? trunc_ln42_95_fu_232_p1 : 15'd0);

assign datareg_107_fu_634_p3 = ((icmp_ln45_107_fu_628_p2[0:0] == 1'b1) ? trunc_ln42_94_fu_228_p1 : 15'd0);

assign datareg_108_fu_652_p3 = ((icmp_ln45_108_fu_646_p2[0:0] == 1'b1) ? trunc_ln42_93_fu_224_p1 : 15'd0);

assign datareg_109_fu_670_p3 = ((icmp_ln45_109_fu_664_p2[0:0] == 1'b1) ? trunc_ln42_92_fu_220_p1 : 15'd0);

assign datareg_110_fu_688_p3 = ((icmp_ln45_110_fu_682_p2[0:0] == 1'b1) ? trunc_ln42_91_fu_216_p1 : 15'd0);

assign datareg_111_fu_706_p3 = ((icmp_ln45_111_fu_700_p2[0:0] == 1'b1) ? trunc_ln42_90_fu_212_p1 : 15'd0);

assign datareg_112_fu_724_p3 = ((icmp_ln45_112_fu_718_p2[0:0] == 1'b1) ? trunc_ln42_fu_208_p1 : 15'd0);

assign datareg_90_fu_328_p3 = ((icmp_ln45_90_fu_322_p2[0:0] == 1'b1) ? trunc_ln42_111_fu_296_p1 : 15'd0);

assign datareg_91_fu_346_p3 = ((icmp_ln45_91_fu_340_p2[0:0] == 1'b1) ? trunc_ln42_110_fu_292_p1 : 15'd0);

assign datareg_92_fu_364_p3 = ((icmp_ln45_92_fu_358_p2[0:0] == 1'b1) ? trunc_ln42_109_fu_288_p1 : 15'd0);

assign datareg_93_fu_382_p3 = ((icmp_ln45_93_fu_376_p2[0:0] == 1'b1) ? trunc_ln42_108_fu_284_p1 : 15'd0);

assign datareg_94_fu_400_p3 = ((icmp_ln45_94_fu_394_p2[0:0] == 1'b1) ? trunc_ln42_107_fu_280_p1 : 15'd0);

assign datareg_95_fu_418_p3 = ((icmp_ln45_95_fu_412_p2[0:0] == 1'b1) ? trunc_ln42_106_fu_276_p1 : 15'd0);

assign datareg_96_fu_436_p3 = ((icmp_ln45_96_fu_430_p2[0:0] == 1'b1) ? trunc_ln42_105_fu_272_p1 : 15'd0);

assign datareg_97_fu_454_p3 = ((icmp_ln45_97_fu_448_p2[0:0] == 1'b1) ? trunc_ln42_104_fu_268_p1 : 15'd0);

assign datareg_98_fu_472_p3 = ((icmp_ln45_98_fu_466_p2[0:0] == 1'b1) ? trunc_ln42_103_fu_264_p1 : 15'd0);

assign datareg_99_fu_490_p3 = ((icmp_ln45_99_fu_484_p2[0:0] == 1'b1) ? trunc_ln42_102_fu_260_p1 : 15'd0);

assign datareg_fu_310_p3 = ((icmp_ln45_fu_304_p2[0:0] == 1'b1) ? trunc_ln42_112_fu_300_p1 : 15'd0);

assign trunc_ln42_100_fu_252_p1 = data_14_val[14:0];

assign trunc_ln42_101_fu_256_p1 = data_13_val[14:0];

assign trunc_ln42_102_fu_260_p1 = data_12_val[14:0];

assign trunc_ln42_103_fu_264_p1 = data_11_val[14:0];

assign trunc_ln42_104_fu_268_p1 = data_10_val[14:0];

assign trunc_ln42_105_fu_272_p1 = data_9_val[14:0];

assign trunc_ln42_106_fu_276_p1 = data_6_val[14:0];

assign trunc_ln42_107_fu_280_p1 = data_5_val[14:0];

assign trunc_ln42_108_fu_284_p1 = data_4_val[14:0];

assign trunc_ln42_109_fu_288_p1 = data_3_val[14:0];

assign trunc_ln42_110_fu_292_p1 = data_2_val[14:0];

assign trunc_ln42_111_fu_296_p1 = data_1_val[14:0];

assign trunc_ln42_112_fu_300_p1 = data_0_val[14:0];

assign trunc_ln42_90_fu_212_p1 = data_30_val[14:0];

assign trunc_ln42_91_fu_216_p1 = data_29_val[14:0];

assign trunc_ln42_92_fu_220_p1 = data_28_val[14:0];

assign trunc_ln42_93_fu_224_p1 = data_27_val[14:0];

assign trunc_ln42_94_fu_228_p1 = data_24_val[14:0];

assign trunc_ln42_95_fu_232_p1 = data_21_val[14:0];

assign trunc_ln42_96_fu_236_p1 = data_20_val[14:0];

assign trunc_ln42_97_fu_240_p1 = data_18_val[14:0];

assign trunc_ln42_98_fu_244_p1 = data_16_val[14:0];

assign trunc_ln42_99_fu_248_p1 = data_15_val[14:0];

assign trunc_ln42_fu_208_p1 = data_31_val[14:0];

assign zext_ln45_100_fu_516_p1 = datareg_100_fu_508_p3;

assign zext_ln45_101_fu_534_p1 = datareg_101_fu_526_p3;

assign zext_ln45_102_fu_552_p1 = datareg_102_fu_544_p3;

assign zext_ln45_103_fu_570_p1 = datareg_103_fu_562_p3;

assign zext_ln45_104_fu_588_p1 = datareg_104_fu_580_p3;

assign zext_ln45_105_fu_606_p1 = datareg_105_fu_598_p3;

assign zext_ln45_106_fu_624_p1 = datareg_106_fu_616_p3;

assign zext_ln45_107_fu_642_p1 = datareg_107_fu_634_p3;

assign zext_ln45_108_fu_660_p1 = datareg_108_fu_652_p3;

assign zext_ln45_109_fu_678_p1 = datareg_109_fu_670_p3;

assign zext_ln45_110_fu_696_p1 = datareg_110_fu_688_p3;

assign zext_ln45_111_fu_714_p1 = datareg_111_fu_706_p3;

assign zext_ln45_112_fu_732_p1 = datareg_112_fu_724_p3;

assign zext_ln45_90_fu_336_p1 = datareg_90_fu_328_p3;

assign zext_ln45_91_fu_354_p1 = datareg_91_fu_346_p3;

assign zext_ln45_92_fu_372_p1 = datareg_92_fu_364_p3;

assign zext_ln45_93_fu_390_p1 = datareg_93_fu_382_p3;

assign zext_ln45_94_fu_408_p1 = datareg_94_fu_400_p3;

assign zext_ln45_95_fu_426_p1 = datareg_95_fu_418_p3;

assign zext_ln45_96_fu_444_p1 = datareg_96_fu_436_p3;

assign zext_ln45_97_fu_462_p1 = datareg_97_fu_454_p3;

assign zext_ln45_98_fu_480_p1 = datareg_98_fu_472_p3;

assign zext_ln45_99_fu_498_p1 = datareg_99_fu_490_p3;

assign zext_ln45_fu_318_p1 = datareg_fu_310_p3;

assign ap_return_0 = zext_ln45_fu_318_p1;

assign ap_return_1 = zext_ln45_90_fu_336_p1;

assign ap_return_10 = zext_ln45_99_fu_498_p1;

assign ap_return_11 = zext_ln45_100_fu_516_p1;

assign ap_return_12 = zext_ln45_101_fu_534_p1;

assign ap_return_13 = zext_ln45_102_fu_552_p1;

assign ap_return_14 = zext_ln45_103_fu_570_p1;

assign ap_return_15 = zext_ln45_104_fu_588_p1;

assign ap_return_16 = zext_ln45_105_fu_606_p1;

assign ap_return_17 = zext_ln45_106_fu_624_p1;

assign ap_return_18 = zext_ln45_107_fu_642_p1;

assign ap_return_19 = zext_ln45_108_fu_660_p1;

assign ap_return_2 = zext_ln45_91_fu_354_p1;

assign ap_return_20 = zext_ln45_109_fu_678_p1;

assign ap_return_21 = zext_ln45_110_fu_696_p1;

assign ap_return_22 = zext_ln45_111_fu_714_p1;

assign ap_return_23 = zext_ln45_112_fu_732_p1;

assign ap_return_3 = zext_ln45_92_fu_372_p1;

assign ap_return_4 = zext_ln45_93_fu_390_p1;

assign ap_return_5 = zext_ln45_94_fu_408_p1;

assign ap_return_6 = zext_ln45_95_fu_426_p1;

assign ap_return_7 = zext_ln45_96_fu_444_p1;

assign ap_return_8 = zext_ln45_97_fu_462_p1;

assign ap_return_9 = zext_ln45_98_fu_480_p1;

assign icmp_ln45_100_fu_502_p2 = (($signed(data_13_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_101_fu_520_p2 = (($signed(data_14_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_102_fu_538_p2 = (($signed(data_15_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_103_fu_556_p2 = (($signed(data_16_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_104_fu_574_p2 = (($signed(data_18_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_105_fu_592_p2 = (($signed(data_20_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_106_fu_610_p2 = (($signed(data_21_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_107_fu_628_p2 = (($signed(data_24_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_108_fu_646_p2 = (($signed(data_27_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_109_fu_664_p2 = (($signed(data_28_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_110_fu_682_p2 = (($signed(data_29_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_111_fu_700_p2 = (($signed(data_30_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_112_fu_718_p2 = (($signed(data_31_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_90_fu_322_p2 = (($signed(data_1_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_91_fu_340_p2 = (($signed(data_2_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_92_fu_358_p2 = (($signed(data_3_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_93_fu_376_p2 = (($signed(data_4_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_94_fu_394_p2 = (($signed(data_5_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_95_fu_412_p2 = (($signed(data_6_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_96_fu_430_p2 = (($signed(data_9_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_97_fu_448_p2 = (($signed(data_10_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_98_fu_466_p2 = (($signed(data_11_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_99_fu_484_p2 = (($signed(data_12_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_fu_304_p2 = (($signed(data_0_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

endmodule //myproject_relu_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_relu_config10_s
