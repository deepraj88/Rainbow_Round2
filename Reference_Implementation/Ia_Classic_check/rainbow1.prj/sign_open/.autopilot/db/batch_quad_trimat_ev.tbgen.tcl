set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10195", "EstimateLatencyMax" : "475315",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_63_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 9 FirstWrite 2}
		trimat {Type I LastRead 10 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10195", "Max" : "475315"}
	, {"Name" : "Interval", "Min" : "10195", "Max" : "475315"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10195", "EstimateLatencyMax" : "475315",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_72_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 9 FirstWrite 2}
		trimat {Type I LastRead 10 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10195", "Max" : "475315"}
	, {"Name" : "Interval", "Min" : "10195", "Max" : "475315"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15187", "EstimateLatencyMax" : "480211",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_507"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_507"}],
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_507", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_57_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_507", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 11 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15187", "Max" : "480211"}
	, {"Name" : "Interval", "Min" : "15187", "Max" : "480211"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24979", "EstimateLatencyMax" : "478291",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_521"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_521"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_521"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_521"}],
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_521", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_57_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_521", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 15 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24979", "Max" : "478291"}
	, {"Name" : "Interval", "Min" : "24979", "Max" : "478291"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44563", "EstimateLatencyMax" : "477907",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559"}],
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_62_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_559", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 23 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "44563", "Max" : "477907"}
	, {"Name" : "Interval", "Min" : "44563", "Max" : "477907"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83827", "EstimateLatencyMax" : "478867",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631"}],
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_57_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_631", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 40 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "83827", "Max" : "478867"}
	, {"Name" : "Interval", "Min" : "83827", "Max" : "478867"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162163", "EstimateLatencyMax" : "481651",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777"}],
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_69_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_777", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 72 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "162163", "Max" : "481651"}
	, {"Name" : "Interval", "Min" : "162163", "Max" : "481651"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "318835", "EstimateLatencyMax" : "644371",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state117", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state133", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state135", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129"}],
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_69_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_1129", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 136 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "318835", "Max" : "644371"}
	, {"Name" : "Interval", "Min" : "318835", "Max" : "644371"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "632179", "EstimateLatencyMax" : "656563",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state107", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state109", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state111", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state113", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state117", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state123", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state125", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state127", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state129", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state131", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state133", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state135", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state137", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state139", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state141", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state143", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state145", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state147", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state149", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state151", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state153", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state155", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state157", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state159", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state161", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state163", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state165", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state167", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state169", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state171", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state173", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state175", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state177", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state179", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state181", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state183", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state185", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state187", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state189", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state191", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state193", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state195", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state197", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state199", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state203", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state205", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state207", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state209", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state211", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state213", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state215", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state217", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state219", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state221", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state223", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state225", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state227", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state229", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state231", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state233", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state235", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state237", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state239", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state241", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state243", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state245", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state247", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state249", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state251", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state253", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state255", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state257", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state259", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state261", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state263", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"},
			{"State" : "ap_ST_fsm_state265", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829"}],
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_69_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_1829", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_quad_trimat_ev {
		y {Type IO LastRead 264 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "632179", "Max" : "656563"}
	, {"Name" : "Interval", "Min" : "632179", "Max" : "656563"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8467", "EstimateLatencyMax" : "300307",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_502", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_72_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_502", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_502.grp_gf16v_mul_u3215_fu_748", "Parent" : "3",
		"CDFG" : "gf16v_mul_u3215",
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 10 FirstWrite 2}
		trimat {Type I LastRead 16 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 16 FirstWrite 16}
		a {Type I LastRead 16 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 3 FirstWrite -1}}
	gf16v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8467", "Max" : "300307"}
	, {"Name" : "Interval", "Min" : "8467", "Max" : "300307"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14611", "EstimateLatencyMax" : "303379",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_517", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_74_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_517", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_517.grp_gf16v_mul_u3215_fu_748", "Parent" : "3",
		"CDFG" : "gf16v_mul_u3215",
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 42 FirstWrite 2}
		trimat {Type I LastRead 16 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 16 FirstWrite 16}
		a {Type I LastRead 16 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 3 FirstWrite -1}}
	gf16v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14611", "Max" : "303379"}
	, {"Name" : "Interval", "Min" : "14611", "Max" : "303379"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26995", "EstimateLatencyMax" : "309619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_531", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_77_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_531", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_531.grp_gf16v_mul_u3215_fu_748", "Parent" : "3",
		"CDFG" : "gf16v_mul_u3215",
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 107 FirstWrite 2}
		trimat {Type I LastRead 16 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 16 FirstWrite 16}
		a {Type I LastRead 16 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 3 FirstWrite -1}}
	gf16v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26995", "Max" : "309619"}
	, {"Name" : "Interval", "Min" : "26995", "Max" : "309619"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51571", "EstimateLatencyMax" : "321907",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_569", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_80_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_569", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_569.grp_gf16v_mul_u3215_fu_748", "Parent" : "3",
		"CDFG" : "gf16v_mul_u3215",
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 235 FirstWrite 2}
		trimat {Type I LastRead 16 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 16 FirstWrite 16}
		a {Type I LastRead 16 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 3 FirstWrite -1}}
	gf16v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "51571", "Max" : "321907"}
	, {"Name" : "Interval", "Min" : "51571", "Max" : "321907"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56179", "EstimateLatencyMax" : "357619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_637", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_75_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_637", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_637.grp_gf16v_mul_u3215_fu_748", "Parent" : "3",
		"CDFG" : "gf16v_mul_u3215",
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 505 FirstWrite 2}
		trimat {Type I LastRead 16 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 16 FirstWrite 16}
		a {Type I LastRead 16 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 3 FirstWrite -1}}
	gf16v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "56179", "Max" : "357619"}
	, {"Name" : "Interval", "Min" : "56179", "Max" : "357619"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "106867", "EstimateLatencyMax" : "408019",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_783", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_86_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_783", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_783.grp_gf16v_mul_u3215_fu_748", "Parent" : "3",
		"CDFG" : "gf16v_mul_u3215",
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 1033 FirstWrite 2}
		trimat {Type I LastRead 16 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 16 FirstWrite 16}
		a {Type I LastRead 16 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 3 FirstWrite -1}}
	gf16v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "106867", "Max" : "408019"}
	, {"Name" : "Interval", "Min" : "106867", "Max" : "408019"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "208243", "EstimateLatencyMax" : "610675",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1135", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_86_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_1135", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_1135.grp_gf16v_mul_u3215_fu_748", "Parent" : "3",
		"CDFG" : "gf16v_mul_u3215",
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 2089 FirstWrite 2}
		trimat {Type I LastRead 16 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 16 FirstWrite 16}
		a {Type I LastRead 16 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 3 FirstWrite -1}}
	gf16v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "208243", "Max" : "610675"}
	, {"Name" : "Interval", "Min" : "208243", "Max" : "610675"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}
set moduleName batch_quad_trimat_ev
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
set C_modelName {batch_quad_trimat_ev}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {array 32 { 2 2 } 1 1 }  }
	{ trimat int 8 regular {array 148992 { 1 1 } 1 1 }  }
	{ x int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ x_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "trimat", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_address0 sc_out sc_lv 5 signal 0 } 
	{ y_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_we0 sc_out sc_logic 1 signal 0 } 
	{ y_d0 sc_out sc_lv 8 signal 0 } 
	{ y_q0 sc_in sc_lv 8 signal 0 } 
	{ y_address1 sc_out sc_lv 5 signal 0 } 
	{ y_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_we1 sc_out sc_logic 1 signal 0 } 
	{ y_d1 sc_out sc_lv 8 signal 0 } 
	{ y_q1 sc_in sc_lv 8 signal 0 } 
	{ trimat_address0 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce0 sc_out sc_logic 1 signal 1 } 
	{ trimat_q0 sc_in sc_lv 8 signal 1 } 
	{ trimat_address1 sc_out sc_lv 18 signal 1 } 
	{ trimat_ce1 sc_out sc_logic 1 signal 1 } 
	{ trimat_q1 sc_in sc_lv 8 signal 1 } 
	{ x_address0 sc_out sc_lv 12 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 8 signal 2 } 
	{ x_offset sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we1" }} , 
 	{ "name": "y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "d1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "trimat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address0" }} , 
 	{ "name": "trimat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce0" }} , 
 	{ "name": "trimat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q0" }} , 
 	{ "name": "trimat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "trimat", "role": "address1" }} , 
 	{ "name": "trimat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trimat", "role": "ce1" }} , 
 	{ "name": "trimat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trimat", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "batch_quad_trimat_ev",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "410995", "EstimateLatencyMax" : "813331",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "trimat", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1835", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_86_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_x_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_1835", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf16v_madd_u3211_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3211_1_fu_1835.grp_gf16v_mul_u3215_fu_748", "Parent" : "3",
		"CDFG" : "gf16v_mul_u3215",
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 4201 FirstWrite 2}
		trimat {Type I LastRead 16 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 16 FirstWrite 16}
		a {Type I LastRead 16 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 3 FirstWrite -1}}
	gf16v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "410995", "Max" : "813331"}
	, {"Name" : "Interval", "Min" : "410995", "Max" : "813331"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 8 }  { y_q0 mem_dout 0 8 }  { y_address1 mem_address 1 5 }  { y_ce1 mem_ce 1 1 }  { y_we1 mem_we 1 1 }  { y_d1 mem_din 1 8 }  { y_q1 mem_dout 0 8 } } }
	trimat { ap_memory {  { trimat_address0 mem_address 1 18 }  { trimat_ce0 mem_ce 1 1 }  { trimat_q0 mem_dout 0 8 }  { trimat_address1 mem_address 1 18 }  { trimat_ce1 mem_ce 1 1 }  { trimat_q1 mem_dout 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 8 } } }
	x_offset { ap_none {  { x_offset in_data 0 64 } } }
}