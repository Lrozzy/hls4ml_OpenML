// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module myproject_relu_ap_fixed_11_9_5_3_0_ap_ufixed_9_7_5_3_0_ReLU_config11_s (
        ap_ready,
        data_8_val,
        data_15_val,
        data_23_val,
        data_26_val,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_rst
);


output   ap_ready;
input  [10:0] data_8_val;
input  [10:0] data_15_val;
input  [10:0] data_23_val;
input  [10:0] data_26_val;
output  [8:0] ap_return_0;
output  [8:0] ap_return_1;
output  [8:0] ap_return_2;
output  [8:0] ap_return_3;
input   ap_rst;

wire   [0:0] icmp_ln45_fu_48_p2;
wire   [8:0] trunc_ln46_fu_54_p1;
wire   [0:0] icmp_ln45_8_fu_66_p2;
wire   [8:0] trunc_ln46_8_fu_72_p1;
wire   [0:0] icmp_ln45_9_fu_84_p2;
wire   [8:0] trunc_ln46_9_fu_90_p1;
wire   [0:0] icmp_ln45_10_fu_102_p2;
wire   [8:0] trunc_ln46_10_fu_108_p1;
wire   [8:0] select_ln45_fu_58_p3;
wire   [8:0] select_ln45_8_fu_76_p3;
wire   [8:0] select_ln45_9_fu_94_p3;
wire   [8:0] select_ln45_10_fu_112_p3;

assign ap_ready = 1'b1;

assign select_ln45_10_fu_112_p3 = ((icmp_ln45_10_fu_102_p2[0:0] == 1'b1) ? trunc_ln46_10_fu_108_p1 : 9'd0);

assign select_ln45_8_fu_76_p3 = ((icmp_ln45_8_fu_66_p2[0:0] == 1'b1) ? trunc_ln46_8_fu_72_p1 : 9'd0);

assign select_ln45_9_fu_94_p3 = ((icmp_ln45_9_fu_84_p2[0:0] == 1'b1) ? trunc_ln46_9_fu_90_p1 : 9'd0);

assign select_ln45_fu_58_p3 = ((icmp_ln45_fu_48_p2[0:0] == 1'b1) ? trunc_ln46_fu_54_p1 : 9'd0);

assign trunc_ln46_10_fu_108_p1 = data_26_val[8:0];

assign trunc_ln46_8_fu_72_p1 = data_15_val[8:0];

assign trunc_ln46_9_fu_90_p1 = data_23_val[8:0];

assign trunc_ln46_fu_54_p1 = data_8_val[8:0];

assign ap_return_0 = select_ln45_fu_58_p3;

assign ap_return_1 = select_ln45_8_fu_76_p3;

assign ap_return_2 = select_ln45_9_fu_94_p3;

assign ap_return_3 = select_ln45_10_fu_112_p3;

assign icmp_ln45_10_fu_102_p2 = (($signed(data_26_val) > $signed(11'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_8_fu_66_p2 = (($signed(data_15_val) > $signed(11'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_9_fu_84_p2 = (($signed(data_23_val) > $signed(11'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_fu_48_p2 = (($signed(data_8_val) > $signed(11'd0)) ? 1'b1 : 1'b0);

endmodule //myproject_relu_ap_fixed_11_9_5_3_0_ap_ufixed_9_7_5_3_0_ReLU_config11_s
