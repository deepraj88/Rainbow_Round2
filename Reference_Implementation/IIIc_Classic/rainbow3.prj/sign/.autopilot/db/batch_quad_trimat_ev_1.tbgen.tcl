set moduleName batch_quad_trimat_ev_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {batch_quad_trimat_ev.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 1296 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 23976 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 36 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 11 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 11 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 15 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 15 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 6 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5241", "EstimateLatencyMax" : "88401",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gf256v_mul_u32_fu_470", "Parent" : "0",
		"CDFG" : "gf256v_mul_u32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev_1 {
		y {Type IO LastRead 11 FirstWrite 2}
		trimat {Type I LastRead 10 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5241", "Max" : "88401"}
	, {"Name" : "Interval", "Min" : "5241", "Max" : "88401"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 11 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 11 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 15 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 15 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 6 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
}