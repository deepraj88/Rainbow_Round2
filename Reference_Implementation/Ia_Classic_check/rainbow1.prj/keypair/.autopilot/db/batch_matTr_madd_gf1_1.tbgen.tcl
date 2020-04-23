set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
set moduleName batch_matTr_madd_gf1_1
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
set C_modelName {batch_matTr_madd_gf1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 16384 { 2 2 } 1 1 }  }
	{ A_to_tr int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ bB int 8 regular {array 16384 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "A_to_tr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 14 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 14 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ A_to_tr_address0 sc_out sc_lv 9 signal 1 } 
	{ A_to_tr_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_to_tr_q0 sc_in sc_lv 8 signal 1 } 
	{ bB_address0 sc_out sc_lv 14 signal 2 } 
	{ bB_ce0 sc_out sc_logic 1 signal 2 } 
	{ bB_q0 sc_in sc_lv 8 signal 2 } 
	{ bB_address1 sc_out sc_lv 14 signal 2 } 
	{ bB_ce1 sc_out sc_logic 1 signal 2 } 
	{ bB_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "A_to_tr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "A_to_tr", "role": "address0" }} , 
 	{ "name": "A_to_tr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_to_tr", "role": "ce0" }} , 
 	{ "name": "A_to_tr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_to_tr", "role": "q0" }} , 
 	{ "name": "bB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address0" }} , 
 	{ "name": "bB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce0" }} , 
 	{ "name": "bB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q0" }} , 
 	{ "name": "bB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bB", "role": "address1" }} , 
 	{ "name": "bB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bB", "role": "ce1" }} , 
 	{ "name": "bB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bB", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_matTr_madd_gf1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30785", "EstimateLatencyMax" : "804929",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "accu_c"}]},
			{"Name" : "A_to_tr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf16v_madd_u3210_2_fu_94", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf16v_madd_u3210_2_fu_94", "Parent" : "0",
		"CDFG" : "p_gf16v_madd_u3210_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "783",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_byte_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	batch_matTr_madd_gf1_1 {
		bC {Type IO LastRead 4 FirstWrite 4}
		A_to_tr {Type I LastRead 2 FirstWrite -1}
		bB {Type I LastRead 4 FirstWrite -1}}
	p_gf16v_madd_u3210_2 {
		accu_c {Type IO LastRead 4 FirstWrite 4}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}
		p_num_byte_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30785", "Max" : "804929"}
	, {"Name" : "Interval", "Min" : "30785", "Max" : "804929"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 14 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 14 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	A_to_tr { ap_memory {  { A_to_tr_address0 mem_address 1 9 }  { A_to_tr_ce0 mem_ce 1 1 }  { A_to_tr_q0 mem_dout 0 8 } } }
	bB { ap_memory {  { bB_address0 mem_address 1 14 }  { bB_ce0 mem_ce 1 1 }  { bB_q0 mem_dout 0 8 }  { bB_address1 mem_address 1 14 }  { bB_ce1 mem_ce 1 1 }  { bB_q1 mem_dout 0 8 } } }
}
