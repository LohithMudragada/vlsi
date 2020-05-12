set moduleName mpc_AND_verify_2
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
set C_modelName {mpc_AND_verify_2}
set C_modelType { int 48 }
set C_modelArgList {
	{ in1_0_read int 8 regular  }
	{ in1_1_read int 8 regular  }
	{ in2_0_read int 8 regular  }
	{ in2_1_read int 8 regular  }
	{ rand_0_tape int 8 regular {array 498 { 1 1 } 1 1 }  }
	{ rand_0_pos_read int 32 regular  }
	{ view1_communicatedBi int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view1_communicatedBits_offset int 8 regular  }
	{ view2_communicatedBi int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view2_communicatedBits_offset int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in1_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in2_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in2_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rand_0_tape", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rand_0_pos_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view1_communicatedBi", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view2_communicatedBi", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view2_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 48} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_0_read sc_in sc_lv 8 signal 0 } 
	{ in1_1_read sc_in sc_lv 8 signal 1 } 
	{ in2_0_read sc_in sc_lv 8 signal 2 } 
	{ in2_1_read sc_in sc_lv 8 signal 3 } 
	{ rand_0_tape_address0 sc_out sc_lv 9 signal 4 } 
	{ rand_0_tape_ce0 sc_out sc_logic 1 signal 4 } 
	{ rand_0_tape_q0 sc_in sc_lv 8 signal 4 } 
	{ rand_0_tape_address1 sc_out sc_lv 9 signal 4 } 
	{ rand_0_tape_ce1 sc_out sc_logic 1 signal 4 } 
	{ rand_0_tape_q1 sc_in sc_lv 8 signal 4 } 
	{ rand_0_pos_read sc_in sc_lv 32 signal 5 } 
	{ view1_communicatedBi_address0 sc_out sc_lv 15 signal 6 } 
	{ view1_communicatedBi_ce0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBi_we0 sc_out sc_logic 1 signal 6 } 
	{ view1_communicatedBi_d0 sc_out sc_lv 8 signal 6 } 
	{ view1_communicatedBi_q0 sc_in sc_lv 8 signal 6 } 
	{ view1_communicatedBits_offset sc_in sc_lv 8 signal 7 } 
	{ view2_communicatedBi_address0 sc_out sc_lv 15 signal 8 } 
	{ view2_communicatedBi_ce0 sc_out sc_logic 1 signal 8 } 
	{ view2_communicatedBi_q0 sc_in sc_lv 8 signal 8 } 
	{ view2_communicatedBits_offset sc_in sc_lv 8 signal 9 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in1_0_read", "role": "default" }} , 
 	{ "name": "in1_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in1_1_read", "role": "default" }} , 
 	{ "name": "in2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2_0_read", "role": "default" }} , 
 	{ "name": "in2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2_1_read", "role": "default" }} , 
 	{ "name": "rand_0_tape_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rand_0_tape", "role": "address0" }} , 
 	{ "name": "rand_0_tape_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rand_0_tape", "role": "ce0" }} , 
 	{ "name": "rand_0_tape_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rand_0_tape", "role": "q0" }} , 
 	{ "name": "rand_0_tape_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rand_0_tape", "role": "address1" }} , 
 	{ "name": "rand_0_tape_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rand_0_tape", "role": "ce1" }} , 
 	{ "name": "rand_0_tape_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rand_0_tape", "role": "q1" }} , 
 	{ "name": "rand_0_pos_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_0_pos_read", "role": "default" }} , 
 	{ "name": "view1_communicatedBi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "address0" }} , 
 	{ "name": "view1_communicatedBi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "ce0" }} , 
 	{ "name": "view1_communicatedBi_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "we0" }} , 
 	{ "name": "view1_communicatedBi_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "d0" }} , 
 	{ "name": "view1_communicatedBi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "q0" }} , 
 	{ "name": "view1_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "view2_communicatedBi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view2_communicatedBi", "role": "address0" }} , 
 	{ "name": "view2_communicatedBi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBi", "role": "ce0" }} , 
 	{ "name": "view2_communicatedBi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBi", "role": "q0" }} , 
 	{ "name": "view2_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mpc_AND_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_0_tape", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rand_0_pos_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "view1_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view2_communicatedBits_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_g8j_U71", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_g8j_U72", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mpc_AND_verify_2 {
		in1_0_read {Type I LastRead 1 FirstWrite -1}
		in1_1_read {Type I LastRead 1 FirstWrite -1}
		in2_0_read {Type I LastRead 1 FirstWrite -1}
		in2_1_read {Type I LastRead 1 FirstWrite -1}
		rand_0_tape {Type I LastRead 1 FirstWrite -1}
		rand_0_pos_read {Type I LastRead 0 FirstWrite -1}
		view1_communicatedBi {Type IO LastRead 1 FirstWrite 2}
		view1_communicatedBits_offset {Type I LastRead 1 FirstWrite -1}
		view2_communicatedBi {Type I LastRead 1 FirstWrite -1}
		view2_communicatedBits_offset {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1_0_read { ap_none {  { in1_0_read in_data 0 8 } } }
	in1_1_read { ap_none {  { in1_1_read in_data 0 8 } } }
	in2_0_read { ap_none {  { in2_0_read in_data 0 8 } } }
	in2_1_read { ap_none {  { in2_1_read in_data 0 8 } } }
	rand_0_tape { ap_memory {  { rand_0_tape_address0 mem_address 1 9 }  { rand_0_tape_ce0 mem_ce 1 1 }  { rand_0_tape_q0 mem_dout 0 8 }  { rand_0_tape_address1 MemPortADDR2 1 9 }  { rand_0_tape_ce1 MemPortCE2 1 1 }  { rand_0_tape_q1 MemPortDOUT2 0 8 } } }
	rand_0_pos_read { ap_none {  { rand_0_pos_read in_data 0 32 } } }
	view1_communicatedBi { ap_memory {  { view1_communicatedBi_address0 mem_address 1 15 }  { view1_communicatedBi_ce0 mem_ce 1 1 }  { view1_communicatedBi_we0 mem_we 1 1 }  { view1_communicatedBi_d0 mem_din 1 8 }  { view1_communicatedBi_q0 mem_dout 0 8 } } }
	view1_communicatedBits_offset { ap_none {  { view1_communicatedBits_offset in_data 0 8 } } }
	view2_communicatedBi { ap_memory {  { view2_communicatedBi_address0 mem_address 1 15 }  { view2_communicatedBi_ce0 mem_ce 1 1 }  { view2_communicatedBi_q0 mem_dout 0 8 } } }
	view2_communicatedBits_offset { ap_none {  { view2_communicatedBits_offset in_data 0 8 } } }
}
