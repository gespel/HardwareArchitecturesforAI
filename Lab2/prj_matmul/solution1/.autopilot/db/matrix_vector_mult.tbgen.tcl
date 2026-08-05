set moduleName matrix_vector_mult
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {matrix_vector_mult}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat int 32 regular {array 9 { 1 3 } 1 1 }  }
	{ vec int 32 regular {array 3 { 1 3 } 1 1 }  }
	{ result int 32 regular {array 3 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mat","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "vec", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "vec","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "result", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_address0 sc_out sc_lv 4 signal 0 } 
	{ mat_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_q0 sc_in sc_lv 32 signal 0 } 
	{ vec_address0 sc_out sc_lv 2 signal 1 } 
	{ vec_ce0 sc_out sc_logic 1 signal 1 } 
	{ vec_q0 sc_in sc_lv 32 signal 1 } 
	{ result_address0 sc_out sc_lv 2 signal 2 } 
	{ result_ce0 sc_out sc_logic 1 signal 2 } 
	{ result_we0 sc_out sc_logic 1 signal 2 } 
	{ result_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mat", "role": "address0" }} , 
 	{ "name": "mat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat", "role": "ce0" }} , 
 	{ "name": "mat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat", "role": "q0" }} , 
 	{ "name": "vec_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vec", "role": "address0" }} , 
 	{ "name": "vec_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec", "role": "ce0" }} , 
 	{ "name": "vec_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec", "role": "q0" }} , 
 	{ "name": "result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "result", "role": "address0" }} , 
 	{ "name": "result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ce0" }} , 
 	{ "name": "result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "we0" }} , 
 	{ "name": "result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "matrix_vector_mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mat", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "result", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	matrix_vector_mult {
		mat {Type I LastRead 2 FirstWrite -1}
		vec {Type I LastRead 2 FirstWrite -1}
		result {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat { ap_memory {  { mat_address0 mem_address 1 4 }  { mat_ce0 mem_ce 1 1 }  { mat_q0 mem_dout 0 32 } } }
	vec { ap_memory {  { vec_address0 mem_address 1 2 }  { vec_ce0 mem_ce 1 1 }  { vec_q0 mem_dout 0 32 } } }
	result { ap_memory {  { result_address0 mem_address 1 2 }  { result_ce0 mem_ce 1 1 }  { result_we0 mem_we 1 1 }  { result_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
