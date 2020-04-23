set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3212_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3212_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3212_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3212_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3212",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3212_fu_139.tmp_251_gf256v_mul_u3213_fu_185", "Parent" : "1",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3212 {
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
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3212_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3212_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3212_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3212_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3212",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3212_fu_139.tmp_251_gf256v_mul_u3213_fu_185", "Parent" : "1",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3212 {
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
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
set moduleName batch_trimatTr_madd_s
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
set C_modelName {batch_trimatTr_madd_}
set C_modelType { void 0 }
set C_modelArgList {
	{ bC int 8 regular {array 211968 { 2 2 } 1 1 }  }
	{ btriA int 8 regular {array 205344 { 1 1 } 1 1 }  }
	{ B int 8 regular {array 4416 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bC", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "btriA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bC_address0 sc_out sc_lv 18 signal 0 } 
	{ bC_ce0 sc_out sc_logic 1 signal 0 } 
	{ bC_we0 sc_out sc_logic 1 signal 0 } 
	{ bC_d0 sc_out sc_lv 8 signal 0 } 
	{ bC_q0 sc_in sc_lv 8 signal 0 } 
	{ bC_address1 sc_out sc_lv 18 signal 0 } 
	{ bC_ce1 sc_out sc_logic 1 signal 0 } 
	{ bC_we1 sc_out sc_logic 1 signal 0 } 
	{ bC_d1 sc_out sc_lv 8 signal 0 } 
	{ bC_q1 sc_in sc_lv 8 signal 0 } 
	{ btriA_address0 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce0 sc_out sc_logic 1 signal 1 } 
	{ btriA_q0 sc_in sc_lv 8 signal 1 } 
	{ btriA_address1 sc_out sc_lv 18 signal 1 } 
	{ btriA_ce1 sc_out sc_logic 1 signal 1 } 
	{ btriA_q1 sc_in sc_lv 8 signal 1 } 
	{ B_address0 sc_out sc_lv 13 signal 2 } 
	{ B_ce0 sc_out sc_logic 1 signal 2 } 
	{ B_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bC_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address0" }} , 
 	{ "name": "bC_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce0" }} , 
 	{ "name": "bC_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we0" }} , 
 	{ "name": "bC_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d0" }} , 
 	{ "name": "bC_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q0" }} , 
 	{ "name": "bC_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "bC", "role": "address1" }} , 
 	{ "name": "bC_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "ce1" }} , 
 	{ "name": "bC_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bC", "role": "we1" }} , 
 	{ "name": "bC_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "d1" }} , 
 	{ "name": "bC_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bC", "role": "q1" }} , 
 	{ "name": "btriA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address0" }} , 
 	{ "name": "btriA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce0" }} , 
 	{ "name": "btriA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q0" }} , 
 	{ "name": "btriA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "btriA", "role": "address1" }} , 
 	{ "name": "btriA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "btriA", "role": "ce1" }} , 
 	{ "name": "btriA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "btriA", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "batch_trimatTr_madd_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821561", "EstimateLatencyMax" : "35760953",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139"}],
		"Port" : [
			{"Name" : "bC", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "accu_c"}]},
			{"Name" : "btriA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_gf256v_madd_u3214_fu_139", "Port" : "a"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_gf256v_madd_u3214",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_gf256v_madd_u3214_fu_139.tmp_s_gf256v_mul_u3215_fu_185", "Parent" : "1",
		"CDFG" : "gf256v_mul_u3215",
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
	batch_trimatTr_madd_s {
		bC {Type IO LastRead 6 FirstWrite 6}
		btriA {Type I LastRead 4 FirstWrite -1}
		B {Type I LastRead 3 FirstWrite -1}}
	p_gf256v_madd_u3214 {
		accu_c {Type IO LastRead 6 FirstWrite 6}
		accu_c_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf256_b {Type I LastRead 0 FirstWrite -1}}
	gf256v_mul_u3215 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "821561", "Max" : "35760953"}
	, {"Name" : "Interval", "Min" : "821561", "Max" : "35760953"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bC { ap_memory {  { bC_address0 mem_address 1 18 }  { bC_ce0 mem_ce 1 1 }  { bC_we0 mem_we 1 1 }  { bC_d0 mem_din 1 8 }  { bC_q0 mem_dout 0 8 }  { bC_address1 mem_address 1 18 }  { bC_ce1 mem_ce 1 1 }  { bC_we1 mem_we 1 1 }  { bC_d1 mem_din 1 8 }  { bC_q1 mem_dout 0 8 } } }
	btriA { ap_memory {  { btriA_address0 mem_address 1 18 }  { btriA_ce0 mem_ce 1 1 }  { btriA_q0 mem_dout 0 8 }  { btriA_address1 mem_address 1 18 }  { btriA_ce1 mem_ce 1 1 }  { btriA_q1 mem_dout 0 8 } } }
	B { ap_memory {  { B_address0 mem_address 1 13 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 8 } } }
}
