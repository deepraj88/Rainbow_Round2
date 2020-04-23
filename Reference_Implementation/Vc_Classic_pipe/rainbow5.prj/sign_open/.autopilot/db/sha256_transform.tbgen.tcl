set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
set moduleName sha256_transform
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
set C_modelName {sha256_transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ data int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 0 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 0 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 0 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 0 } 
	{ data_address0 sc_out sc_lv 6 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ data_address1 sc_out sc_lv 6 signal 1 } 
	{ data_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data", "role": "address1" }} , 
 	{ "name": "data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce1" }} , 
 	{ "name": "data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.m_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "442", "Max" : "442"}
	, {"Name" : "Interval", "Min" : "442", "Max" : "442"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	data { ap_memory {  { data_address0 mem_address 1 6 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 }  { data_address1 mem_address 1 6 }  { data_ce1 mem_ce 1 1 }  { data_q1 mem_dout 0 8 } } }
}
