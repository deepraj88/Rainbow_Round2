set moduleName sha256_final
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
set C_modelName {sha256_final}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_data int 8 regular {array 64 { 2 2 } 1 1 }  }
	{ ctx_datalen_read int 32 regular  }
	{ ctx_bitlen_read int 64 regular  }
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ hash int 8 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_datalen_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_bitlen_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_data_address0 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d0 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q0 sc_in sc_lv 8 signal 0 } 
	{ ctx_data_address1 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d1 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_datalen_read sc_in sc_lv 32 signal 1 } 
	{ ctx_bitlen_read sc_in sc_lv 64 signal 2 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 3 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 3 } 
	{ hash_address0 sc_out sc_lv 5 signal 4 } 
	{ hash_ce0 sc_out sc_logic 1 signal 4 } 
	{ hash_we0 sc_out sc_logic 1 signal 4 } 
	{ hash_d0 sc_out sc_lv 8 signal 4 } 
	{ hash_address1 sc_out sc_lv 5 signal 4 } 
	{ hash_ce1 sc_out sc_logic 1 signal 4 } 
	{ hash_we1 sc_out sc_logic 1 signal 4 } 
	{ hash_d1 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address0" }} , 
 	{ "name": "ctx_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce0" }} , 
 	{ "name": "ctx_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we0" }} , 
 	{ "name": "ctx_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d0" }} , 
 	{ "name": "ctx_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q0" }} , 
 	{ "name": "ctx_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address1" }} , 
 	{ "name": "ctx_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce1" }} , 
 	{ "name": "ctx_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we1" }} , 
 	{ "name": "ctx_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d1" }} , 
 	{ "name": "ctx_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q1" }} , 
 	{ "name": "ctx_datalen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_datalen_read", "role": "default" }} , 
 	{ "name": "ctx_bitlen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx_bitlen_read", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address1" }} , 
 	{ "name": "hash_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce1" }} , 
 	{ "name": "hash_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we1" }} , 
 	{ "name": "hash_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "data"}]},
			{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_bitlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "ctx_state"}]},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.m_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sha256_final {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		ctx_datalen_read {Type I LastRead 0 FirstWrite -1}
		ctx_bitlen_read {Type I LastRead 0 FirstWrite -1}
		ctx_state {Type IO LastRead 13 FirstWrite 7}
		hash {Type O LastRead -1 FirstWrite 10}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
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
	ctx_data { ap_memory {  { ctx_data_address0 mem_address 1 6 }  { ctx_data_ce0 mem_ce 1 1 }  { ctx_data_we0 mem_we 1 1 }  { ctx_data_d0 mem_din 1 8 }  { ctx_data_q0 mem_dout 0 8 }  { ctx_data_address1 mem_address 1 6 }  { ctx_data_ce1 mem_ce 1 1 }  { ctx_data_we1 mem_we 1 1 }  { ctx_data_d1 mem_din 1 8 }  { ctx_data_q1 mem_dout 0 8 } } }
	ctx_datalen_read { ap_none {  { ctx_datalen_read in_data 0 32 } } }
	ctx_bitlen_read { ap_none {  { ctx_bitlen_read in_data 0 64 } } }
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 5 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_address1 mem_address 1 5 }  { hash_ce1 mem_ce 1 1 }  { hash_we1 mem_we 1 1 }  { hash_d1 mem_din 1 8 } } }
}
set moduleName sha256_final
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
set C_modelName {sha256_final}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_data int 8 regular {array 64 { 2 2 } 1 1 }  }
	{ ctx_datalen_read int 32 regular  }
	{ ctx_bitlen_read int 64 regular  }
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ hash int 8 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_datalen_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_bitlen_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_data_address0 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d0 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q0 sc_in sc_lv 8 signal 0 } 
	{ ctx_data_address1 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d1 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_datalen_read sc_in sc_lv 32 signal 1 } 
	{ ctx_bitlen_read sc_in sc_lv 64 signal 2 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 3 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 3 } 
	{ hash_address0 sc_out sc_lv 5 signal 4 } 
	{ hash_ce0 sc_out sc_logic 1 signal 4 } 
	{ hash_we0 sc_out sc_logic 1 signal 4 } 
	{ hash_d0 sc_out sc_lv 8 signal 4 } 
	{ hash_address1 sc_out sc_lv 5 signal 4 } 
	{ hash_ce1 sc_out sc_logic 1 signal 4 } 
	{ hash_we1 sc_out sc_logic 1 signal 4 } 
	{ hash_d1 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address0" }} , 
 	{ "name": "ctx_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce0" }} , 
 	{ "name": "ctx_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we0" }} , 
 	{ "name": "ctx_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d0" }} , 
 	{ "name": "ctx_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q0" }} , 
 	{ "name": "ctx_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address1" }} , 
 	{ "name": "ctx_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce1" }} , 
 	{ "name": "ctx_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we1" }} , 
 	{ "name": "ctx_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d1" }} , 
 	{ "name": "ctx_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q1" }} , 
 	{ "name": "ctx_datalen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_datalen_read", "role": "default" }} , 
 	{ "name": "ctx_bitlen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx_bitlen_read", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address1" }} , 
 	{ "name": "hash_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce1" }} , 
 	{ "name": "hash_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we1" }} , 
 	{ "name": "hash_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "data"}]},
			{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_bitlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "ctx_state"}]},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.m_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sha256_final {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		ctx_datalen_read {Type I LastRead 0 FirstWrite -1}
		ctx_bitlen_read {Type I LastRead 0 FirstWrite -1}
		ctx_state {Type IO LastRead 13 FirstWrite 7}
		hash {Type O LastRead -1 FirstWrite 10}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
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
	ctx_data { ap_memory {  { ctx_data_address0 mem_address 1 6 }  { ctx_data_ce0 mem_ce 1 1 }  { ctx_data_we0 mem_we 1 1 }  { ctx_data_d0 mem_din 1 8 }  { ctx_data_q0 mem_dout 0 8 }  { ctx_data_address1 mem_address 1 6 }  { ctx_data_ce1 mem_ce 1 1 }  { ctx_data_we1 mem_we 1 1 }  { ctx_data_d1 mem_din 1 8 }  { ctx_data_q1 mem_dout 0 8 } } }
	ctx_datalen_read { ap_none {  { ctx_datalen_read in_data 0 32 } } }
	ctx_bitlen_read { ap_none {  { ctx_bitlen_read in_data 0 64 } } }
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 5 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_address1 mem_address 1 5 }  { hash_ce1 mem_ce 1 1 }  { hash_we1 mem_we 1 1 }  { hash_d1 mem_din 1 8 } } }
}
set moduleName sha256_final
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
set C_modelName {sha256_final}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_data int 8 regular {array 64 { 2 2 } 1 1 }  }
	{ ctx_datalen_read int 32 regular  }
	{ ctx_bitlen_read int 64 regular  }
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ hash int 8 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_datalen_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_bitlen_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_data_address0 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d0 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q0 sc_in sc_lv 8 signal 0 } 
	{ ctx_data_address1 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d1 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_datalen_read sc_in sc_lv 32 signal 1 } 
	{ ctx_bitlen_read sc_in sc_lv 64 signal 2 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 3 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 3 } 
	{ hash_address0 sc_out sc_lv 5 signal 4 } 
	{ hash_ce0 sc_out sc_logic 1 signal 4 } 
	{ hash_we0 sc_out sc_logic 1 signal 4 } 
	{ hash_d0 sc_out sc_lv 8 signal 4 } 
	{ hash_address1 sc_out sc_lv 5 signal 4 } 
	{ hash_ce1 sc_out sc_logic 1 signal 4 } 
	{ hash_we1 sc_out sc_logic 1 signal 4 } 
	{ hash_d1 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address0" }} , 
 	{ "name": "ctx_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce0" }} , 
 	{ "name": "ctx_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we0" }} , 
 	{ "name": "ctx_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d0" }} , 
 	{ "name": "ctx_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q0" }} , 
 	{ "name": "ctx_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address1" }} , 
 	{ "name": "ctx_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce1" }} , 
 	{ "name": "ctx_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we1" }} , 
 	{ "name": "ctx_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d1" }} , 
 	{ "name": "ctx_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q1" }} , 
 	{ "name": "ctx_datalen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_datalen_read", "role": "default" }} , 
 	{ "name": "ctx_bitlen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx_bitlen_read", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address1" }} , 
 	{ "name": "hash_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce1" }} , 
 	{ "name": "hash_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we1" }} , 
 	{ "name": "hash_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "data"}]},
			{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_bitlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "ctx_state"}]},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.m_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sha256_final {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		ctx_datalen_read {Type I LastRead 0 FirstWrite -1}
		ctx_bitlen_read {Type I LastRead 0 FirstWrite -1}
		ctx_state {Type IO LastRead 13 FirstWrite 7}
		hash {Type O LastRead -1 FirstWrite 10}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
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
	ctx_data { ap_memory {  { ctx_data_address0 mem_address 1 6 }  { ctx_data_ce0 mem_ce 1 1 }  { ctx_data_we0 mem_we 1 1 }  { ctx_data_d0 mem_din 1 8 }  { ctx_data_q0 mem_dout 0 8 }  { ctx_data_address1 mem_address 1 6 }  { ctx_data_ce1 mem_ce 1 1 }  { ctx_data_we1 mem_we 1 1 }  { ctx_data_d1 mem_din 1 8 }  { ctx_data_q1 mem_dout 0 8 } } }
	ctx_datalen_read { ap_none {  { ctx_datalen_read in_data 0 32 } } }
	ctx_bitlen_read { ap_none {  { ctx_bitlen_read in_data 0 64 } } }
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 5 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_address1 mem_address 1 5 }  { hash_ce1 mem_ce 1 1 }  { hash_we1 mem_we 1 1 }  { hash_d1 mem_din 1 8 } } }
}
set moduleName sha256_final
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
set C_modelName {sha256_final}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_data int 8 regular {array 64 { 2 2 } 1 1 }  }
	{ ctx_datalen_read int 32 regular  }
	{ ctx_bitlen_read int 64 regular  }
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ hash int 8 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_datalen_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_bitlen_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_data_address0 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d0 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q0 sc_in sc_lv 8 signal 0 } 
	{ ctx_data_address1 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d1 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_datalen_read sc_in sc_lv 32 signal 1 } 
	{ ctx_bitlen_read sc_in sc_lv 64 signal 2 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 3 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 3 } 
	{ hash_address0 sc_out sc_lv 5 signal 4 } 
	{ hash_ce0 sc_out sc_logic 1 signal 4 } 
	{ hash_we0 sc_out sc_logic 1 signal 4 } 
	{ hash_d0 sc_out sc_lv 8 signal 4 } 
	{ hash_address1 sc_out sc_lv 5 signal 4 } 
	{ hash_ce1 sc_out sc_logic 1 signal 4 } 
	{ hash_we1 sc_out sc_logic 1 signal 4 } 
	{ hash_d1 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address0" }} , 
 	{ "name": "ctx_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce0" }} , 
 	{ "name": "ctx_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we0" }} , 
 	{ "name": "ctx_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d0" }} , 
 	{ "name": "ctx_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q0" }} , 
 	{ "name": "ctx_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address1" }} , 
 	{ "name": "ctx_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce1" }} , 
 	{ "name": "ctx_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we1" }} , 
 	{ "name": "ctx_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d1" }} , 
 	{ "name": "ctx_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q1" }} , 
 	{ "name": "ctx_datalen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_datalen_read", "role": "default" }} , 
 	{ "name": "ctx_bitlen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx_bitlen_read", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address1" }} , 
 	{ "name": "hash_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce1" }} , 
 	{ "name": "hash_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we1" }} , 
 	{ "name": "hash_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "data"}]},
			{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_bitlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "ctx_state"}]},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.m_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sha256_final {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		ctx_datalen_read {Type I LastRead 0 FirstWrite -1}
		ctx_bitlen_read {Type I LastRead 0 FirstWrite -1}
		ctx_state {Type IO LastRead 13 FirstWrite 7}
		hash {Type O LastRead -1 FirstWrite 10}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
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
	ctx_data { ap_memory {  { ctx_data_address0 mem_address 1 6 }  { ctx_data_ce0 mem_ce 1 1 }  { ctx_data_we0 mem_we 1 1 }  { ctx_data_d0 mem_din 1 8 }  { ctx_data_q0 mem_dout 0 8 }  { ctx_data_address1 mem_address 1 6 }  { ctx_data_ce1 mem_ce 1 1 }  { ctx_data_we1 mem_we 1 1 }  { ctx_data_d1 mem_din 1 8 }  { ctx_data_q1 mem_dout 0 8 } } }
	ctx_datalen_read { ap_none {  { ctx_datalen_read in_data 0 32 } } }
	ctx_bitlen_read { ap_none {  { ctx_bitlen_read in_data 0 64 } } }
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 5 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_address1 mem_address 1 5 }  { hash_ce1 mem_ce 1 1 }  { hash_we1 mem_we 1 1 }  { hash_d1 mem_din 1 8 } } }
}
set moduleName sha256_final
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
set C_modelName {sha256_final}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_data int 8 regular {array 64 { 2 2 } 1 1 }  }
	{ ctx_datalen_read int 32 regular  }
	{ ctx_bitlen_read int 64 regular  }
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ hash int 8 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_datalen_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_bitlen_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_data_address0 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d0 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q0 sc_in sc_lv 8 signal 0 } 
	{ ctx_data_address1 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d1 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_datalen_read sc_in sc_lv 32 signal 1 } 
	{ ctx_bitlen_read sc_in sc_lv 64 signal 2 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 3 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 3 } 
	{ hash_address0 sc_out sc_lv 5 signal 4 } 
	{ hash_ce0 sc_out sc_logic 1 signal 4 } 
	{ hash_we0 sc_out sc_logic 1 signal 4 } 
	{ hash_d0 sc_out sc_lv 8 signal 4 } 
	{ hash_address1 sc_out sc_lv 5 signal 4 } 
	{ hash_ce1 sc_out sc_logic 1 signal 4 } 
	{ hash_we1 sc_out sc_logic 1 signal 4 } 
	{ hash_d1 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address0" }} , 
 	{ "name": "ctx_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce0" }} , 
 	{ "name": "ctx_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we0" }} , 
 	{ "name": "ctx_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d0" }} , 
 	{ "name": "ctx_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q0" }} , 
 	{ "name": "ctx_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address1" }} , 
 	{ "name": "ctx_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce1" }} , 
 	{ "name": "ctx_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we1" }} , 
 	{ "name": "ctx_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d1" }} , 
 	{ "name": "ctx_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q1" }} , 
 	{ "name": "ctx_datalen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_datalen_read", "role": "default" }} , 
 	{ "name": "ctx_bitlen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx_bitlen_read", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address1" }} , 
 	{ "name": "hash_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce1" }} , 
 	{ "name": "hash_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we1" }} , 
 	{ "name": "hash_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "data"}]},
			{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_bitlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "ctx_state"}]},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.m_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sha256_final {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		ctx_datalen_read {Type I LastRead 0 FirstWrite -1}
		ctx_bitlen_read {Type I LastRead 0 FirstWrite -1}
		ctx_state {Type IO LastRead 13 FirstWrite 7}
		hash {Type O LastRead -1 FirstWrite 10}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
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
	ctx_data { ap_memory {  { ctx_data_address0 mem_address 1 6 }  { ctx_data_ce0 mem_ce 1 1 }  { ctx_data_we0 mem_we 1 1 }  { ctx_data_d0 mem_din 1 8 }  { ctx_data_q0 mem_dout 0 8 }  { ctx_data_address1 mem_address 1 6 }  { ctx_data_ce1 mem_ce 1 1 }  { ctx_data_we1 mem_we 1 1 }  { ctx_data_d1 mem_din 1 8 }  { ctx_data_q1 mem_dout 0 8 } } }
	ctx_datalen_read { ap_none {  { ctx_datalen_read in_data 0 32 } } }
	ctx_bitlen_read { ap_none {  { ctx_bitlen_read in_data 0 64 } } }
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 5 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_address1 mem_address 1 5 }  { hash_ce1 mem_ce 1 1 }  { hash_we1 mem_we 1 1 }  { hash_d1 mem_din 1 8 } } }
}
set moduleName sha256_final
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
set C_modelName {sha256_final}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_data int 8 regular {array 64 { 2 2 } 1 1 }  }
	{ ctx_datalen_read int 32 regular  }
	{ ctx_bitlen_read int 64 regular  }
	{ ctx_state int 32 regular {array 8 { 2 2 } 1 1 }  }
	{ hash int 8 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_datalen_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_bitlen_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "hash", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ctx_data_address0 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we0 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d0 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q0 sc_in sc_lv 8 signal 0 } 
	{ ctx_data_address1 sc_out sc_lv 6 signal 0 } 
	{ ctx_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_we1 sc_out sc_logic 1 signal 0 } 
	{ ctx_data_d1 sc_out sc_lv 8 signal 0 } 
	{ ctx_data_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_datalen_read sc_in sc_lv 32 signal 1 } 
	{ ctx_bitlen_read sc_in sc_lv 64 signal 2 } 
	{ ctx_state_address0 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we0 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d0 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q0 sc_in sc_lv 32 signal 3 } 
	{ ctx_state_address1 sc_out sc_lv 3 signal 3 } 
	{ ctx_state_ce1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_we1 sc_out sc_logic 1 signal 3 } 
	{ ctx_state_d1 sc_out sc_lv 32 signal 3 } 
	{ ctx_state_q1 sc_in sc_lv 32 signal 3 } 
	{ hash_address0 sc_out sc_lv 5 signal 4 } 
	{ hash_ce0 sc_out sc_logic 1 signal 4 } 
	{ hash_we0 sc_out sc_logic 1 signal 4 } 
	{ hash_d0 sc_out sc_lv 8 signal 4 } 
	{ hash_address1 sc_out sc_lv 5 signal 4 } 
	{ hash_ce1 sc_out sc_logic 1 signal 4 } 
	{ hash_we1 sc_out sc_logic 1 signal 4 } 
	{ hash_d1 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ctx_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address0" }} , 
 	{ "name": "ctx_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce0" }} , 
 	{ "name": "ctx_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we0" }} , 
 	{ "name": "ctx_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d0" }} , 
 	{ "name": "ctx_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q0" }} , 
 	{ "name": "ctx_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ctx_data", "role": "address1" }} , 
 	{ "name": "ctx_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "ce1" }} , 
 	{ "name": "ctx_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_data", "role": "we1" }} , 
 	{ "name": "ctx_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "d1" }} , 
 	{ "name": "ctx_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_data", "role": "q1" }} , 
 	{ "name": "ctx_datalen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_datalen_read", "role": "default" }} , 
 	{ "name": "ctx_bitlen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ctx_bitlen_read", "role": "default" }} , 
 	{ "name": "ctx_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address0" }} , 
 	{ "name": "ctx_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce0" }} , 
 	{ "name": "ctx_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we0" }} , 
 	{ "name": "ctx_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d0" }} , 
 	{ "name": "ctx_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q0" }} , 
 	{ "name": "ctx_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_state", "role": "address1" }} , 
 	{ "name": "ctx_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "ce1" }} , 
 	{ "name": "ctx_state_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_state", "role": "we1" }} , 
 	{ "name": "ctx_state_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "d1" }} , 
 	{ "name": "ctx_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_state", "role": "q1" }} , 
 	{ "name": "hash_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address0" }} , 
 	{ "name": "hash_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce0" }} , 
 	{ "name": "hash_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we0" }} , 
 	{ "name": "hash_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d0" }} , 
 	{ "name": "hash_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "hash", "role": "address1" }} , 
 	{ "name": "hash_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "ce1" }} , 
 	{ "name": "hash_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash", "role": "we1" }} , 
 	{ "name": "hash_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hash", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_453"}],
		"Port" : [
			{"Name" : "ctx_data", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "data"}]},
			{"Name" : "ctx_datalen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_bitlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "ctx_state"}]},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_transform_fu_453", "Port" : "k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "442", "EstimateLatencyMax" : "442",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_453.m_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sha256_final {
		ctx_data {Type IO LastRead 3 FirstWrite -1}
		ctx_datalen_read {Type I LastRead 0 FirstWrite -1}
		ctx_bitlen_read {Type I LastRead 0 FirstWrite -1}
		ctx_state {Type IO LastRead 13 FirstWrite 7}
		hash {Type O LastRead -1 FirstWrite 10}
		k {Type I LastRead -1 FirstWrite -1}}
	sha256_transform {
		ctx_state {Type IO LastRead 6 FirstWrite 7}
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
	ctx_data { ap_memory {  { ctx_data_address0 mem_address 1 6 }  { ctx_data_ce0 mem_ce 1 1 }  { ctx_data_we0 mem_we 1 1 }  { ctx_data_d0 mem_din 1 8 }  { ctx_data_q0 mem_dout 0 8 }  { ctx_data_address1 mem_address 1 6 }  { ctx_data_ce1 mem_ce 1 1 }  { ctx_data_we1 mem_we 1 1 }  { ctx_data_d1 mem_din 1 8 }  { ctx_data_q1 mem_dout 0 8 } } }
	ctx_datalen_read { ap_none {  { ctx_datalen_read in_data 0 32 } } }
	ctx_bitlen_read { ap_none {  { ctx_bitlen_read in_data 0 64 } } }
	ctx_state { ap_memory {  { ctx_state_address0 mem_address 1 3 }  { ctx_state_ce0 mem_ce 1 1 }  { ctx_state_we0 mem_we 1 1 }  { ctx_state_d0 mem_din 1 32 }  { ctx_state_q0 mem_dout 0 32 }  { ctx_state_address1 mem_address 1 3 }  { ctx_state_ce1 mem_ce 1 1 }  { ctx_state_we1 mem_we 1 1 }  { ctx_state_d1 mem_din 1 32 }  { ctx_state_q1 mem_dout 0 32 } } }
	hash { ap_memory {  { hash_address0 mem_address 1 5 }  { hash_ce0 mem_ce 1 1 }  { hash_we0 mem_we 1 1 }  { hash_d0 mem_din 1 8 }  { hash_address1 mem_address 1 5 }  { hash_ce1 mem_ce 1 1 }  { hash_we1 mem_we 1 1 }  { hash_d1 mem_din 1 8 } } }
}
