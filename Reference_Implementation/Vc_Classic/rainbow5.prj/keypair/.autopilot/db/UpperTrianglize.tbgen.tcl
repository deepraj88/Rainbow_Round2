set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "12369505826305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u329_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u329_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u329_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u329_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u329_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u329",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5368709123",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 4 FirstWrite 3}
		bA {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_add_u329 {
		accu_b {Type IO LastRead 4 FirstWrite 3}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "241", "Max" : "12369505826305"}
	, {"Name" : "Interval", "Min" : "241", "Max" : "13825"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "12369505826305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u329_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u329_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u329_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u329_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u329_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u329",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5368709123",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 4 FirstWrite 3}
		bA {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_add_u329 {
		accu_b {Type IO LastRead 4 FirstWrite 3}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "241", "Max" : "12369505826305"}
	, {"Name" : "Interval", "Min" : "241", "Max" : "13825"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "241", "EstimateLatencyMax" : "12369505826305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5368709123",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 4 FirstWrite 3}
		bA {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 4 FirstWrite 3}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "241", "Max" : "12369505826305"}
	, {"Name" : "Interval", "Min" : "241", "Max" : "13825"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 9 FirstWrite 4}
		bA {Type I LastRead 8 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 9 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 8 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 20 FirstWrite 4}
		bA {Type I LastRead 19 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 20 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 19 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 44 FirstWrite 4}
		bA {Type I LastRead 38 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 44 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 38 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 93 FirstWrite 4}
		bA {Type I LastRead 85 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 93 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 85 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 189 FirstWrite 4}
		bA {Type I LastRead 181 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 189 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 181 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 381 FirstWrite 4}
		bA {Type I LastRead 373 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 381 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 373 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 765 FirstWrite 4}
		bA {Type I LastRead 757 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 765 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 757 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "337", "EstimateLatencyMax" : "12369505830913",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "5368709125",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 4 FirstWrite 4}
		bA {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 4 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "337", "Max" : "12369505830913"}
	, {"Name" : "Interval", "Min" : "337", "Max" : "18433"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 9 FirstWrite 4}
		bA {Type I LastRead 8 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 9 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 8 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 21 FirstWrite 4}
		bA {Type I LastRead 17 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 21 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 17 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
set moduleName UpperTrianglize
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
set C_modelName {UpperTrianglize}
set C_modelType { void 0 }
set C_modelArgList {
	{ btriC int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ bA int 8 regular {array 110624 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "btriC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "bA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ btriC_address0 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce0 sc_out sc_logic 1 signal 0 } 
	{ btriC_we0 sc_out sc_logic 1 signal 0 } 
	{ btriC_d0 sc_out sc_lv 8 signal 0 } 
	{ btriC_q0 sc_in sc_lv 8 signal 0 } 
	{ btriC_address1 sc_out sc_lv 16 signal 0 } 
	{ btriC_ce1 sc_out sc_logic 1 signal 0 } 
	{ btriC_we1 sc_out sc_logic 1 signal 0 } 
	{ btriC_d1 sc_out sc_lv 8 signal 0 } 
	{ btriC_q1 sc_in sc_lv 8 signal 0 } 
	{ bA_address0 sc_out sc_lv 17 signal 1 } 
	{ bA_ce0 sc_out sc_logic 1 signal 1 } 
	{ bA_q0 sc_in sc_lv 8 signal 1 } 
	{ bA_address1 sc_out sc_lv 17 signal 1 } 
	{ bA_ce1 sc_out sc_logic 1 signal 1 } 
	{ bA_q1 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "btriC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address0" }} , 
 	{ "name": "btriC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce0" }} , 
 	{ "name": "btriC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we0" }} , 
 	{ "name": "btriC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d0" }} , 
 	{ "name": "btriC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q0" }} , 
 	{ "name": "btriC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "btriC", "role": "address1" }} , 
 	{ "name": "btriC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "ce1" }} , 
 	{ "name": "btriC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriC", "role": "we1" }} , 
 	{ "name": "btriC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "d1" }} , 
 	{ "name": "btriC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriC", "role": "q1" }} , 
 	{ "name": "bA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address0" }} , 
 	{ "name": "bA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce0" }} , 
 	{ "name": "bA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q0" }} , 
 	{ "name": "bA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "bA", "role": "address1" }} , 
 	{ "name": "bA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bA", "role": "ce1" }} , 
 	{ "name": "bA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bA", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "UpperTrianglize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95"}],
		"Port" : [
			{"Name" : "btriC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "accu_b"}]},
			{"Name" : "bA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_add_u3211_fu_95", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3211_fu_95", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	UpperTrianglize {
		btriC {Type IO LastRead 45 FirstWrite 4}
		bA {Type I LastRead 35 FirstWrite -1}}
	p_gf256v_add_u3211 {
		accu_b {Type IO LastRead 45 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 35 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p_num_byte {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	btriC { ap_memory {  { btriC_address0 mem_address 1 16 }  { btriC_ce0 mem_ce 1 1 }  { btriC_we0 mem_we 1 1 }  { btriC_d0 mem_din 1 8 }  { btriC_q0 mem_dout 0 8 }  { btriC_address1 mem_address 1 16 }  { btriC_ce1 mem_ce 1 1 }  { btriC_we1 mem_we 1 1 }  { btriC_d1 mem_din 1 8 }  { btriC_q1 mem_dout 0 8 } } }
	bA { ap_memory {  { bA_address0 mem_address 1 17 }  { bA_ce0 mem_ce 1 1 }  { bA_q0 mem_dout 0 8 }  { bA_address1 mem_address 1 17 }  { bA_ce1 mem_ce 1 1 }  { bA_q1 mem_dout 0 8 } } }
}
