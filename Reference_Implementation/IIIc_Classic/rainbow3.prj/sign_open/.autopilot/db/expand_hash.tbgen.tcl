set moduleName expand_hash
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
set C_modelName {expand_hash}
set C_modelType { void 0 }
set C_modelArgList {
	{ digest int 8 regular {array 72 { 2 3 } 1 1 }  }
	{ hash int 8 regular {array 32 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 7 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_we0 sc_out sc_logic 1 signal 0 } 
	{ digest_d0 sc_out sc_lv 8 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ hash_address0 sc_out sc_lv 5 signal 1 } 
	{ hash_ce0 sc_out sc_logic 1 signal 1 } 
	{ hash_q0 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "we0" }} , 
 	{ "name": "digest_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "d0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7"],
		"CDFG" : "expand_hash",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_4_fu_142"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_153"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_p_hash_fu_153", "Port" : "m"},
					{"ID" : "2", "SubInstance" : "grp_p_hash_4_fu_142", "Port" : "m"}]},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_p_hash_fu_153", "Port" : "k"},
					{"ID" : "2", "SubInstance" : "grp_p_hash_4_fu_142", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_4_fu_142", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "p_hash_4",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_525"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_525"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_525"}],
		"Port" : [
			{"Name" : "m", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "digest_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sha256_transform_fu_525", "Port" : "k"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_4_fu_142.sha256_data_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_4_fu_142.grp_sha256_transform_fu_525", "Parent" : "2", "Child" : ["5", "6"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "435", "EstimateLatencyMax" : "435",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_4_fu_142.grp_sha256_transform_fu_525.k_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_4_fu_142.grp_sha256_transform_fu_525.m_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_153", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "p_hash",
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_518"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_518"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_518"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_sha256_transform_fu_518", "Port" : "k"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_153.sha256_data_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_153.grp_sha256_transform_fu_518", "Parent" : "7", "Child" : ["10", "11"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "435", "EstimateLatencyMax" : "435",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_153.grp_sha256_transform_fu_518.k_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_153.grp_sha256_transform_fu_518.m_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	expand_hash {
		digest {Type IO LastRead 1 FirstWrite -1}
		hash {Type I LastRead 1 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	p_hash_4 {
		m {Type IO LastRead 1 FirstWrite 10}
		digest_offset {Type I LastRead 0 FirstWrite -1}
		m_offset {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state_0_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_1_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_2_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_3_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_4_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_5_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_6_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_7_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	p_hash {
		digest {Type O LastRead -1 FirstWrite 10}
		m {Type I LastRead 1 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state_0_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_1_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_2_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_3_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_4_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_5_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_6_read {Type I LastRead 0 FirstWrite -1}
		ctx_state_7_read {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 3 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 7 }  { digest_ce0 mem_ce 1 1 }  { digest_we0 mem_we 1 1 }  { digest_d0 mem_din 1 8 }  { digest_q0 mem_dout 0 8 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 5 }  { hash_ce0 mem_ce 1 1 }  { hash_q0 mem_dout 0 8 } } }
}