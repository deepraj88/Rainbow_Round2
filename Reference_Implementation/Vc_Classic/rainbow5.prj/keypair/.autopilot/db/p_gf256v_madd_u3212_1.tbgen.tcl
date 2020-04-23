set moduleName p_gf256v_madd_u3212_1
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
set C_modelName {_gf256v_madd_u3212.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_c int 8 regular {array 110592 { 2 2 } 1 1 }  }
	{ accu_c_offset int 17 regular  }
	{ a int 8 regular {array 56448 { 1 1 } 1 1 }  }
	{ a_offset int 64 regular  }
	{ gf256_b int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_c", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_c_offset", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "a_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gf256_b", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_c_address0 sc_out sc_lv 17 signal 0 } 
	{ accu_c_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_c_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_c_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_c_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_c_address1 sc_out sc_lv 17 signal 0 } 
	{ accu_c_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_c_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_c_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_c_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_c_offset sc_in sc_lv 17 signal 1 } 
	{ a_address0 sc_out sc_lv 16 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 16 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
	{ a_offset sc_in sc_lv 64 signal 3 } 
	{ gf256_b sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "accu_c", "role": "address0" }} , 
 	{ "name": "accu_c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_c", "role": "ce0" }} , 
 	{ "name": "accu_c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_c", "role": "we0" }} , 
 	{ "name": "accu_c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_c", "role": "d0" }} , 
 	{ "name": "accu_c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_c", "role": "q0" }} , 
 	{ "name": "accu_c_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "accu_c", "role": "address1" }} , 
 	{ "name": "accu_c_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_c", "role": "ce1" }} , 
 	{ "name": "accu_c_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_c", "role": "we1" }} , 
 	{ "name": "accu_c_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_c", "role": "d1" }} , 
 	{ "name": "accu_c_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_c", "role": "q1" }} , 
 	{ "name": "accu_c_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "accu_c_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "a_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_offset", "role": "default" }} , 
 	{ "name": "gf256_b", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gf256_b", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "p_gf256v_madd_u3212_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "85", "EstimateLatencyMax" : "85",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_249_gf256v_mul_u3213_fu_191", "Parent" : "0",
		"CDFG" : "gf256v_mul_u3213",
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
	p_gf256v_madd_u3212_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3213 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "85", "Max" : "85"}
	, {"Name" : "Interval", "Min" : "85", "Max" : "85"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_c { ap_memory {  { accu_c_address0 mem_address 1 17 }  { accu_c_ce0 mem_ce 1 1 }  { accu_c_we0 mem_we 1 1 }  { accu_c_d0 mem_din 1 8 }  { accu_c_q0 mem_dout 0 8 }  { accu_c_address1 mem_address 1 17 }  { accu_c_ce1 mem_ce 1 1 }  { accu_c_we1 mem_we 1 1 }  { accu_c_d1 mem_din 1 8 }  { accu_c_q1 mem_dout 0 8 } } }
	accu_c_offset { ap_none {  { accu_c_offset in_data 0 17 } } }
	a { ap_memory {  { a_address0 mem_address 1 16 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 16 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
	a_offset { ap_none {  { a_offset in_data 0 64 } } }
	gf256_b { ap_none {  { gf256_b in_data 0 8 } } }
}
set moduleName p_gf256v_madd_u3212_1
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
set C_modelName {_gf256v_madd_u3212.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ accu_c int 8 regular {array 110592 { 2 2 } 1 1 }  }
	{ accu_c_offset int 17 regular  }
	{ a int 8 regular {array 56448 { 1 1 } 1 1 }  }
	{ a_offset int 64 regular  }
	{ gf256_b int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accu_c", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "accu_c_offset", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "a_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gf256_b", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accu_c_address0 sc_out sc_lv 17 signal 0 } 
	{ accu_c_ce0 sc_out sc_logic 1 signal 0 } 
	{ accu_c_we0 sc_out sc_logic 1 signal 0 } 
	{ accu_c_d0 sc_out sc_lv 8 signal 0 } 
	{ accu_c_q0 sc_in sc_lv 8 signal 0 } 
	{ accu_c_address1 sc_out sc_lv 17 signal 0 } 
	{ accu_c_ce1 sc_out sc_logic 1 signal 0 } 
	{ accu_c_we1 sc_out sc_logic 1 signal 0 } 
	{ accu_c_d1 sc_out sc_lv 8 signal 0 } 
	{ accu_c_q1 sc_in sc_lv 8 signal 0 } 
	{ accu_c_offset sc_in sc_lv 17 signal 1 } 
	{ a_address0 sc_out sc_lv 16 signal 2 } 
	{ a_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_q0 sc_in sc_lv 8 signal 2 } 
	{ a_address1 sc_out sc_lv 16 signal 2 } 
	{ a_ce1 sc_out sc_logic 1 signal 2 } 
	{ a_q1 sc_in sc_lv 8 signal 2 } 
	{ a_offset sc_in sc_lv 64 signal 3 } 
	{ gf256_b sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accu_c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "accu_c", "role": "address0" }} , 
 	{ "name": "accu_c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_c", "role": "ce0" }} , 
 	{ "name": "accu_c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_c", "role": "we0" }} , 
 	{ "name": "accu_c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_c", "role": "d0" }} , 
 	{ "name": "accu_c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_c", "role": "q0" }} , 
 	{ "name": "accu_c_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "accu_c", "role": "address1" }} , 
 	{ "name": "accu_c_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_c", "role": "ce1" }} , 
 	{ "name": "accu_c_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accu_c", "role": "we1" }} , 
 	{ "name": "accu_c_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_c", "role": "d1" }} , 
 	{ "name": "accu_c_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "accu_c", "role": "q1" }} , 
 	{ "name": "accu_c_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "accu_c_offset", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "a_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_offset", "role": "default" }} , 
 	{ "name": "gf256_b", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gf256_b", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "p_gf256v_madd_u3212_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "85", "EstimateLatencyMax" : "85",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_249_gf256v_mul_u3213_fu_191", "Parent" : "0",
		"CDFG" : "gf256v_mul_u3213",
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
	p_gf256v_madd_u3212_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3213 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "85", "Max" : "85"}
	, {"Name" : "Interval", "Min" : "85", "Max" : "85"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accu_c { ap_memory {  { accu_c_address0 mem_address 1 17 }  { accu_c_ce0 mem_ce 1 1 }  { accu_c_we0 mem_we 1 1 }  { accu_c_d0 mem_din 1 8 }  { accu_c_q0 mem_dout 0 8 }  { accu_c_address1 mem_address 1 17 }  { accu_c_ce1 mem_ce 1 1 }  { accu_c_we1 mem_we 1 1 }  { accu_c_d1 mem_din 1 8 }  { accu_c_q1 mem_dout 0 8 } } }
	accu_c_offset { ap_none {  { accu_c_offset in_data 0 17 } } }
	a { ap_memory {  { a_address0 mem_address 1 16 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 }  { a_address1 mem_address 1 16 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 8 } } }
	a_offset { ap_none {  { a_offset in_data 0 64 } } }
	gf256_b { ap_none {  { gf256_b in_data 0 8 } } }
}
