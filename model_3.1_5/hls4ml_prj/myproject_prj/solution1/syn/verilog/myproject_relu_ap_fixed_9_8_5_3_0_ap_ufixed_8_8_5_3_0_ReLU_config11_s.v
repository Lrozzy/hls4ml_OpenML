// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module myproject_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s (
        ap_ready,
        data_5_val,
        ap_return,
        ap_rst
);


output   ap_ready;
input  [8:0] data_5_val;
output  [6:0] ap_return;
input   ap_rst;

wire   [0:0] icmp_ln45_fu_28_p2;
wire   [6:0] trunc_ln_fu_34_p4;

assign ap_ready = 1'b1;

assign trunc_ln_fu_34_p4 = {{data_5_val[7:1]}};

assign ap_return = ((icmp_ln45_fu_28_p2[0:0] == 1'b1) ? trunc_ln_fu_34_p4 : 7'd0);

assign icmp_ln45_fu_28_p2 = (($signed(data_5_val) > $signed(9'd0)) ? 1'b1 : 1'b0);

endmodule //myproject_relu_ap_fixed_9_8_5_3_0_ap_ufixed_8_8_5_3_0_ReLU_config11_s
