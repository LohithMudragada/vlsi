set moduleName deserializeSignature
set isTopModule 0
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
set C_modelName {deserializeSignature}
set C_modelType { int 1 }
set C_modelArgList {
	{ sig_0_proofs_seed1 int 8 regular {array 3504 { 0 3 } 0 1 }  }
	{ sig_0_proofs_seed2 int 8 regular {array 3504 { 0 3 } 0 1 }  }
	{ sig_0_proofs_inputS int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ sig_0_proofs_commun int 8 regular {array 16425 { 0 3 } 0 1 }  }
	{ sig_0_proofs_view3C int 8 regular {array 7008 { 0 3 } 0 1 }  }
	{ sig_0_challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ sig_0_salt int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ sigBytes int 8 regular {array 37336 { 1 1 } 1 1 }  }
	{ sigBytes_offset int 64 regular  }
	{ sigBytesLen int 32 regular  }
	{ params_UnruhGWithout int 7 regular  }
	{ params_transform_rea int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sig_0_proofs_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_inputS", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_commun", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_view3C", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "sig_0_salt", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sigBytes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sigBytes_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sigBytesLen", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "params_UnruhGWithout", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "params_transform_rea", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sig_0_proofs_seed1_address0 sc_out sc_lv 12 signal 0 } 
	{ sig_0_proofs_seed1_ce0 sc_out sc_logic 1 signal 0 } 
	{ sig_0_proofs_seed1_we0 sc_out sc_logic 1 signal 0 } 
	{ sig_0_proofs_seed1_d0 sc_out sc_lv 8 signal 0 } 
	{ sig_0_proofs_seed2_address0 sc_out sc_lv 12 signal 1 } 
	{ sig_0_proofs_seed2_ce0 sc_out sc_logic 1 signal 1 } 
	{ sig_0_proofs_seed2_we0 sc_out sc_logic 1 signal 1 } 
	{ sig_0_proofs_seed2_d0 sc_out sc_lv 8 signal 1 } 
	{ sig_0_proofs_inputS_address0 sc_out sc_lv 10 signal 2 } 
	{ sig_0_proofs_inputS_ce0 sc_out sc_logic 1 signal 2 } 
	{ sig_0_proofs_inputS_we0 sc_out sc_logic 1 signal 2 } 
	{ sig_0_proofs_inputS_d0 sc_out sc_lv 32 signal 2 } 
	{ sig_0_proofs_commun_address0 sc_out sc_lv 15 signal 3 } 
	{ sig_0_proofs_commun_ce0 sc_out sc_logic 1 signal 3 } 
	{ sig_0_proofs_commun_we0 sc_out sc_logic 1 signal 3 } 
	{ sig_0_proofs_commun_d0 sc_out sc_lv 8 signal 3 } 
	{ sig_0_proofs_view3C_address0 sc_out sc_lv 13 signal 4 } 
	{ sig_0_proofs_view3C_ce0 sc_out sc_logic 1 signal 4 } 
	{ sig_0_proofs_view3C_we0 sc_out sc_logic 1 signal 4 } 
	{ sig_0_proofs_view3C_d0 sc_out sc_lv 8 signal 4 } 
	{ sig_0_challengeBits_address0 sc_out sc_lv 6 signal 5 } 
	{ sig_0_challengeBits_ce0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_challengeBits_we0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_challengeBits_d0 sc_out sc_lv 8 signal 5 } 
	{ sig_0_challengeBits_q0 sc_in sc_lv 8 signal 5 } 
	{ sig_0_salt_address0 sc_out sc_lv 5 signal 6 } 
	{ sig_0_salt_ce0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_salt_we0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_salt_d0 sc_out sc_lv 8 signal 6 } 
	{ sigBytes_address0 sc_out sc_lv 16 signal 7 } 
	{ sigBytes_ce0 sc_out sc_logic 1 signal 7 } 
	{ sigBytes_q0 sc_in sc_lv 8 signal 7 } 
	{ sigBytes_address1 sc_out sc_lv 16 signal 7 } 
	{ sigBytes_ce1 sc_out sc_logic 1 signal 7 } 
	{ sigBytes_q1 sc_in sc_lv 8 signal 7 } 
	{ sigBytes_offset sc_in sc_lv 64 signal 8 } 
	{ sigBytesLen sc_in sc_lv 32 signal 9 } 
	{ params_UnruhGWithout sc_in sc_lv 7 signal 10 } 
	{ params_transform_rea sc_in sc_lv 2 signal 11 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sig_0_proofs_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_seed1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_seed2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_inputS_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_inputS_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_inputS_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_inputS_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_commun_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_commun_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_commun_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_commun_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_view3C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_view3C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_view3C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_view3C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "d0" }} , 
 	{ "name": "sig_0_challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "address0" }} , 
 	{ "name": "sig_0_challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "ce0" }} , 
 	{ "name": "sig_0_challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "we0" }} , 
 	{ "name": "sig_0_challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "d0" }} , 
 	{ "name": "sig_0_challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "q0" }} , 
 	{ "name": "sig_0_salt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "address0" }} , 
 	{ "name": "sig_0_salt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "ce0" }} , 
 	{ "name": "sig_0_salt_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "we0" }} , 
 	{ "name": "sig_0_salt_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "d0" }} , 
 	{ "name": "sigBytes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sigBytes", "role": "address0" }} , 
 	{ "name": "sigBytes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigBytes", "role": "ce0" }} , 
 	{ "name": "sigBytes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sigBytes", "role": "q0" }} , 
 	{ "name": "sigBytes_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sigBytes", "role": "address1" }} , 
 	{ "name": "sigBytes_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigBytes", "role": "ce1" }} , 
 	{ "name": "sigBytes_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sigBytes", "role": "q1" }} , 
 	{ "name": "sigBytes_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigBytes_offset", "role": "default" }} , 
 	{ "name": "sigBytesLen", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigBytesLen", "role": "default" }} , 
 	{ "name": "params_UnruhGWithout", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "params_UnruhGWithout", "role": "default" }} , 
 	{ "name": "params_transform_rea", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "params_transform_rea", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "deserializeSignature",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "40040",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigBytes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigBytes_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigBytesLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "params_UnruhGWithout", "Type" : "None", "Direction" : "I"},
			{"Name" : "params_transform_rea", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	deserializeSignature {
		sig_0_proofs_seed1 {Type O LastRead -1 FirstWrite 13}
		sig_0_proofs_seed2 {Type O LastRead -1 FirstWrite 14}
		sig_0_proofs_inputS {Type O LastRead -1 FirstWrite 17}
		sig_0_proofs_commun {Type O LastRead -1 FirstWrite 11}
		sig_0_proofs_view3C {Type O LastRead -1 FirstWrite 9}
		sig_0_challengeBits {Type IO LastRead 6 FirstWrite 4}
		sig_0_salt {Type O LastRead -1 FirstWrite 6}
		sigBytes {Type I LastRead 17 FirstWrite -1}
		sigBytes_offset {Type I LastRead 0 FirstWrite -1}
		sigBytesLen {Type I LastRead 0 FirstWrite -1}
		params_UnruhGWithout {Type I LastRead 0 FirstWrite -1}
		params_transform_rea {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "40040"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "40040"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	sig_0_proofs_seed1 { ap_memory {  { sig_0_proofs_seed1_address0 mem_address 1 12 }  { sig_0_proofs_seed1_ce0 mem_ce 1 1 }  { sig_0_proofs_seed1_we0 mem_we 1 1 }  { sig_0_proofs_seed1_d0 mem_din 1 8 } } }
	sig_0_proofs_seed2 { ap_memory {  { sig_0_proofs_seed2_address0 mem_address 1 12 }  { sig_0_proofs_seed2_ce0 mem_ce 1 1 }  { sig_0_proofs_seed2_we0 mem_we 1 1 }  { sig_0_proofs_seed2_d0 mem_din 1 8 } } }
	sig_0_proofs_inputS { ap_memory {  { sig_0_proofs_inputS_address0 mem_address 1 10 }  { sig_0_proofs_inputS_ce0 mem_ce 1 1 }  { sig_0_proofs_inputS_we0 mem_we 1 1 }  { sig_0_proofs_inputS_d0 mem_din 1 32 } } }
	sig_0_proofs_commun { ap_memory {  { sig_0_proofs_commun_address0 mem_address 1 15 }  { sig_0_proofs_commun_ce0 mem_ce 1 1 }  { sig_0_proofs_commun_we0 mem_we 1 1 }  { sig_0_proofs_commun_d0 mem_din 1 8 } } }
	sig_0_proofs_view3C { ap_memory {  { sig_0_proofs_view3C_address0 mem_address 1 13 }  { sig_0_proofs_view3C_ce0 mem_ce 1 1 }  { sig_0_proofs_view3C_we0 mem_we 1 1 }  { sig_0_proofs_view3C_d0 mem_din 1 8 } } }
	sig_0_challengeBits { ap_memory {  { sig_0_challengeBits_address0 mem_address 1 6 }  { sig_0_challengeBits_ce0 mem_ce 1 1 }  { sig_0_challengeBits_we0 mem_we 1 1 }  { sig_0_challengeBits_d0 mem_din 1 8 }  { sig_0_challengeBits_q0 mem_dout 0 8 } } }
	sig_0_salt { ap_memory {  { sig_0_salt_address0 mem_address 1 5 }  { sig_0_salt_ce0 mem_ce 1 1 }  { sig_0_salt_we0 mem_we 1 1 }  { sig_0_salt_d0 mem_din 1 8 } } }
	sigBytes { ap_memory {  { sigBytes_address0 mem_address 1 16 }  { sigBytes_ce0 mem_ce 1 1 }  { sigBytes_q0 mem_dout 0 8 }  { sigBytes_address1 MemPortADDR2 1 16 }  { sigBytes_ce1 MemPortCE2 1 1 }  { sigBytes_q1 MemPortDOUT2 0 8 } } }
	sigBytes_offset { ap_none {  { sigBytes_offset in_data 0 64 } } }
	sigBytesLen { ap_none {  { sigBytesLen in_data 0 32 } } }
	params_UnruhGWithout { ap_none {  { params_UnruhGWithout in_data 0 7 } } }
	params_transform_rea { ap_none {  { params_transform_rea in_data 0 2 } } }
}
