set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "10", "13"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_final_fu_230"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_248"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_update_fu_260"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_248", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_248", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_sha256_final_fu_230", "Port" : "k"},
					{"ID" : "13", "SubInstance" : "grp_sha256_update_fu_260", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_230", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "sha256_final",
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_520"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_520"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_transform_fu_520", "Port" : "data"}]},
			{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_bitlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_transform_fu_520", "Port" : "k"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_230.grp_sha256_transform_fu_520", "Parent" : "6", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_230.grp_sha256_transform_fu_520.k_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_final_fu_230.grp_sha256_transform_fu_520.m_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_248", "Parent" : "0", "Child" : ["11", "12"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_248.tmp_63_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_248.p_x_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_update_fu_260", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "sha256_update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "21073",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_128"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sha256_transform_fu_128", "Port" : "data"}]},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sha256_transform_fu_128", "Port" : "k"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_update_fu_260.grp_sha256_transform_fu_128", "Parent" : "13", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_update_fu_260.grp_sha256_transform_fu_128.k_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_update_fu_260.grp_sha256_transform_fu_128.m_U", "Parent" : "14"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 2 FirstWrite -1}
		signature {Type I LastRead 3 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 10 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_final {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		ctx_datalen_read {Type I LastRead 0 FirstWrite -1}
		ctx_bitlen_read {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		hash {Type O LastRead -1 FirstWrite 9}
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
	batch_quad_trimat_ev {
		y {Type IO LastRead 9 FirstWrite 2}
		trimat {Type I LastRead 10 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	sha256_update {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		data {Type I LastRead 1 FirstWrite -1}
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
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_224"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_232"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_232", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_232", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_p_hash_fu_224", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_224", "Parent" : "0", "Child" : ["6", "7"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_224.sha256_data_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_224.grp_sha256_transform_fu_530", "Parent" : "5", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_224.grp_sha256_transform_fu_530.k_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_224.grp_sha256_transform_fu_530.m_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_232", "Parent" : "0", "Child" : ["11", "12"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_232.tmp_72_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_232.p_x_U", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 2 FirstWrite -1}
		signature {Type I LastRead 3 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 10 FirstWrite -1}
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
		k {Type I LastRead -1 FirstWrite -1}}
	batch_quad_trimat_ev {
		y {Type IO LastRead 9 FirstWrite 2}
		trimat {Type I LastRead 10 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_304"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_312"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_312", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_312", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_p_hash_fu_304", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_304", "Parent" : "0", "Child" : ["6", "7"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_304.sha256_data_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_304.grp_sha256_transform_fu_530", "Parent" : "5", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_304.grp_sha256_transform_fu_530.k_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_304.grp_sha256_transform_fu_530.m_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_312", "Parent" : "0", "Child" : ["11", "12", "13"],
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
					{"ID" : "13", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_507", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_312.tmp_57_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_312.p_x_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_312.grp_p_gf16v_madd_u3211_1_fu_507", "Parent" : "10",
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
	rainbow_verify {
		digest {Type I LastRead 3 FirstWrite -1}
		signature {Type I LastRead 4 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 4 FirstWrite -1}
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
		k {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_400"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_408"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_408", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_408", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_p_hash_fu_400", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_400", "Parent" : "0", "Child" : ["6", "7"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_400.sha256_data_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_400.grp_sha256_transform_fu_530", "Parent" : "5", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_400.grp_sha256_transform_fu_530.k_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_400.grp_sha256_transform_fu_530.m_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_408", "Parent" : "0", "Child" : ["11", "12", "13"],
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
					{"ID" : "13", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_521", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_408.tmp_57_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_408.p_x_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_408.grp_p_gf16v_madd_u3211_1_fu_521", "Parent" : "10",
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
	rainbow_verify {
		digest {Type I LastRead 4 FirstWrite -1}
		signature {Type I LastRead 5 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 4 FirstWrite -1}
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
		k {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_592"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_600"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_600", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_batch_quad_trimat_ev_fu_600", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_p_hash_fu_592", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_592", "Parent" : "0", "Child" : ["6", "7"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_592.sha256_data_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_592.grp_sha256_transform_fu_530", "Parent" : "5", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_592.grp_sha256_transform_fu_530.k_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_592.grp_sha256_transform_fu_530.m_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_600", "Parent" : "0", "Child" : ["11", "12", "13"],
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
					{"ID" : "13", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_559", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_600.tmp_62_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_600.p_x_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_600.grp_p_gf16v_madd_u3211_1_fu_559", "Parent" : "10",
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
	rainbow_verify {
		digest {Type I LastRead 6 FirstWrite -1}
		signature {Type I LastRead 7 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 4 FirstWrite -1}
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
		k {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_992"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_1004"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_992", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_992", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_p_hash_fu_1004", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_992", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_631", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_992.tmp_57_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_992.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_992.grp_p_gf16v_madd_u3211_1_fu_631", "Parent" : "5",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1004", "Parent" : "0", "Child" : ["10", "11"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1004.sha256_data_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1004.grp_sha256_transform_fu_530", "Parent" : "9", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1004.grp_sha256_transform_fu_530.k_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1004.grp_sha256_transform_fu_530.m_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 10 FirstWrite -1}
		signature {Type I LastRead 10 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 4 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	batch_quad_trimat_ev {
		y {Type IO LastRead 40 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}
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
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_1583"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_p_hash_fu_1583", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_777", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.tmp_69_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_777", "Parent" : "5",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583", "Parent" : "0", "Child" : ["10", "11"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.sha256_data_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530", "Parent" : "9", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.k_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.m_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 16 FirstWrite -1}
		signature {Type I LastRead 24 FirstWrite -1}
		signature_offset {Type I LastRead 14 FirstWrite -1}
		pk {Type I LastRead 4 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	batch_quad_trimat_ev {
		y {Type IO LastRead 72 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}
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
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_1583"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_p_hash_fu_1583", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1129", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.tmp_69_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_1129", "Parent" : "5",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583", "Parent" : "0", "Child" : ["10", "11"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.sha256_data_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530", "Parent" : "9", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.k_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.m_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 16 FirstWrite -1}
		signature {Type I LastRead 24 FirstWrite -1}
		signature_offset {Type I LastRead 14 FirstWrite -1}
		pk {Type I LastRead 4 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	batch_quad_trimat_ev {
		y {Type IO LastRead 136 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}
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
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_1583"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_p_hash_fu_1583", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1829", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.tmp_69_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_1829", "Parent" : "5",
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
			{"Name" : "gf16_b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583", "Parent" : "0", "Child" : ["10", "11"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.sha256_data_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530", "Parent" : "9", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.k_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.m_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 16 FirstWrite -1}
		signature {Type I LastRead 24 FirstWrite -1}
		signature_offset {Type I LastRead 14 FirstWrite -1}
		pk {Type I LastRead 4 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
	batch_quad_trimat_ev {
		y {Type IO LastRead 264 FirstWrite 2}
		trimat {Type I LastRead 4 FirstWrite -1}
		x {Type I LastRead 1 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	p_gf16v_madd_u3211_1 {
		accu_c {Type IO LastRead 4 FirstWrite 5}
		a {Type I LastRead 4 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		gf16_b {Type I LastRead 0 FirstWrite -1}}
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
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 3 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_237"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_249"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_237", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_237", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_hash_fu_249", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_237", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_502", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_237.tmp_72_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_237.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_237.grp_p_gf16v_madd_u3211_1_fu_502", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_237.grp_p_gf16v_madd_u3211_1_fu_502.grp_gf16v_mul_u3215_fu_748", "Parent" : "8",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_249", "Parent" : "0", "Child" : ["11", "12"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_249.sha256_data_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_249.grp_sha256_transform_fu_530", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_249.grp_sha256_transform_fu_530.k_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_249.grp_sha256_transform_fu_530.m_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 2 FirstWrite -1}
		signature {Type I LastRead 4 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 16 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_317"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_329"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_317", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_317", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_hash_fu_329", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_317", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_517", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_317.tmp_74_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_317.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_317.grp_p_gf16v_madd_u3211_1_fu_517", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_317.grp_p_gf16v_madd_u3211_1_fu_517.grp_gf16v_mul_u3215_fu_748", "Parent" : "8",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_329", "Parent" : "0", "Child" : ["11", "12"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_329.sha256_data_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_329.grp_sha256_transform_fu_530", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_329.grp_sha256_transform_fu_530.k_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_329.grp_sha256_transform_fu_530.m_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 3 FirstWrite -1}
		signature {Type I LastRead 5 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 16 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_416"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_428"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_416", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_416", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_hash_fu_428", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_416", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_531", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_416.tmp_77_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_416.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_416.grp_p_gf16v_madd_u3211_1_fu_531", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_416.grp_p_gf16v_madd_u3211_1_fu_531.grp_gf16v_mul_u3215_fu_748", "Parent" : "8",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_428", "Parent" : "0", "Child" : ["11", "12"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_428.sha256_data_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_428.grp_sha256_transform_fu_530", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_428.grp_sha256_transform_fu_530.k_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_428.grp_sha256_transform_fu_530.m_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 4 FirstWrite -1}
		signature {Type I LastRead 6 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 16 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_608"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_620"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_608", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_608", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_hash_fu_620", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_608", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_569", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_608.tmp_80_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_608.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_608.grp_p_gf16v_madd_u3211_1_fu_569", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_608.grp_p_gf16v_madd_u3211_1_fu_569.grp_gf16v_mul_u3215_fu_748", "Parent" : "8",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_620", "Parent" : "0", "Child" : ["11", "12"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_620.sha256_data_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_620.grp_sha256_transform_fu_530", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_620.grp_sha256_transform_fu_530.k_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_620.grp_sha256_transform_fu_530.m_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 6 FirstWrite -1}
		signature {Type I LastRead 8 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 16 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1008"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_1020"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1008", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1008", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_hash_fu_1020", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1008", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_637", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1008.tmp_75_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1008.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1008.grp_p_gf16v_madd_u3211_1_fu_637", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1008.grp_p_gf16v_madd_u3211_1_fu_637.grp_gf16v_mul_u3215_fu_748", "Parent" : "8",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1020", "Parent" : "0", "Child" : ["11", "12"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1020.sha256_data_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1020.grp_sha256_transform_fu_530", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1020.grp_sha256_transform_fu_530.k_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1020.grp_sha256_transform_fu_530.m_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 10 FirstWrite -1}
		signature {Type I LastRead 11 FirstWrite -1}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		pk {Type I LastRead 16 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_1583"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_hash_fu_1583", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_783", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.tmp_86_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_783", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_783.grp_gf16v_mul_u3215_fu_748", "Parent" : "8",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583", "Parent" : "0", "Child" : ["11", "12"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.sha256_data_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.k_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.m_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 16 FirstWrite -1}
		signature {Type I LastRead 24 FirstWrite -1}
		signature_offset {Type I LastRead 14 FirstWrite -1}
		pk {Type I LastRead 16 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
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
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_1583"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_hash_fu_1583", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1135", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.tmp_86_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_1135", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_1135.grp_gf16v_mul_u3215_fu_748", "Parent" : "8",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583", "Parent" : "0", "Child" : ["11", "12"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.sha256_data_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.k_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.m_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 16 FirstWrite -1}
		signature {Type I LastRead 24 FirstWrite -1}
		signature_offset {Type I LastRead 14 FirstWrite -1}
		pk {Type I LastRead 16 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
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
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
set moduleName rainbow_verify
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
set C_modelName {rainbow_verify}
set C_modelType { int 1 }
set C_modelArgList {
	{ digest int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ signature int 8 regular {array 3364 { 1 1 } 1 1 }  }
	{ signature_offset int 64 regular  }
	{ pk int 8 regular {array 148992 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "digest", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ digest_address0 sc_out sc_lv 5 signal 0 } 
	{ digest_ce0 sc_out sc_logic 1 signal 0 } 
	{ digest_q0 sc_in sc_lv 8 signal 0 } 
	{ digest_address1 sc_out sc_lv 5 signal 0 } 
	{ digest_ce1 sc_out sc_logic 1 signal 0 } 
	{ digest_q1 sc_in sc_lv 8 signal 0 } 
	{ signature_address0 sc_out sc_lv 12 signal 1 } 
	{ signature_ce0 sc_out sc_logic 1 signal 1 } 
	{ signature_q0 sc_in sc_lv 8 signal 1 } 
	{ signature_address1 sc_out sc_lv 12 signal 1 } 
	{ signature_ce1 sc_out sc_logic 1 signal 1 } 
	{ signature_q1 sc_in sc_lv 8 signal 1 } 
	{ signature_offset sc_in sc_lv 64 signal 2 } 
	{ pk_address0 sc_out sc_lv 18 signal 3 } 
	{ pk_ce0 sc_out sc_logic 1 signal 3 } 
	{ pk_q0 sc_in sc_lv 8 signal 3 } 
	{ pk_address1 sc_out sc_lv 18 signal 3 } 
	{ pk_ce1 sc_out sc_logic 1 signal 3 } 
	{ pk_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "digest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address0" }} , 
 	{ "name": "digest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce0" }} , 
 	{ "name": "digest_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q0" }} , 
 	{ "name": "digest_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "digest", "role": "address1" }} , 
 	{ "name": "digest_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "digest", "role": "ce1" }} , 
 	{ "name": "digest_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "digest", "role": "q1" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q0" }} , 
 	{ "name": "signature_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "signature", "role": "address1" }} , 
 	{ "name": "signature_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce1" }} , 
 	{ "name": "signature_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "q1" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10"],
		"CDFG" : "rainbow_verify",
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
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_hash_fu_1583"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "x"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_batch_quad_trimat_ev_fu_1572", "Port" : "trimat"}]},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_hash_fu_1583", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_ck_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.digest_salt_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572", "Parent" : "0", "Child" : ["6", "7", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_p_gf16v_madd_u3211_1_fu_1835", "Port" : "a"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.tmp_86_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.p_x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_1835", "Parent" : "5", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_batch_quad_trimat_ev_fu_1572.grp_p_gf16v_madd_u3211_1_fu_1835.grp_gf16v_mul_u3215_fu_748", "Parent" : "8",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583", "Parent" : "0", "Child" : ["11", "12"],
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
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_530"}],
		"Port" : [
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_transform_fu_530", "Port" : "k"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.sha256_data_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.k_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_hash_fu_1583.grp_sha256_transform_fu_530.m_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	rainbow_verify {
		digest {Type I LastRead 16 FirstWrite -1}
		signature {Type I LastRead 24 FirstWrite -1}
		signature_offset {Type I LastRead 14 FirstWrite -1}
		pk {Type I LastRead 16 FirstWrite -1}
		k {Type I LastRead -1 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}
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
	digest { ap_memory {  { digest_address0 mem_address 1 5 }  { digest_ce0 mem_ce 1 1 }  { digest_q0 mem_dout 0 8 }  { digest_address1 mem_address 1 5 }  { digest_ce1 mem_ce 1 1 }  { digest_q1 mem_dout 0 8 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 12 }  { signature_ce0 mem_ce 1 1 }  { signature_q0 mem_dout 0 8 }  { signature_address1 mem_address 1 12 }  { signature_ce1 mem_ce 1 1 }  { signature_q1 mem_dout 0 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 18 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 8 }  { pk_address1 mem_address 1 18 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 8 } } }
}
