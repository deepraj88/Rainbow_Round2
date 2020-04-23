set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
set moduleName extcpk_to_pk
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
set C_modelName {extcpk_to_pk}
set C_modelType { void 0 }
set C_modelArgList {
	{ pk_pk int 8 regular {array 1705536 { 0 3 } 0 1 }  }
	{ cpk_l1_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l1_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l1_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l1_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l1_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q1 int 8 regular {array 205344 { 1 3 } 1 1 }  }
	{ cpk_l2_Q2 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q3 int 8 regular {array 211968 { 1 3 } 1 1 }  }
	{ cpk_l2_Q5 int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ cpk_l2_Q6 int 8 regular {array 110592 { 1 3 } 1 1 }  }
	{ cpk_l2_Q9 int 8 regular {array 56448 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pk_pk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cpk_l1_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l1_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cpk_l2_Q9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pk_pk_address0 sc_out sc_lv 21 signal 0 } 
	{ pk_pk_ce0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_we0 sc_out sc_logic 1 signal 0 } 
	{ pk_pk_d0 sc_out sc_lv 8 signal 0 } 
	{ cpk_l1_Q1_address0 sc_out sc_lv 18 signal 1 } 
	{ cpk_l1_Q1_ce0 sc_out sc_logic 1 signal 1 } 
	{ cpk_l1_Q1_q0 sc_in sc_lv 8 signal 1 } 
	{ cpk_l1_Q2_address0 sc_out sc_lv 18 signal 2 } 
	{ cpk_l1_Q2_ce0 sc_out sc_logic 1 signal 2 } 
	{ cpk_l1_Q2_q0 sc_in sc_lv 8 signal 2 } 
	{ cpk_l1_Q3_address0 sc_out sc_lv 18 signal 3 } 
	{ cpk_l1_Q3_ce0 sc_out sc_logic 1 signal 3 } 
	{ cpk_l1_Q3_q0 sc_in sc_lv 8 signal 3 } 
	{ cpk_l1_Q5_address0 sc_out sc_lv 16 signal 4 } 
	{ cpk_l1_Q5_ce0 sc_out sc_logic 1 signal 4 } 
	{ cpk_l1_Q5_q0 sc_in sc_lv 8 signal 4 } 
	{ cpk_l1_Q6_address0 sc_out sc_lv 17 signal 5 } 
	{ cpk_l1_Q6_ce0 sc_out sc_logic 1 signal 5 } 
	{ cpk_l1_Q6_q0 sc_in sc_lv 8 signal 5 } 
	{ cpk_l1_Q9_address0 sc_out sc_lv 16 signal 6 } 
	{ cpk_l1_Q9_ce0 sc_out sc_logic 1 signal 6 } 
	{ cpk_l1_Q9_q0 sc_in sc_lv 8 signal 6 } 
	{ cpk_l2_Q1_address0 sc_out sc_lv 18 signal 7 } 
	{ cpk_l2_Q1_ce0 sc_out sc_logic 1 signal 7 } 
	{ cpk_l2_Q1_q0 sc_in sc_lv 8 signal 7 } 
	{ cpk_l2_Q2_address0 sc_out sc_lv 18 signal 8 } 
	{ cpk_l2_Q2_ce0 sc_out sc_logic 1 signal 8 } 
	{ cpk_l2_Q2_q0 sc_in sc_lv 8 signal 8 } 
	{ cpk_l2_Q3_address0 sc_out sc_lv 18 signal 9 } 
	{ cpk_l2_Q3_ce0 sc_out sc_logic 1 signal 9 } 
	{ cpk_l2_Q3_q0 sc_in sc_lv 8 signal 9 } 
	{ cpk_l2_Q5_address0 sc_out sc_lv 16 signal 10 } 
	{ cpk_l2_Q5_ce0 sc_out sc_logic 1 signal 10 } 
	{ cpk_l2_Q5_q0 sc_in sc_lv 8 signal 10 } 
	{ cpk_l2_Q6_address0 sc_out sc_lv 17 signal 11 } 
	{ cpk_l2_Q6_ce0 sc_out sc_logic 1 signal 11 } 
	{ cpk_l2_Q6_q0 sc_in sc_lv 8 signal 11 } 
	{ cpk_l2_Q9_address0 sc_out sc_lv 16 signal 12 } 
	{ cpk_l2_Q9_ce0 sc_out sc_logic 1 signal 12 } 
	{ cpk_l2_Q9_q0 sc_in sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pk_pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pk_pk", "role": "address0" }} , 
 	{ "name": "pk_pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "ce0" }} , 
 	{ "name": "pk_pk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk_pk", "role": "we0" }} , 
 	{ "name": "pk_pk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk_pk", "role": "d0" }} , 
 	{ "name": "cpk_l1_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l1_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l1_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l1_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l1_Q9", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q1", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q2", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q3", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q5", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q6", "role": "q0" }} , 
 	{ "name": "cpk_l2_Q9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "address0" }} , 
 	{ "name": "cpk_l2_Q9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "ce0" }} , 
 	{ "name": "cpk_l2_Q9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cpk_l2_Q9", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "extcpk_to_pk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2209026", "EstimateLatencyMax" : "4721406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pk_pk", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cpk_l1_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l1_Q9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cpk_l2_Q9", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	extcpk_to_pk {
		pk_pk {Type O LastRead -1 FirstWrite 4}
		cpk_l1_Q1 {Type I LastRead 3 FirstWrite -1}
		cpk_l1_Q2 {Type I LastRead 4 FirstWrite -1}
		cpk_l1_Q3 {Type I LastRead 5 FirstWrite -1}
		cpk_l1_Q5 {Type I LastRead 6 FirstWrite -1}
		cpk_l1_Q6 {Type I LastRead 7 FirstWrite -1}
		cpk_l1_Q9 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q1 {Type I LastRead 4 FirstWrite -1}
		cpk_l2_Q2 {Type I LastRead 5 FirstWrite -1}
		cpk_l2_Q3 {Type I LastRead 6 FirstWrite -1}
		cpk_l2_Q5 {Type I LastRead 7 FirstWrite -1}
		cpk_l2_Q6 {Type I LastRead 8 FirstWrite -1}
		cpk_l2_Q9 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2209026", "Max" : "4721406"}
	, {"Name" : "Interval", "Min" : "2209026", "Max" : "4721406"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pk_pk { ap_memory {  { pk_pk_address0 mem_address 1 21 }  { pk_pk_ce0 mem_ce 1 1 }  { pk_pk_we0 mem_we 1 1 }  { pk_pk_d0 mem_din 1 8 } } }
	cpk_l1_Q1 { ap_memory {  { cpk_l1_Q1_address0 mem_address 1 18 }  { cpk_l1_Q1_ce0 mem_ce 1 1 }  { cpk_l1_Q1_q0 mem_dout 0 8 } } }
	cpk_l1_Q2 { ap_memory {  { cpk_l1_Q2_address0 mem_address 1 18 }  { cpk_l1_Q2_ce0 mem_ce 1 1 }  { cpk_l1_Q2_q0 mem_dout 0 8 } } }
	cpk_l1_Q3 { ap_memory {  { cpk_l1_Q3_address0 mem_address 1 18 }  { cpk_l1_Q3_ce0 mem_ce 1 1 }  { cpk_l1_Q3_q0 mem_dout 0 8 } } }
	cpk_l1_Q5 { ap_memory {  { cpk_l1_Q5_address0 mem_address 1 16 }  { cpk_l1_Q5_ce0 mem_ce 1 1 }  { cpk_l1_Q5_q0 mem_dout 0 8 } } }
	cpk_l1_Q6 { ap_memory {  { cpk_l1_Q6_address0 mem_address 1 17 }  { cpk_l1_Q6_ce0 mem_ce 1 1 }  { cpk_l1_Q6_q0 mem_dout 0 8 } } }
	cpk_l1_Q9 { ap_memory {  { cpk_l1_Q9_address0 mem_address 1 16 }  { cpk_l1_Q9_ce0 mem_ce 1 1 }  { cpk_l1_Q9_q0 mem_dout 0 8 } } }
	cpk_l2_Q1 { ap_memory {  { cpk_l2_Q1_address0 mem_address 1 18 }  { cpk_l2_Q1_ce0 mem_ce 1 1 }  { cpk_l2_Q1_q0 mem_dout 0 8 } } }
	cpk_l2_Q2 { ap_memory {  { cpk_l2_Q2_address0 mem_address 1 18 }  { cpk_l2_Q2_ce0 mem_ce 1 1 }  { cpk_l2_Q2_q0 mem_dout 0 8 } } }
	cpk_l2_Q3 { ap_memory {  { cpk_l2_Q3_address0 mem_address 1 18 }  { cpk_l2_Q3_ce0 mem_ce 1 1 }  { cpk_l2_Q3_q0 mem_dout 0 8 } } }
	cpk_l2_Q5 { ap_memory {  { cpk_l2_Q5_address0 mem_address 1 16 }  { cpk_l2_Q5_ce0 mem_ce 1 1 }  { cpk_l2_Q5_q0 mem_dout 0 8 } } }
	cpk_l2_Q6 { ap_memory {  { cpk_l2_Q6_address0 mem_address 1 17 }  { cpk_l2_Q6_ce0 mem_ce 1 1 }  { cpk_l2_Q6_q0 mem_dout 0 8 } } }
	cpk_l2_Q9 { ap_memory {  { cpk_l2_Q9_address0 mem_address 1 16 }  { cpk_l2_Q9_ce0 mem_ce 1 1 }  { cpk_l2_Q9_q0 mem_dout 0 8 } } }
}
