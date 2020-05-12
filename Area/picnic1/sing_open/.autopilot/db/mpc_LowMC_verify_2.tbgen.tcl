set moduleName mpc_LowMC_verify_2
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
set C_modelName {mpc_LowMC_verify_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ view1_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view1_inputShare_offset int 8 regular  }
	{ view1_communicatedBi int 8 regular {array 16425 { 2 3 } 1 1 }  }
	{ view1_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ view2_inputShare int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ view2_communicatedBi int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ view2_outputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ tapes_0_tape int 8 regular {array 498 { 1 1 } 1 1 }  }
	{ tmp int 32 regular {array 24 { 2 2 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ challenge int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "view1_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view1_inputShare_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view1_communicatedBi", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "view1_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "view2_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "view2_communicatedBi", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "view2_outputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tapes_0_tape", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "challenge", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ view1_inputShare_address0 sc_out sc_lv 10 signal 0 } 
	{ view1_inputShare_ce0 sc_out sc_logic 1 signal 0 } 
	{ view1_inputShare_q0 sc_in sc_lv 32 signal 0 } 
	{ view1_inputShare_offset sc_in sc_lv 8 signal 1 } 
	{ view1_communicatedBi_address0 sc_out sc_lv 15 signal 2 } 
	{ view1_communicatedBi_ce0 sc_out sc_logic 1 signal 2 } 
	{ view1_communicatedBi_we0 sc_out sc_logic 1 signal 2 } 
	{ view1_communicatedBi_d0 sc_out sc_lv 8 signal 2 } 
	{ view1_communicatedBi_q0 sc_in sc_lv 8 signal 2 } 
	{ view1_outputShare_address0 sc_out sc_lv 10 signal 3 } 
	{ view1_outputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ view1_outputShare_we0 sc_out sc_logic 1 signal 3 } 
	{ view1_outputShare_d0 sc_out sc_lv 32 signal 3 } 
	{ view2_inputShare_address0 sc_out sc_lv 10 signal 4 } 
	{ view2_inputShare_ce0 sc_out sc_logic 1 signal 4 } 
	{ view2_inputShare_q0 sc_in sc_lv 32 signal 4 } 
	{ view2_communicatedBi_address0 sc_out sc_lv 15 signal 5 } 
	{ view2_communicatedBi_ce0 sc_out sc_logic 1 signal 5 } 
	{ view2_communicatedBi_q0 sc_in sc_lv 8 signal 5 } 
	{ view2_outputShare_address0 sc_out sc_lv 10 signal 6 } 
	{ view2_outputShare_ce0 sc_out sc_logic 1 signal 6 } 
	{ view2_outputShare_we0 sc_out sc_logic 1 signal 6 } 
	{ view2_outputShare_d0 sc_out sc_lv 32 signal 6 } 
	{ tapes_0_tape_address0 sc_out sc_lv 9 signal 7 } 
	{ tapes_0_tape_ce0 sc_out sc_logic 1 signal 7 } 
	{ tapes_0_tape_q0 sc_in sc_lv 8 signal 7 } 
	{ tapes_0_tape_address1 sc_out sc_lv 9 signal 7 } 
	{ tapes_0_tape_ce1 sc_out sc_logic 1 signal 7 } 
	{ tapes_0_tape_q1 sc_in sc_lv 8 signal 7 } 
	{ tmp_address0 sc_out sc_lv 5 signal 8 } 
	{ tmp_ce0 sc_out sc_logic 1 signal 8 } 
	{ tmp_we0 sc_out sc_lv 4 signal 8 } 
	{ tmp_d0 sc_out sc_lv 32 signal 8 } 
	{ tmp_q0 sc_in sc_lv 32 signal 8 } 
	{ tmp_address1 sc_out sc_lv 5 signal 8 } 
	{ tmp_ce1 sc_out sc_logic 1 signal 8 } 
	{ tmp_we1 sc_out sc_lv 4 signal 8 } 
	{ tmp_d1 sc_out sc_lv 32 signal 8 } 
	{ tmp_q1 sc_in sc_lv 32 signal 8 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 9 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 9 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 9 } 
	{ challenge sc_in sc_lv 2 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "view1_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "address0" }} , 
 	{ "name": "view1_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "ce0" }} , 
 	{ "name": "view1_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_inputShare", "role": "q0" }} , 
 	{ "name": "view1_inputShare_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_inputShare_offset", "role": "default" }} , 
 	{ "name": "view1_communicatedBi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "address0" }} , 
 	{ "name": "view1_communicatedBi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "ce0" }} , 
 	{ "name": "view1_communicatedBi_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "we0" }} , 
 	{ "name": "view1_communicatedBi_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "d0" }} , 
 	{ "name": "view1_communicatedBi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view1_communicatedBi", "role": "q0" }} , 
 	{ "name": "view1_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "address0" }} , 
 	{ "name": "view1_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "ce0" }} , 
 	{ "name": "view1_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "we0" }} , 
 	{ "name": "view1_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view1_outputShare", "role": "d0" }} , 
 	{ "name": "view2_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "address0" }} , 
 	{ "name": "view2_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "ce0" }} , 
 	{ "name": "view2_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_inputShare", "role": "q0" }} , 
 	{ "name": "view2_communicatedBi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "view2_communicatedBi", "role": "address0" }} , 
 	{ "name": "view2_communicatedBi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_communicatedBi", "role": "ce0" }} , 
 	{ "name": "view2_communicatedBi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "view2_communicatedBi", "role": "q0" }} , 
 	{ "name": "view2_outputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "address0" }} , 
 	{ "name": "view2_outputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "ce0" }} , 
 	{ "name": "view2_outputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "we0" }} , 
 	{ "name": "view2_outputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "view2_outputShare", "role": "d0" }} , 
 	{ "name": "tapes_0_tape_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tapes_0_tape", "role": "address0" }} , 
 	{ "name": "tapes_0_tape_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tapes_0_tape", "role": "ce0" }} , 
 	{ "name": "tapes_0_tape_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tapes_0_tape", "role": "q0" }} , 
 	{ "name": "tapes_0_tape_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tapes_0_tape", "role": "address1" }} , 
 	{ "name": "tapes_0_tape_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tapes_0_tape", "role": "ce1" }} , 
 	{ "name": "tapes_0_tape_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tapes_0_tape", "role": "q1" }} , 
 	{ "name": "tmp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp", "role": "address0" }} , 
 	{ "name": "tmp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce0" }} , 
 	{ "name": "tmp_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp", "role": "we0" }} , 
 	{ "name": "tmp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "d0" }} , 
 	{ "name": "tmp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "q0" }} , 
 	{ "name": "tmp_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp", "role": "address1" }} , 
 	{ "name": "tmp_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp", "role": "ce1" }} , 
 	{ "name": "tmp_we1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp", "role": "we1" }} , 
 	{ "name": "tmp_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "d1" }} , 
 	{ "name": "tmp_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp", "role": "q1" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "challenge", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "challenge", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6", "10"],
		"CDFG" : "mpc_LowMC_verify_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217450", "EstimateLatencyMax" : "217618",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_692"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_692"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_692"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_692"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_709"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_709"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_721"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_721"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_verify_2_fu_721"}],
		"Port" : [
			{"Name" : "view1_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_mul_fu_692", "Port" : "state"}]},
			{"Name" : "view1_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view1_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mpc_AND_verify_2_fu_721", "Port" : "view1_communicatedBi"}]},
			{"Name" : "view1_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "view2_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_mul_fu_692", "Port" : "state"}]},
			{"Name" : "view2_communicatedBi", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mpc_AND_verify_2_fu_721", "Port" : "view2_communicatedBi"}]},
			{"Name" : "view2_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tapes_0_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mpc_AND_verify_2_fu_721", "Port" : "rand_0_tape"}]},
			{"Name" : "tmp", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_mul_fu_692", "Port" : "output_r"},
					{"ID" : "6", "SubInstance" : "grp_matrix_mul_1_fu_709", "Port" : "output_r"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_mul_fu_692", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_matrix_mul_1_fu_709", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_matrix3_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_fu_692", "Parent" : "0", "Child" : ["3", "4", "5"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2570", "EstimateLatencyMax" : "2570",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_fu_692.temp_matrix_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_fu_692.prod_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_fu_692.temp_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_1_fu_709", "Parent" : "0", "Child" : ["7", "8", "9"],
		"CDFG" : "matrix_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2570", "EstimateLatencyMax" : "2570",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_1_fu_709.temp_matrix2_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_1_fu_709.prod_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_mul_1_fu_709.temp_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_AND_verify_2_fu_721", "Parent" : "0", "Child" : ["11", "12"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_AND_verify_2_fu_721.crypto_sign_open_g8j_U71", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_AND_verify_2_fu_721.crypto_sign_open_g8j_U72", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	mpc_LowMC_verify_2 {
		view1_inputShare {Type I LastRead 2 FirstWrite -1}
		view1_inputShare_offset {Type I LastRead 0 FirstWrite -1}
		view1_communicatedBi {Type IO LastRead 1 FirstWrite 2}
		view1_outputShare {Type O LastRead -1 FirstWrite 10}
		view2_inputShare {Type I LastRead 2 FirstWrite -1}
		view2_communicatedBi {Type I LastRead 1 FirstWrite -1}
		view2_outputShare {Type O LastRead -1 FirstWrite 11}
		tapes_0_tape {Type I LastRead 1 FirstWrite -1}
		tmp {Type IO LastRead 19 FirstWrite 1}
		plaintext {Type I LastRead 4 FirstWrite -1}
		challenge {Type I LastRead 0 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	matrix_mul {
		output_r {Type O LastRead -1 FirstWrite 3}
		output_offset {Type I LastRead 0 FirstWrite -1}
		state {Type I LastRead 2 FirstWrite -1}
		state_offset {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}}
	matrix_mul_1 {
		output_r {Type IO LastRead 2 FirstWrite 3}
		state_offset {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "217450", "Max" : "217618"}
	, {"Name" : "Interval", "Min" : "217450", "Max" : "217618"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	view1_inputShare { ap_memory {  { view1_inputShare_address0 mem_address 1 10 }  { view1_inputShare_ce0 mem_ce 1 1 }  { view1_inputShare_q0 mem_dout 0 32 } } }
	view1_inputShare_offset { ap_none {  { view1_inputShare_offset in_data 0 8 } } }
	view1_communicatedBi { ap_memory {  { view1_communicatedBi_address0 mem_address 1 15 }  { view1_communicatedBi_ce0 mem_ce 1 1 }  { view1_communicatedBi_we0 mem_we 1 1 }  { view1_communicatedBi_d0 mem_din 1 8 }  { view1_communicatedBi_q0 mem_dout 0 8 } } }
	view1_outputShare { ap_memory {  { view1_outputShare_address0 mem_address 1 10 }  { view1_outputShare_ce0 mem_ce 1 1 }  { view1_outputShare_we0 mem_we 1 1 }  { view1_outputShare_d0 mem_din 1 32 } } }
	view2_inputShare { ap_memory {  { view2_inputShare_address0 mem_address 1 10 }  { view2_inputShare_ce0 mem_ce 1 1 }  { view2_inputShare_q0 mem_dout 0 32 } } }
	view2_communicatedBi { ap_memory {  { view2_communicatedBi_address0 mem_address 1 15 }  { view2_communicatedBi_ce0 mem_ce 1 1 }  { view2_communicatedBi_q0 mem_dout 0 8 } } }
	view2_outputShare { ap_memory {  { view2_outputShare_address0 mem_address 1 10 }  { view2_outputShare_ce0 mem_ce 1 1 }  { view2_outputShare_we0 mem_we 1 1 }  { view2_outputShare_d0 mem_din 1 32 } } }
	tapes_0_tape { ap_memory {  { tapes_0_tape_address0 mem_address 1 9 }  { tapes_0_tape_ce0 mem_ce 1 1 }  { tapes_0_tape_q0 mem_dout 0 8 }  { tapes_0_tape_address1 MemPortADDR2 1 9 }  { tapes_0_tape_ce1 MemPortCE2 1 1 }  { tapes_0_tape_q1 MemPortDOUT2 0 8 } } }
	tmp { ap_memory {  { tmp_address0 mem_address 1 5 }  { tmp_ce0 mem_ce 1 1 }  { tmp_we0 mem_we 1 4 }  { tmp_d0 mem_din 1 32 }  { tmp_q0 mem_dout 0 32 }  { tmp_address1 MemPortADDR2 1 5 }  { tmp_ce1 MemPortCE2 1 1 }  { tmp_we1 MemPortWE2 1 4 }  { tmp_d1 MemPortDIN2 1 32 }  { tmp_q1 MemPortDOUT2 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	challenge { ap_none {  { challenge in_data 0 2 } } }
}
