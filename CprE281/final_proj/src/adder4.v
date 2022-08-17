// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
// CREATED		"Mon Apr 25 22:42:31 2022"

module adder4(
	C_in,
	A,
	B,
	C_out,
	S
);


input wire	C_in;
input wire	[3:0] A;
input wire	[3:0] B;
output wire	C_out;
output wire	[3:0] S;

wire	[3:0] C;
wire	[3:0] S_ALTERA_SYNTHESIZED;





full_adder	b2v_inst(
	.A(A[0]),
	.B(B[0]),
	.C_in(C_in),
	.S(S_ALTERA_SYNTHESIZED[0]),
	.C_out(C[0]));


full_adder	b2v_inst1(
	.A(A[1]),
	.B(B[1]),
	.C_in(C[0]),
	.S(S_ALTERA_SYNTHESIZED[1]),
	.C_out(C[1]));


full_adder	b2v_inst2(
	.A(A[2]),
	.B(B[2]),
	.C_in(C[1]),
	.S(S_ALTERA_SYNTHESIZED[2]),
	.C_out(C[2]));


full_adder	b2v_inst3(
	.A(A[3]),
	.B(B[3]),
	.C_in(C[2]),
	.S(S_ALTERA_SYNTHESIZED[3]),
	.C_out(C[3]));

assign	C_out = C[3];
assign	S = S_ALTERA_SYNTHESIZED;

endmodule
