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
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"
// CREATED		"Tue Mar 29 14:28:18 2022"

module lab8step2(
	Xc1,
	Xc2,
	Xc3,
	X3,
	X2,
	X1,
	X0,
	s,
	F
);


input wire	Xc1;
input wire	Xc2;
input wire	Xc3;
input wire	X3;
input wire	X2;
input wire	X1;
input wire	X0;
input wire	[1:0] s;
output wire	[3:0] F;

wire	[3:0] f_ALTERA_SYNTHESIZED;





lab8step1	b2v_inst(
	.w0(X3),
	.w1(X2),
	.w2(X1),
	.w3(X0),
	.s(s),
	.f(f_ALTERA_SYNTHESIZED[3]));


lab8step1	b2v_inst1(
	.w0(X2),
	.w1(X1),
	.w2(X0),
	.w3(Xc1),
	.s(s),
	.f(f_ALTERA_SYNTHESIZED[2]));


lab8step1	b2v_inst2(
	.w0(X1),
	.w1(X0),
	.w2(Xc1),
	.w3(Xc2),
	.s(s),
	.f(f_ALTERA_SYNTHESIZED[1]));


lab8step1	b2v_inst3(
	.w0(X0),
	.w1(Xc1),
	.w2(Xc2),
	.w3(Xc3),
	.s(s),
	.f(f_ALTERA_SYNTHESIZED[0]));

assign	F = f_ALTERA_SYNTHESIZED;

endmodule
