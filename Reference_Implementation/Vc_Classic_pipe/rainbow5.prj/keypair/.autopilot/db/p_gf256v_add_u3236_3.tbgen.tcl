set moduleName p_gf256v_add_u3236_3
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
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "60",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 8 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "55", "Max" : "60"}
	, {"Name" : "Interval", "Min" : "55", "Max" : "60"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
set moduleName p_gf256v_add_u3236_3
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
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "52", "EstimateLatencyMax" : "65",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 16 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 16 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "52", "Max" : "65"}
	, {"Name" : "Interval", "Min" : "52", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
set moduleName p_gf256v_add_u3236_3
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
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 32 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 32 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "96"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "96"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
set moduleName p_gf256v_add_u3236_3
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
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48", "EstimateLatencyMax" : "48",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 27 FirstWrite 3}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 47 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "48", "Max" : "48"}
	, {"Name" : "Interval", "Min" : "48", "Max" : "48"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
set moduleName p_gf256v_add_u3236_3
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
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "60", "EstimateLatencyMax" : "60",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 8 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "60", "Max" : "60"}
	, {"Name" : "Interval", "Min" : "60", "Max" : "60"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
set moduleName p_gf256v_add_u3236_3
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
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 16 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65", "Max" : "65"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
set moduleName p_gf256v_add_u3236_3
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
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 32 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 17 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "63", "Max" : "96"}
	, {"Name" : "Interval", "Min" : "63", "Max" : "96"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
set moduleName p_gf256v_add_u3236_3
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "49",
		"VariableLatency" : "0", "ExactLatency" : "48", "EstimateLatencyMin" : "48", "EstimateLatencyMax" : "48",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 27 FirstWrite 3}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 24 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "48", "Max" : "48"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "49"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
set moduleName p_gf256v_add_u3236_3
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {_gf256v_add_u3236.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_b int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ accu_b_offset int 18 regular  }
	{ a int 8 regular {array 80 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_b", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_b_offset", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_b_address0 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_b_address1 sc_out sc_lv 18 signal 0 } 
	{ accu_b_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_b_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_b_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_b_offset sc_in sc_lv 18 signal 1 } 
	{ a_address0 sc_out sc_lv 7 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 7 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address0" }} , 
 	{ "name": "accu_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce0" }} , 
 	{ "name": "accu_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we0" }} , 
 	{ "name": "accu_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d0" }} , 
 	{ "name": "accu_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q0" }} , 
 	{ "name": "accu_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b", "role": "address1" }} , 
 	{ "name": "accu_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "ce1" }} , 
 	{ "name": "accu_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_b", "role": "we1" }} , 
 	{ "name": "accu_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "d1" }} , 
 	{ "name": "accu_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_b", "role": "q1" }} , 
 	{ "name": "accu_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "accu_b_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_gf256v_add_u3236_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "49",
		"VariableLatency" : "0", "ExactLatency" : "48", "EstimateLatencyMin" : "48", "EstimateLatencyMax" : "48",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	p_gf256v_add_u3236_3 {
		accu_b {Type IO LastRead 27 FirstWrite 3}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 24 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "48", "Max" : "48"}
	, {"Name" : "Interval", "Min" : "49", "Max" : "49"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_b { ap_memory {  { accu_b_address0 mem_address 1 18 }  { accu_b_ce0 mem_ce 1 1 }  { accu_b_we0 mem_we 1 1 }  { accu_b_d0 mem_din 1 8 }  { accu_b_q0 mem_dout 0 8 }  { accu_b_address1 mem_address 1 18 }  { accu_b_ce1 mem_ce 1 1 }  { accu_b_we1 mem_we 1 1 }  { accu_b_d1 mem_din 1 8 }  { accu_b_q1 mem_dout 0 8 } } }
	accu_b_offset { ap_none {  { accu_b_offset in_data 0 18 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 7 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
}
