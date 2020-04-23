set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5070913", "EstimateLatencyMax" : "5070913",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_287"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_287", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_287", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_287.tmp_253_gf256v_mul_u32_fu_171", "Parent" : "2",
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
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 7 FirstWrite 7}
		l2_polys {Type I LastRead 3 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5070913", "Max" : "5070913"}
	, {"Name" : "Interval", "Min" : "5070913", "Max" : "5070913"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5070913", "EstimateLatencyMax" : "5070913",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_287"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_287", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_287", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_287.tmp_253_gf256v_mul_u32_fu_171", "Parent" : "2",
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
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 7 FirstWrite 7}
		l2_polys {Type I LastRead 3 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5070913", "Max" : "5070913"}
	, {"Name" : "Interval", "Min" : "5070913", "Max" : "5070913"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5070913", "EstimateLatencyMax" : "5070913",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_287"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_287", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_287", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_287.tmp_s_gf256v_mul_u32_fu_171", "Parent" : "2",
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
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 7 FirstWrite 7}
		l2_polys {Type I LastRead 3 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5070913", "Max" : "5070913"}
	, {"Name" : "Interval", "Min" : "5070913", "Max" : "5070913"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 1 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ l2_polys_address1 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce1 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q1 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "l2_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address1" }} , 
 	{ "name": "l2_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce1" }} , 
 	{ "name": "l2_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q1" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5036809", "EstimateLatencyMax" : "5045041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_236"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_236"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_247"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_247", "Port" : "accu_b"}]},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_236", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_236", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_236.tmp_s_gf256v_mul_u32_fu_171", "Parent" : "2",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3236_1_fu_247", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3236_1",
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
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 8 FirstWrite 4}
		l2_polys {Type I LastRead 5 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	p_gf256v_add_u3236_1 {
		accu_b {Type IO LastRead 8 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 8 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5036809", "Max" : "5045041"}
	, {"Name" : "Interval", "Min" : "5036809", "Max" : "5045041"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 }  { l2_polys_address1 mem_address 1 16 }  { l2_polys_ce1 mem_ce 1 1 }  { l2_polys_q1 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 1 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ l2_polys_address1 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce1 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q1 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "l2_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address1" }} , 
 	{ "name": "l2_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce1" }} , 
 	{ "name": "l2_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q1" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5020345", "EstimateLatencyMax" : "5042689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_150"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_150"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_150"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_150"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_161"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u32_fu_170"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_161", "Port" : "accu_b"}]},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_150", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_150", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_150.tmp_s_gf256v_mul_u32_fu_171", "Parent" : "2",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3236_1_fu_161", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3236_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u32_fu_170", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 16 FirstWrite 4}
		l2_polys {Type I LastRead 7 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	p_gf256v_add_u3236_1 {
		accu_b {Type IO LastRead 16 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 16 FirstWrite -1}}
	p_gf256v_add_u32 {
		accu_b {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5020345", "Max" : "5042689"}
	, {"Name" : "Interval", "Min" : "5020345", "Max" : "5042689"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 }  { l2_polys_address1 mem_address 1 16 }  { l2_polys_ce1 mem_ce 1 1 }  { l2_polys_q1 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 1 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ l2_polys_address1 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce1 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q1 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "l2_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address1" }} , 
 	{ "name": "l2_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce1" }} , 
 	{ "name": "l2_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q1" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4982713", "EstimateLatencyMax" : "5090905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_198"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u32_fu_218"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_198", "Port" : "accu_b"}]},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_207", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3236_1_fu_198", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3236_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_207", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_207.tmp_s_gf256v_mul_u32_fu_171", "Parent" : "3",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u32_fu_218", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 32 FirstWrite 4}
		l2_polys {Type I LastRead 15 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_add_u3236_1 {
		accu_b {Type IO LastRead 32 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 32 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	p_gf256v_add_u32 {
		accu_b {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4982713", "Max" : "5090905"}
	, {"Name" : "Interval", "Min" : "4982713", "Max" : "5090905"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 }  { l2_polys_address1 mem_address 1 16 }  { l2_polys_ce1 mem_ce 1 1 }  { l2_polys_q1 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 3 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5073265", "EstimateLatencyMax" : "5073265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_302"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_302", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_302", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_302.tmp_s_gf256v_mul_u32_fu_171", "Parent" : "2",
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
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 8 FirstWrite 8}
		l2_polys {Type I LastRead 4 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5073265", "Max" : "5073265"}
	, {"Name" : "Interval", "Min" : "5073265", "Max" : "5073265"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 1 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ l2_polys_address1 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce1 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q1 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "l2_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address1" }} , 
 	{ "name": "l2_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce1" }} , 
 	{ "name": "l2_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q1" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5045041", "EstimateLatencyMax" : "5045041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_250"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_250"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_261"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_261", "Port" : "accu_b"}]},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_250", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_250", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_250.tmp_s_gf256v_mul_u32_fu_171", "Parent" : "2",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3236_1_fu_261", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3236_1",
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
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 8 FirstWrite 4}
		l2_polys {Type I LastRead 6 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	p_gf256v_add_u3236_1 {
		accu_b {Type IO LastRead 8 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5045041", "Max" : "5045041"}
	, {"Name" : "Interval", "Min" : "5045041", "Max" : "5045041"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 }  { l2_polys_address1 mem_address 1 16 }  { l2_polys_ce1 mem_ce 1 1 }  { l2_polys_q1 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 1 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ l2_polys_address1 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce1 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q1 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "l2_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address1" }} , 
 	{ "name": "l2_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce1" }} , 
 	{ "name": "l2_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q1" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5042689", "EstimateLatencyMax" : "5042689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_164"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_164"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_164"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_164"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_175"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u32_fu_184"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_175", "Port" : "accu_b"}]},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_164", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_164", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_164.tmp_s_gf256v_mul_u32_fu_171", "Parent" : "2",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3236_1_fu_175", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3236_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u32_fu_184", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 16 FirstWrite 4}
		l2_polys {Type I LastRead 7 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	p_gf256v_add_u3236_1 {
		accu_b {Type IO LastRead 16 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 9 FirstWrite -1}}
	p_gf256v_add_u32 {
		accu_b {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5042689", "Max" : "5042689"}
	, {"Name" : "Interval", "Min" : "5042689", "Max" : "5042689"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 }  { l2_polys_address1 mem_address 1 16 }  { l2_polys_ce1 mem_ce 1 1 }  { l2_polys_q1 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
set moduleName obsfucate_l1_polys
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
set C_modelName {obsfucate_l1_polys}
set C_modelType { void 0 }
set C_modelArgList {
	{ l1_polys int 8 regular {array 56448 { 2 2 } 1 1 }  }
	{ l2_polys int 8 regular {array 56448 { 1 1 } 1 1 }  }
	{ s1 int 8 regular {array 2304 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l1_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "l2_polys", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l1_polys_address0 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we0 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d0 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q0 sc_in sc_lv 8 signal 0 } 
	{ l1_polys_address1 sc_out sc_lv 16 signal 0 } 
	{ l1_polys_ce1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_we1 sc_out sc_logic 1 signal 0 } 
	{ l1_polys_d1 sc_out sc_lv 8 signal 0 } 
	{ l1_polys_q1 sc_in sc_lv 8 signal 0 } 
	{ l2_polys_address0 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce0 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q0 sc_in sc_lv 8 signal 1 } 
	{ l2_polys_address1 sc_out sc_lv 16 signal 1 } 
	{ l2_polys_ce1 sc_out sc_logic 1 signal 1 } 
	{ l2_polys_q1 sc_in sc_lv 8 signal 1 } 
	{ s1_address0 sc_out sc_lv 12 signal 2 } 
	{ s1_ce0 sc_out sc_logic 1 signal 2 } 
	{ s1_q0 sc_in sc_lv 8 signal 2 } 
	{ s1_address1 sc_out sc_lv 12 signal 2 } 
	{ s1_ce1 sc_out sc_logic 1 signal 2 } 
	{ s1_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l1_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address0" }} , 
 	{ "name": "l1_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce0" }} , 
 	{ "name": "l1_polys_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we0" }} , 
 	{ "name": "l1_polys_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d0" }} , 
 	{ "name": "l1_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q0" }} , 
 	{ "name": "l1_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l1_polys", "role": "address1" }} , 
 	{ "name": "l1_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "ce1" }} , 
 	{ "name": "l1_polys_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l1_polys", "role": "we1" }} , 
 	{ "name": "l1_polys_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "d1" }} , 
 	{ "name": "l1_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l1_polys", "role": "q1" }} , 
 	{ "name": "l2_polys_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address0" }} , 
 	{ "name": "l2_polys_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce0" }} , 
 	{ "name": "l2_polys_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q0" }} , 
 	{ "name": "l2_polys_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "l2_polys", "role": "address1" }} , 
 	{ "name": "l2_polys_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l2_polys", "role": "ce1" }} , 
 	{ "name": "l2_polys_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "l2_polys", "role": "q1" }} , 
 	{ "name": "s1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address0" }} , 
 	{ "name": "s1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce0" }} , 
 	{ "name": "s1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q0" }} , 
 	{ "name": "s1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s1", "role": "address1" }} , 
 	{ "name": "s1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "ce1" }} , 
 	{ "name": "s1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5"],
		"CDFG" : "obsfucate_l1_polys",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5033281", "EstimateLatencyMax" : "5090905",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_212"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_add_u32_fu_232"}],
		"Port" : [
			{"Name" : "l1_polys", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_gf256v_add_u3236_1_fu_212", "Port" : "accu_b"}]},
			{"Name" : "l2_polys", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_gf256v_madd_u32_1_fu_221", "Port" : "a"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u3236_1_fu_212", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u3236_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_221", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "p_gf256v_madd_u32_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "gf256_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u32_1_fu_221.tmp_s_gf256v_mul_u32_fu_171", "Parent" : "3",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_add_u32_fu_232", "Parent" : "0",
		"CDFG" : "p_gf256v_add_u32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "accu_b", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	obsfucate_l1_polys {
		l1_polys {Type IO LastRead 32 FirstWrite 4}
		l2_polys {Type I LastRead 15 FirstWrite -1}
		s1 {Type I LastRead 4 FirstWrite -1}}
	p_gf256v_add_u3236_1 {
		accu_b {Type IO LastRead 32 FirstWrite 4}
		accu_b_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 17 FirstWrite -1}}
	p_gf256v_madd_u32_1 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u32 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	p_gf256v_add_u32 {
		accu_b {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5033281", "Max" : "5090905"}
	, {"Name" : "Interval", "Min" : "5033281", "Max" : "5090905"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l1_polys { ap_memory {  { l1_polys_address0 mem_address 1 16 }  { l1_polys_ce0 mem_ce 1 1 }  { l1_polys_we0 mem_we 1 1 }  { l1_polys_d0 mem_din 1 8 }  { l1_polys_q0 mem_dout 0 8 }  { l1_polys_address1 mem_address 1 16 }  { l1_polys_ce1 mem_ce 1 1 }  { l1_polys_we1 mem_we 1 1 }  { l1_polys_d1 mem_din 1 8 }  { l1_polys_q1 mem_dout 0 8 } } }
	l2_polys { ap_memory {  { l2_polys_address0 mem_address 1 16 }  { l2_polys_ce0 mem_ce 1 1 }  { l2_polys_q0 mem_dout 0 8 }  { l2_polys_address1 mem_address 1 16 }  { l2_polys_ce1 mem_ce 1 1 }  { l2_polys_q1 mem_dout 0 8 } } }
	s1 { ap_memory {  { s1_address0 mem_address 1 12 }  { s1_ce0 mem_ce 1 1 }  { s1_q0 mem_dout 0 8 }  { s1_address1 mem_address 1 12 }  { s1_ce1 mem_ce 1 1 }  { s1_q1 mem_dout 0 8 } } }
}
