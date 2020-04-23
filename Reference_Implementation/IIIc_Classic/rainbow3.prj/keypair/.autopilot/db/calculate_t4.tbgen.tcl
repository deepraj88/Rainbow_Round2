set moduleName calculate_t4
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
set C_modelName {calculate_t4}
set C_modelType { void 0 }
set C_modelArgList {
	{ t2_to_t4 int 8 regular {array 2448 { 2 2 } 1 1 }  }
	{ t1 int 8 regular {array 2448 { 1 1 } 1 1 }  }
	{ t3 int 8 regular {array 1296 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t2_to_t4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "t1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t2_to_t4_address0 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d0 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q0 sc_in sc_lv 8 signal 0 } 
	{ t2_to_t4_address1 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d1 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q1 sc_in sc_lv 8 signal 0 } 
	{ t1_address0 sc_out sc_lv 12 signal 1 } 
	{ t1_ce0 sc_out sc_logic 1 signal 1 } 
	{ t1_q0 sc_in sc_lv 8 signal 1 } 
	{ t1_address1 sc_out sc_lv 12 signal 1 } 
	{ t1_ce1 sc_out sc_logic 1 signal 1 } 
	{ t1_q1 sc_in sc_lv 8 signal 1 } 
	{ t3_address0 sc_out sc_lv 11 signal 2 } 
	{ t3_ce0 sc_out sc_logic 1 signal 2 } 
	{ t3_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t2_to_t4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address0" }} , 
 	{ "name": "t2_to_t4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce0" }} , 
 	{ "name": "t2_to_t4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we0" }} , 
 	{ "name": "t2_to_t4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d0" }} , 
 	{ "name": "t2_to_t4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q0" }} , 
 	{ "name": "t2_to_t4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address1" }} , 
 	{ "name": "t2_to_t4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce1" }} , 
 	{ "name": "t2_to_t4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we1" }} , 
 	{ "name": "t2_to_t4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d1" }} , 
 	{ "name": "t2_to_t4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q1" }} , 
 	{ "name": "t1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address0" }} , 
 	{ "name": "t1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce0" }} , 
 	{ "name": "t1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q0" }} , 
 	{ "name": "t1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address1" }} , 
 	{ "name": "t1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce1" }} , 
 	{ "name": "t1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q1" }} , 
 	{ "name": "t3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t3", "role": "address0" }} , 
 	{ "name": "t3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t3", "role": "ce0" }} , 
 	{ "name": "t3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "calculate_t4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "163837", "EstimateLatencyMax" : "163837",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3262_fu_301"}],
		"Port" : [
			{"Name" : "t2_to_t4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u3262_fu_301", "Port" : "a"}]},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3262_fu_301", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u3262",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
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
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3262_fu_301.tmp_235_gf256v_mul_u3269_fu_183", "Parent" : "2",
		"CDFG" : "gf256v_mul_u3269",
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
	calculate_t4 {
		t2_to_t4 {Type IO LastRead 7 FirstWrite 7}
		t1 {Type I LastRead 4 FirstWrite -1}
		t3 {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3262 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3269 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "163837", "Max" : "163837"}
	, {"Name" : "Interval", "Min" : "163837", "Max" : "163837"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t2_to_t4 { ap_memory {  { t2_to_t4_address0 mem_address 1 12 }  { t2_to_t4_ce0 mem_ce 1 1 }  { t2_to_t4_we0 mem_we 1 1 }  { t2_to_t4_d0 mem_din 1 8 }  { t2_to_t4_q0 mem_dout 0 8 }  { t2_to_t4_address1 mem_address 1 12 }  { t2_to_t4_ce1 mem_ce 1 1 }  { t2_to_t4_we1 mem_we 1 1 }  { t2_to_t4_d1 mem_din 1 8 }  { t2_to_t4_q1 mem_dout 0 8 } } }
	t1 { ap_memory {  { t1_address0 mem_address 1 12 }  { t1_ce0 mem_ce 1 1 }  { t1_q0 mem_dout 0 8 }  { t1_address1 mem_address 1 12 }  { t1_ce1 mem_ce 1 1 }  { t1_q1 mem_dout 0 8 } } }
	t3 { ap_memory {  { t3_address0 mem_address 1 11 }  { t3_ce0 mem_ce 1 1 }  { t3_q0 mem_dout 0 8 } } }
}
set moduleName calculate_t4
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
set C_modelName {calculate_t4}
set C_modelType { void 0 }
set C_modelArgList {
	{ t2_to_t4 int 8 regular {array 2448 { 2 2 } 1 1 }  }
	{ t1 int 8 regular {array 2448 { 1 1 } 1 1 }  }
	{ t3 int 8 regular {array 1296 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t2_to_t4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "t1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t2_to_t4_address0 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d0 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q0 sc_in sc_lv 8 signal 0 } 
	{ t2_to_t4_address1 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d1 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q1 sc_in sc_lv 8 signal 0 } 
	{ t1_address0 sc_out sc_lv 12 signal 1 } 
	{ t1_ce0 sc_out sc_logic 1 signal 1 } 
	{ t1_q0 sc_in sc_lv 8 signal 1 } 
	{ t1_address1 sc_out sc_lv 12 signal 1 } 
	{ t1_ce1 sc_out sc_logic 1 signal 1 } 
	{ t1_q1 sc_in sc_lv 8 signal 1 } 
	{ t3_address0 sc_out sc_lv 11 signal 2 } 
	{ t3_ce0 sc_out sc_logic 1 signal 2 } 
	{ t3_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t2_to_t4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address0" }} , 
 	{ "name": "t2_to_t4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce0" }} , 
 	{ "name": "t2_to_t4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we0" }} , 
 	{ "name": "t2_to_t4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d0" }} , 
 	{ "name": "t2_to_t4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q0" }} , 
 	{ "name": "t2_to_t4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address1" }} , 
 	{ "name": "t2_to_t4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce1" }} , 
 	{ "name": "t2_to_t4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we1" }} , 
 	{ "name": "t2_to_t4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d1" }} , 
 	{ "name": "t2_to_t4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q1" }} , 
 	{ "name": "t1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address0" }} , 
 	{ "name": "t1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce0" }} , 
 	{ "name": "t1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q0" }} , 
 	{ "name": "t1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address1" }} , 
 	{ "name": "t1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce1" }} , 
 	{ "name": "t1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q1" }} , 
 	{ "name": "t3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t3", "role": "address0" }} , 
 	{ "name": "t3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t3", "role": "ce0" }} , 
 	{ "name": "t3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "calculate_t4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "163837", "EstimateLatencyMax" : "163837",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3265_fu_301"}],
		"Port" : [
			{"Name" : "t2_to_t4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u3265_fu_301", "Port" : "a"}]},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3265_fu_301", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u3265",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
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
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3265_fu_301.tmp_235_gf256v_mul_u3272_fu_183", "Parent" : "2",
		"CDFG" : "gf256v_mul_u3272",
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
	calculate_t4 {
		t2_to_t4 {Type IO LastRead 7 FirstWrite 7}
		t1 {Type I LastRead 4 FirstWrite -1}
		t3 {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3265 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3272 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "163837", "Max" : "163837"}
	, {"Name" : "Interval", "Min" : "163837", "Max" : "163837"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t2_to_t4 { ap_memory {  { t2_to_t4_address0 mem_address 1 12 }  { t2_to_t4_ce0 mem_ce 1 1 }  { t2_to_t4_we0 mem_we 1 1 }  { t2_to_t4_d0 mem_din 1 8 }  { t2_to_t4_q0 mem_dout 0 8 }  { t2_to_t4_address1 mem_address 1 12 }  { t2_to_t4_ce1 mem_ce 1 1 }  { t2_to_t4_we1 mem_we 1 1 }  { t2_to_t4_d1 mem_din 1 8 }  { t2_to_t4_q1 mem_dout 0 8 } } }
	t1 { ap_memory {  { t1_address0 mem_address 1 12 }  { t1_ce0 mem_ce 1 1 }  { t1_q0 mem_dout 0 8 }  { t1_address1 mem_address 1 12 }  { t1_ce1 mem_ce 1 1 }  { t1_q1 mem_dout 0 8 } } }
	t3 { ap_memory {  { t3_address0 mem_address 1 11 }  { t3_ce0 mem_ce 1 1 }  { t3_q0 mem_dout 0 8 } } }
}
set moduleName calculate_t4
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
set C_modelName {calculate_t4}
set C_modelType { void 0 }
set C_modelArgList {
	{ t2_to_t4 int 8 regular {array 2448 { 2 2 } 1 1 }  }
	{ t1 int 8 regular {array 2448 { 1 1 } 1 1 }  }
	{ t3 int 8 regular {array 1296 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t2_to_t4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "t1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t2_to_t4_address0 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d0 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q0 sc_in sc_lv 8 signal 0 } 
	{ t2_to_t4_address1 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d1 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q1 sc_in sc_lv 8 signal 0 } 
	{ t1_address0 sc_out sc_lv 12 signal 1 } 
	{ t1_ce0 sc_out sc_logic 1 signal 1 } 
	{ t1_q0 sc_in sc_lv 8 signal 1 } 
	{ t1_address1 sc_out sc_lv 12 signal 1 } 
	{ t1_ce1 sc_out sc_logic 1 signal 1 } 
	{ t1_q1 sc_in sc_lv 8 signal 1 } 
	{ t3_address0 sc_out sc_lv 11 signal 2 } 
	{ t3_ce0 sc_out sc_logic 1 signal 2 } 
	{ t3_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t2_to_t4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address0" }} , 
 	{ "name": "t2_to_t4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce0" }} , 
 	{ "name": "t2_to_t4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we0" }} , 
 	{ "name": "t2_to_t4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d0" }} , 
 	{ "name": "t2_to_t4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q0" }} , 
 	{ "name": "t2_to_t4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address1" }} , 
 	{ "name": "t2_to_t4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce1" }} , 
 	{ "name": "t2_to_t4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we1" }} , 
 	{ "name": "t2_to_t4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d1" }} , 
 	{ "name": "t2_to_t4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q1" }} , 
 	{ "name": "t1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address0" }} , 
 	{ "name": "t1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce0" }} , 
 	{ "name": "t1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q0" }} , 
 	{ "name": "t1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address1" }} , 
 	{ "name": "t1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce1" }} , 
 	{ "name": "t1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q1" }} , 
 	{ "name": "t3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t3", "role": "address0" }} , 
 	{ "name": "t3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t3", "role": "ce0" }} , 
 	{ "name": "t3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "calculate_t4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "163837", "EstimateLatencyMax" : "163837",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_301"}],
		"Port" : [
			{"Name" : "t2_to_t4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_301", "Port" : "a"}]},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3274_fu_301", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u3274",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
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
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3274_fu_301.tmp_s_gf256v_mul_u3281_fu_177", "Parent" : "2",
		"CDFG" : "gf256v_mul_u3281",
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
	calculate_t4 {
		t2_to_t4 {Type IO LastRead 7 FirstWrite 7}
		t1 {Type I LastRead 4 FirstWrite -1}
		t3 {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3274 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3281 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "163837", "Max" : "163837"}
	, {"Name" : "Interval", "Min" : "163837", "Max" : "163837"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t2_to_t4 { ap_memory {  { t2_to_t4_address0 mem_address 1 12 }  { t2_to_t4_ce0 mem_ce 1 1 }  { t2_to_t4_we0 mem_we 1 1 }  { t2_to_t4_d0 mem_din 1 8 }  { t2_to_t4_q0 mem_dout 0 8 }  { t2_to_t4_address1 mem_address 1 12 }  { t2_to_t4_ce1 mem_ce 1 1 }  { t2_to_t4_we1 mem_we 1 1 }  { t2_to_t4_d1 mem_din 1 8 }  { t2_to_t4_q1 mem_dout 0 8 } } }
	t1 { ap_memory {  { t1_address0 mem_address 1 12 }  { t1_ce0 mem_ce 1 1 }  { t1_q0 mem_dout 0 8 }  { t1_address1 mem_address 1 12 }  { t1_ce1 mem_ce 1 1 }  { t1_q1 mem_dout 0 8 } } }
	t3 { ap_memory {  { t3_address0 mem_address 1 11 }  { t3_ce0 mem_ce 1 1 }  { t3_q0 mem_dout 0 8 } } }
}
set moduleName calculate_t4
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
set C_modelName {calculate_t4}
set C_modelType { void 0 }
set C_modelArgList {
	{ t2_to_t4 int 8 regular {array 2448 { 2 2 } 1 1 }  }
	{ t1 int 8 regular {array 2448 { 1 1 } 1 1 }  }
	{ t3 int 8 regular {array 1296 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t2_to_t4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "t1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t2_to_t4_address0 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d0 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q0 sc_in sc_lv 8 signal 0 } 
	{ t2_to_t4_address1 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d1 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q1 sc_in sc_lv 8 signal 0 } 
	{ t1_address0 sc_out sc_lv 12 signal 1 } 
	{ t1_ce0 sc_out sc_logic 1 signal 1 } 
	{ t1_q0 sc_in sc_lv 8 signal 1 } 
	{ t1_address1 sc_out sc_lv 12 signal 1 } 
	{ t1_ce1 sc_out sc_logic 1 signal 1 } 
	{ t1_q1 sc_in sc_lv 8 signal 1 } 
	{ t3_address0 sc_out sc_lv 11 signal 2 } 
	{ t3_ce0 sc_out sc_logic 1 signal 2 } 
	{ t3_q0 sc_in sc_lv 8 signal 2 } 
	{ t3_address1 sc_out sc_lv 11 signal 2 } 
	{ t3_ce1 sc_out sc_logic 1 signal 2 } 
	{ t3_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t2_to_t4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address0" }} , 
 	{ "name": "t2_to_t4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce0" }} , 
 	{ "name": "t2_to_t4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we0" }} , 
 	{ "name": "t2_to_t4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d0" }} , 
 	{ "name": "t2_to_t4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q0" }} , 
 	{ "name": "t2_to_t4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address1" }} , 
 	{ "name": "t2_to_t4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce1" }} , 
 	{ "name": "t2_to_t4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we1" }} , 
 	{ "name": "t2_to_t4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d1" }} , 
 	{ "name": "t2_to_t4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q1" }} , 
 	{ "name": "t1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address0" }} , 
 	{ "name": "t1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce0" }} , 
 	{ "name": "t1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q0" }} , 
 	{ "name": "t1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address1" }} , 
 	{ "name": "t1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce1" }} , 
 	{ "name": "t1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q1" }} , 
 	{ "name": "t3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t3", "role": "address0" }} , 
 	{ "name": "t3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t3", "role": "ce0" }} , 
 	{ "name": "t3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t3", "role": "q0" }} , 
 	{ "name": "t3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t3", "role": "address1" }} , 
 	{ "name": "t3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t3", "role": "ce1" }} , 
 	{ "name": "t3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t3", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5"],
		"CDFG" : "calculate_t4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159553", "EstimateLatencyMax" : "163837",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_156"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_156"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_156"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_156"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u32_fu_167"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3273_1_fu_176"}],
		"Port" : [
			{"Name" : "t2_to_t4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_gf256v_add_u32_fu_167", "Port" : "accu_b"}]},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_156", "Port" : "a"}]},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3274_fu_156", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u3274",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
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
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3274_fu_156.tmp_256_gf256v_mul_u3281_fu_177", "Parent" : "2",
		"CDFG" : "gf256v_mul_u3281",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u32_fu_167", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3273_1_fu_176", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3273_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	calculate_t4 {
		t2_to_t4 {Type IO LastRead 16 FirstWrite 4}
		t1 {Type I LastRead 4 FirstWrite -1}
		t3 {Type I LastRead 8 FirstWrite -1}}
	p_gf256v_madd_u3274 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3281 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	p_gf256v_add_u32 {
		accu_b {Type IO LastRead 16 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 16 FirstWrite -1}}
	p_gf256v_add_u3273_1 {
		a {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159553", "Max" : "163837"}
	, {"Name" : "Interval", "Min" : "159553", "Max" : "163837"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t2_to_t4 { ap_memory {  { t2_to_t4_address0 mem_address 1 12 }  { t2_to_t4_ce0 mem_ce 1 1 }  { t2_to_t4_we0 mem_we 1 1 }  { t2_to_t4_d0 mem_din 1 8 }  { t2_to_t4_q0 mem_dout 0 8 }  { t2_to_t4_address1 mem_address 1 12 }  { t2_to_t4_ce1 mem_ce 1 1 }  { t2_to_t4_we1 mem_we 1 1 }  { t2_to_t4_d1 mem_din 1 8 }  { t2_to_t4_q1 mem_dout 0 8 } } }
	t1 { ap_memory {  { t1_address0 mem_address 1 12 }  { t1_ce0 mem_ce 1 1 }  { t1_q0 mem_dout 0 8 }  { t1_address1 mem_address 1 12 }  { t1_ce1 mem_ce 1 1 }  { t1_q1 mem_dout 0 8 } } }
	t3 { ap_memory {  { t3_address0 mem_address 1 11 }  { t3_ce0 mem_ce 1 1 }  { t3_q0 mem_dout 0 8 }  { t3_address1 mem_address 1 11 }  { t3_ce1 mem_ce 1 1 }  { t3_q1 mem_dout 0 8 } } }
}
set moduleName calculate_t4
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
set C_modelName {calculate_t4}
set C_modelType { void 0 }
set C_modelArgList {
	{ t2_to_t4 int 8 regular {array 2448 { 2 2 } 1 1 }  }
	{ t1 int 8 regular {array 2448 { 1 1 } 1 1 }  }
	{ t3 int 8 regular {array 1296 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t2_to_t4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "t1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t2_to_t4_address0 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d0 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q0 sc_in sc_lv 8 signal 0 } 
	{ t2_to_t4_address1 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d1 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q1 sc_in sc_lv 8 signal 0 } 
	{ t1_address0 sc_out sc_lv 12 signal 1 } 
	{ t1_ce0 sc_out sc_logic 1 signal 1 } 
	{ t1_q0 sc_in sc_lv 8 signal 1 } 
	{ t1_address1 sc_out sc_lv 12 signal 1 } 
	{ t1_ce1 sc_out sc_logic 1 signal 1 } 
	{ t1_q1 sc_in sc_lv 8 signal 1 } 
	{ t3_address0 sc_out sc_lv 11 signal 2 } 
	{ t3_ce0 sc_out sc_logic 1 signal 2 } 
	{ t3_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t2_to_t4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address0" }} , 
 	{ "name": "t2_to_t4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce0" }} , 
 	{ "name": "t2_to_t4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we0" }} , 
 	{ "name": "t2_to_t4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d0" }} , 
 	{ "name": "t2_to_t4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q0" }} , 
 	{ "name": "t2_to_t4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address1" }} , 
 	{ "name": "t2_to_t4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce1" }} , 
 	{ "name": "t2_to_t4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we1" }} , 
 	{ "name": "t2_to_t4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d1" }} , 
 	{ "name": "t2_to_t4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q1" }} , 
 	{ "name": "t1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address0" }} , 
 	{ "name": "t1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce0" }} , 
 	{ "name": "t1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q0" }} , 
 	{ "name": "t1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address1" }} , 
 	{ "name": "t1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce1" }} , 
 	{ "name": "t1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q1" }} , 
 	{ "name": "t3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t3", "role": "address0" }} , 
 	{ "name": "t3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t3", "role": "ce0" }} , 
 	{ "name": "t3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "calculate_t4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "163909", "EstimateLatencyMax" : "163909",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_316"}],
		"Port" : [
			{"Name" : "t2_to_t4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_316", "Port" : "a"}]},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3274_fu_316", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u3274",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
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
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3274_fu_316.tmp_s_gf256v_mul_u3281_fu_177", "Parent" : "2",
		"CDFG" : "gf256v_mul_u3281",
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
	calculate_t4 {
		t2_to_t4 {Type IO LastRead 8 FirstWrite 8}
		t1 {Type I LastRead 4 FirstWrite -1}
		t3 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u3274 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3281 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "163909", "Max" : "163909"}
	, {"Name" : "Interval", "Min" : "163909", "Max" : "163909"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t2_to_t4 { ap_memory {  { t2_to_t4_address0 mem_address 1 12 }  { t2_to_t4_ce0 mem_ce 1 1 }  { t2_to_t4_we0 mem_we 1 1 }  { t2_to_t4_d0 mem_din 1 8 }  { t2_to_t4_q0 mem_dout 0 8 }  { t2_to_t4_address1 mem_address 1 12 }  { t2_to_t4_ce1 mem_ce 1 1 }  { t2_to_t4_we1 mem_we 1 1 }  { t2_to_t4_d1 mem_din 1 8 }  { t2_to_t4_q1 mem_dout 0 8 } } }
	t1 { ap_memory {  { t1_address0 mem_address 1 12 }  { t1_ce0 mem_ce 1 1 }  { t1_q0 mem_dout 0 8 }  { t1_address1 mem_address 1 12 }  { t1_ce1 mem_ce 1 1 }  { t1_q1 mem_dout 0 8 } } }
	t3 { ap_memory {  { t3_address0 mem_address 1 11 }  { t3_ce0 mem_ce 1 1 }  { t3_q0 mem_dout 0 8 } } }
}
set moduleName calculate_t4
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
set C_modelName {calculate_t4}
set C_modelType { void 0 }
set C_modelArgList {
	{ t2_to_t4 int 8 regular {array 2448 { 2 2 } 1 1 }  }
	{ t1 int 8 regular {array 2448 { 1 1 } 1 1 }  }
	{ t3 int 8 regular {array 1296 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t2_to_t4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "t1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t2_to_t4_address0 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we0 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d0 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q0 sc_in sc_lv 8 signal 0 } 
	{ t2_to_t4_address1 sc_out sc_lv 12 signal 0 } 
	{ t2_to_t4_ce1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_we1 sc_out sc_logic 1 signal 0 } 
	{ t2_to_t4_d1 sc_out sc_lv 8 signal 0 } 
	{ t2_to_t4_q1 sc_in sc_lv 8 signal 0 } 
	{ t1_address0 sc_out sc_lv 12 signal 1 } 
	{ t1_ce0 sc_out sc_logic 1 signal 1 } 
	{ t1_q0 sc_in sc_lv 8 signal 1 } 
	{ t1_address1 sc_out sc_lv 12 signal 1 } 
	{ t1_ce1 sc_out sc_logic 1 signal 1 } 
	{ t1_q1 sc_in sc_lv 8 signal 1 } 
	{ t3_address0 sc_out sc_lv 11 signal 2 } 
	{ t3_ce0 sc_out sc_logic 1 signal 2 } 
	{ t3_q0 sc_in sc_lv 8 signal 2 } 
	{ t3_address1 sc_out sc_lv 11 signal 2 } 
	{ t3_ce1 sc_out sc_logic 1 signal 2 } 
	{ t3_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t2_to_t4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address0" }} , 
 	{ "name": "t2_to_t4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce0" }} , 
 	{ "name": "t2_to_t4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we0" }} , 
 	{ "name": "t2_to_t4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d0" }} , 
 	{ "name": "t2_to_t4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q0" }} , 
 	{ "name": "t2_to_t4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "address1" }} , 
 	{ "name": "t2_to_t4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "ce1" }} , 
 	{ "name": "t2_to_t4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "we1" }} , 
 	{ "name": "t2_to_t4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "d1" }} , 
 	{ "name": "t2_to_t4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t2_to_t4", "role": "q1" }} , 
 	{ "name": "t1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address0" }} , 
 	{ "name": "t1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce0" }} , 
 	{ "name": "t1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q0" }} , 
 	{ "name": "t1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "t1", "role": "address1" }} , 
 	{ "name": "t1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "ce1" }} , 
 	{ "name": "t1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1", "role": "q1" }} , 
 	{ "name": "t3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t3", "role": "address0" }} , 
 	{ "name": "t3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t3", "role": "ce0" }} , 
 	{ "name": "t3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t3", "role": "q0" }} , 
 	{ "name": "t3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "t3", "role": "address1" }} , 
 	{ "name": "t3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t3", "role": "ce1" }} , 
 	{ "name": "t3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t3", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5"],
		"CDFG" : "calculate_t4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "160237", "EstimateLatencyMax" : "163837",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_170"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_170"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_170"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_170"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u32_fu_181"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3273_1_fu_190"}],
		"Port" : [
			{"Name" : "t2_to_t4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_gf256v_add_u32_fu_181", "Port" : "accu_b"}]},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u3274_fu_170", "Port" : "a"}]},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3274_fu_170", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u3274",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
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
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3274_fu_170.tmp_256_gf256v_mul_u3281_fu_177", "Parent" : "2",
		"CDFG" : "gf256v_mul_u3281",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u32_fu_181", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "99",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accu_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3273_1_fu_190", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3273_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	calculate_t4 {
		t2_to_t4 {Type IO LastRead 16 FirstWrite 4}
		t1 {Type I LastRead 4 FirstWrite -1}
		t3 {Type I LastRead 8 FirstWrite -1}}
	p_gf256v_madd_u3274 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3281 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	p_gf256v_add_u32 {
		accu_b {Type IO LastRead 16 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 9 FirstWrite -1}}
	p_gf256v_add_u3273_1 {
		a {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "160237", "Max" : "163837"}
	, {"Name" : "Interval", "Min" : "160237", "Max" : "163837"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t2_to_t4 { ap_memory {  { t2_to_t4_address0 mem_address 1 12 }  { t2_to_t4_ce0 mem_ce 1 1 }  { t2_to_t4_we0 mem_we 1 1 }  { t2_to_t4_d0 mem_din 1 8 }  { t2_to_t4_q0 mem_dout 0 8 }  { t2_to_t4_address1 mem_address 1 12 }  { t2_to_t4_ce1 mem_ce 1 1 }  { t2_to_t4_we1 mem_we 1 1 }  { t2_to_t4_d1 mem_din 1 8 }  { t2_to_t4_q1 mem_dout 0 8 } } }
	t1 { ap_memory {  { t1_address0 mem_address 1 12 }  { t1_ce0 mem_ce 1 1 }  { t1_q0 mem_dout 0 8 }  { t1_address1 mem_address 1 12 }  { t1_ce1 mem_ce 1 1 }  { t1_q1 mem_dout 0 8 } } }
	t3 { ap_memory {  { t3_address0 mem_address 1 11 }  { t3_ce0 mem_ce 1 1 }  { t3_q0 mem_dout 0 8 }  { t3_address1 mem_address 1 11 }  { t3_ce1 mem_ce 1 1 }  { t3_q1 mem_dout 0 8 } } }
}
