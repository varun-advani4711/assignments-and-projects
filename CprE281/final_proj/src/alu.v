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
// CREATED		"Mon Apr 25 22:42:41 2022"

module alu(
	op,
	A,
	B,
	C_out,
	S
);


input wire	op;
input wire	[3:0] A;
input wire	[3:0] B;
output wire	C_out;
output wire	[3:0] S;

wire	[3:0] B_int;




assign	B_int[3] = B[3] ^ op;

assign	B_int[2] = B[2] ^ op;

assign	B_int[1] = B[1] ^ op;

assign	B_int[0] = B[0] ^ op;


adder4	b2v_inst9(
	.C_in(op),
	.A(A),
	.B(B_int),
	.C_out(C_out),
	.S(S));


endmodule
