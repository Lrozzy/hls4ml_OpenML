#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("input_16_ap_vld", 1, hls_in, 0, "ap_vld", "in_vld", 1),
	Port_Property("input_16", 208, hls_in, 0, "ap_vld", "in_data", 1),
	Port_Property("layer20_out_0", 12, hls_out, 1, "ap_vld", "out_data", 1),
	Port_Property("layer20_out_0_ap_vld", 1, hls_out, 1, "ap_vld", "out_vld", 1),
	Port_Property("layer20_out_1", 12, hls_out, 2, "ap_vld", "out_data", 1),
	Port_Property("layer20_out_1_ap_vld", 1, hls_out, 2, "ap_vld", "out_vld", 1),
	Port_Property("layer20_out_2", 12, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("layer20_out_2_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
	Port_Property("layer20_out_3", 12, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("layer20_out_3_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
	Port_Property("layer20_out_4", 12, hls_out, 5, "ap_vld", "out_data", 1),
	Port_Property("layer20_out_4_ap_vld", 1, hls_out, 5, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "myproject";
