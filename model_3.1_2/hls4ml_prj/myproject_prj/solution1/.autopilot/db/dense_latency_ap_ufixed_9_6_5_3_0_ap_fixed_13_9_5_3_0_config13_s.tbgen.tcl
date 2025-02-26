set moduleName dense_latency_ap_ufixed_9_6_5_3_0_ap_fixed_13_9_5_3_0_config13_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dense_latency<ap_ufixed<9, 6, 5, 3, 0>, ap_fixed<13, 9, 5, 3, 0>, config13>}
set C_modelType { int 299 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ data_0_val int 8 regular  }
	{ data_1_val int 7 regular  }
	{ data_3_val int 6 regular  }
	{ data_4_val int 9 regular  }
	{ data_6_val int 6 regular  }
	{ data_8_val int 7 regular  }
	{ data_9_val int 6 regular  }
	{ data_10_val int 9 regular  }
	{ data_11_val int 8 regular  }
	{ data_12_val int 7 regular  }
	{ data_14_val int 9 regular  }
	{ data_15_val int 8 regular  }
	{ data_16_val int 6 regular  }
	{ data_17_val int 7 regular  }
	{ data_19_val int 7 regular  }
	{ data_20_val int 7 regular  }
	{ data_22_val int 8 regular  }
	{ data_24_val int 7 regular  }
	{ data_25_val int 8 regular  }
	{ data_26_val int 9 regular  }
	{ data_27_val int 8 regular  }
	{ data_28_val int 8 regular  }
	{ data_31_val int 9 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "data_0_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_1_val", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_4_val", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "data_6_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_8_val", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "data_9_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_10_val", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "data_11_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_12_val", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "data_14_val", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "data_15_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_16_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_17_val", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "data_19_val", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "data_20_val", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "data_22_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_24_val", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "data_25_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_26_val", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "data_27_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_28_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_31_val", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 299} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ data_0_val sc_in sc_lv 8 signal 0 } 
	{ data_1_val sc_in sc_lv 7 signal 1 } 
	{ data_3_val sc_in sc_lv 6 signal 2 } 
	{ data_4_val sc_in sc_lv 9 signal 3 } 
	{ data_6_val sc_in sc_lv 6 signal 4 } 
	{ data_8_val sc_in sc_lv 7 signal 5 } 
	{ data_9_val sc_in sc_lv 6 signal 6 } 
	{ data_10_val sc_in sc_lv 9 signal 7 } 
	{ data_11_val sc_in sc_lv 8 signal 8 } 
	{ data_12_val sc_in sc_lv 7 signal 9 } 
	{ data_14_val sc_in sc_lv 9 signal 10 } 
	{ data_15_val sc_in sc_lv 8 signal 11 } 
	{ data_16_val sc_in sc_lv 6 signal 12 } 
	{ data_17_val sc_in sc_lv 7 signal 13 } 
	{ data_19_val sc_in sc_lv 7 signal 14 } 
	{ data_20_val sc_in sc_lv 7 signal 15 } 
	{ data_22_val sc_in sc_lv 8 signal 16 } 
	{ data_24_val sc_in sc_lv 7 signal 17 } 
	{ data_25_val sc_in sc_lv 8 signal 18 } 
	{ data_26_val sc_in sc_lv 9 signal 19 } 
	{ data_27_val sc_in sc_lv 8 signal 20 } 
	{ data_28_val sc_in sc_lv 8 signal 21 } 
	{ data_31_val sc_in sc_lv 9 signal 22 } 
	{ ap_return_0 sc_out sc_lv 13 signal -1 } 
	{ ap_return_1 sc_out sc_lv 13 signal -1 } 
	{ ap_return_2 sc_out sc_lv 13 signal -1 } 
	{ ap_return_3 sc_out sc_lv 13 signal -1 } 
	{ ap_return_4 sc_out sc_lv 13 signal -1 } 
	{ ap_return_5 sc_out sc_lv 13 signal -1 } 
	{ ap_return_6 sc_out sc_lv 13 signal -1 } 
	{ ap_return_7 sc_out sc_lv 13 signal -1 } 
	{ ap_return_8 sc_out sc_lv 13 signal -1 } 
	{ ap_return_9 sc_out sc_lv 13 signal -1 } 
	{ ap_return_10 sc_out sc_lv 13 signal -1 } 
	{ ap_return_11 sc_out sc_lv 13 signal -1 } 
	{ ap_return_12 sc_out sc_lv 13 signal -1 } 
	{ ap_return_13 sc_out sc_lv 13 signal -1 } 
	{ ap_return_14 sc_out sc_lv 13 signal -1 } 
	{ ap_return_15 sc_out sc_lv 13 signal -1 } 
	{ ap_return_16 sc_out sc_lv 13 signal -1 } 
	{ ap_return_17 sc_out sc_lv 13 signal -1 } 
	{ ap_return_18 sc_out sc_lv 13 signal -1 } 
	{ ap_return_19 sc_out sc_lv 13 signal -1 } 
	{ ap_return_20 sc_out sc_lv 13 signal -1 } 
	{ ap_return_21 sc_out sc_lv 13 signal -1 } 
	{ ap_return_22 sc_out sc_lv 13 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "data_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_0_val", "role": "default" }} , 
 	{ "name": "data_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_1_val", "role": "default" }} , 
 	{ "name": "data_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_3_val", "role": "default" }} , 
 	{ "name": "data_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_4_val", "role": "default" }} , 
 	{ "name": "data_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_6_val", "role": "default" }} , 
 	{ "name": "data_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_8_val", "role": "default" }} , 
 	{ "name": "data_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_9_val", "role": "default" }} , 
 	{ "name": "data_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_10_val", "role": "default" }} , 
 	{ "name": "data_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_11_val", "role": "default" }} , 
 	{ "name": "data_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_12_val", "role": "default" }} , 
 	{ "name": "data_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_14_val", "role": "default" }} , 
 	{ "name": "data_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_15_val", "role": "default" }} , 
 	{ "name": "data_16_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_16_val", "role": "default" }} , 
 	{ "name": "data_17_val", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_17_val", "role": "default" }} , 
 	{ "name": "data_19_val", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_19_val", "role": "default" }} , 
 	{ "name": "data_20_val", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_20_val", "role": "default" }} , 
 	{ "name": "data_22_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_22_val", "role": "default" }} , 
 	{ "name": "data_24_val", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_24_val", "role": "default" }} , 
 	{ "name": "data_25_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_25_val", "role": "default" }} , 
 	{ "name": "data_26_val", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_26_val", "role": "default" }} , 
 	{ "name": "data_27_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_27_val", "role": "default" }} , 
 	{ "name": "data_28_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_28_val", "role": "default" }} , 
 	{ "name": "data_31_val", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_31_val", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "dense_latency_ap_ufixed_9_6_5_3_0_ap_fixed_13_9_5_3_0_config13_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_6ns_12_1_1_U181", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9ns_6ns_14_1_1_U182", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U183", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_latency_ap_ufixed_9_6_5_3_0_ap_fixed_13_9_5_3_0_config13_s {
		data_0_val {Type I LastRead 0 FirstWrite -1}
		data_1_val {Type I LastRead 0 FirstWrite -1}
		data_3_val {Type I LastRead 0 FirstWrite -1}
		data_4_val {Type I LastRead 0 FirstWrite -1}
		data_6_val {Type I LastRead 0 FirstWrite -1}
		data_8_val {Type I LastRead 0 FirstWrite -1}
		data_9_val {Type I LastRead 0 FirstWrite -1}
		data_10_val {Type I LastRead 0 FirstWrite -1}
		data_11_val {Type I LastRead 0 FirstWrite -1}
		data_12_val {Type I LastRead 0 FirstWrite -1}
		data_14_val {Type I LastRead 0 FirstWrite -1}
		data_15_val {Type I LastRead 0 FirstWrite -1}
		data_16_val {Type I LastRead 0 FirstWrite -1}
		data_17_val {Type I LastRead 0 FirstWrite -1}
		data_19_val {Type I LastRead 0 FirstWrite -1}
		data_20_val {Type I LastRead 0 FirstWrite -1}
		data_22_val {Type I LastRead 0 FirstWrite -1}
		data_24_val {Type I LastRead 0 FirstWrite -1}
		data_25_val {Type I LastRead 0 FirstWrite -1}
		data_26_val {Type I LastRead 0 FirstWrite -1}
		data_27_val {Type I LastRead 0 FirstWrite -1}
		data_28_val {Type I LastRead 0 FirstWrite -1}
		data_31_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_0_val { ap_none {  { data_0_val in_data 0 8 } } }
	data_1_val { ap_none {  { data_1_val in_data 0 7 } } }
	data_3_val { ap_none {  { data_3_val in_data 0 6 } } }
	data_4_val { ap_none {  { data_4_val in_data 0 9 } } }
	data_6_val { ap_none {  { data_6_val in_data 0 6 } } }
	data_8_val { ap_none {  { data_8_val in_data 0 7 } } }
	data_9_val { ap_none {  { data_9_val in_data 0 6 } } }
	data_10_val { ap_none {  { data_10_val in_data 0 9 } } }
	data_11_val { ap_none {  { data_11_val in_data 0 8 } } }
	data_12_val { ap_none {  { data_12_val in_data 0 7 } } }
	data_14_val { ap_none {  { data_14_val in_data 0 9 } } }
	data_15_val { ap_none {  { data_15_val in_data 0 8 } } }
	data_16_val { ap_none {  { data_16_val in_data 0 6 } } }
	data_17_val { ap_none {  { data_17_val in_data 0 7 } } }
	data_19_val { ap_none {  { data_19_val in_data 0 7 } } }
	data_20_val { ap_none {  { data_20_val in_data 0 7 } } }
	data_22_val { ap_none {  { data_22_val in_data 0 8 } } }
	data_24_val { ap_none {  { data_24_val in_data 0 7 } } }
	data_25_val { ap_none {  { data_25_val in_data 0 8 } } }
	data_26_val { ap_none {  { data_26_val in_data 0 9 } } }
	data_27_val { ap_none {  { data_27_val in_data 0 8 } } }
	data_28_val { ap_none {  { data_28_val in_data 0 8 } } }
	data_31_val { ap_none {  { data_31_val in_data 0 9 } } }
}
