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
// CREATED		"Tue Apr 26 07:27:10 2022"

module final_proj(
	CLK,
	RST_N,
	EX_N,
	DAT_IN,
	MODE,
	HEX3_A,
	HEX3_B,
	HEX3_C,
	HEX3_D,
	HEX3_E,
	HEX3_F,
	HEX3_G,
	HEX2_A,
	HEX2_B,
	HEX2_C,
	HEX2_D,
	HEX2_E,
	HEX2_F,
	HEX2_G,
	HEX1_A,
	HEX1_B,
	HEX1_C,
	HEX1_D,
	HEX1_E,
	HEX1_F,
	HEX1_G,
	HEX0_A,
	HEX0_B,
	HEX0_C,
	HEX0_D,
	HEX0_E,
	HEX0_F,
	HEX0_G,
	ERR_OVFL,
	ERR_UNFL
);


input wire	CLK;
input wire	RST_N;
input wire	EX_N;
input wire	[3:0] DAT_IN;
input wire	[1:0] MODE;
output wire	HEX3_A;
output wire	HEX3_B;
output wire	HEX3_C;
output wire	HEX3_D;
output wire	HEX3_E;
output wire	HEX3_F;
output wire	HEX3_G;
output wire	HEX2_A;
output wire	HEX2_B;
output wire	HEX2_C;
output wire	HEX2_D;
output wire	HEX2_E;
output wire	HEX2_F;
output wire	HEX2_G;
output wire	HEX1_A;
output wire	HEX1_B;
output wire	HEX1_C;
output wire	HEX1_D;
output wire	HEX1_E;
output wire	HEX1_F;
output wire	HEX1_G;
output wire	HEX0_A;
output wire	HEX0_B;
output wire	HEX0_C;
output wire	HEX0_D;
output wire	HEX0_E;
output wire	HEX0_F;
output wire	HEX0_G;
output wire	ERR_OVFL;
output wire	ERR_UNFL;

wire	alu_op;
wire	[3:0] alu_out;
wire	[1:0] rd_addr_a;
wire	[1:0] rd_addr_b;
wire	[3:0] rd_data_a;
wire	[3:0] rd_data_b;
wire	[3:0] reg0;
wire	reg0_vld;
wire	[3:0] reg1;
wire	reg1_vld;
wire	[3:0] reg2;
wire	reg2_vld;
wire	[3:0] reg3;
wire	reg3_vld;
wire	[1:0] wr_addr;
wire	[3:0] wr_data;
wire	wr_en;
wire	wr_sel;





seven_seg_decoder	b2v_inst(
	.VLD(reg3_vld),
	.Z(reg3[3]),
	.Y(reg3[2]),
	.X(reg3[1]),
	.W(reg3[0]),
	.A(HEX3_A),
	.B(HEX3_B),
	.C(HEX3_C),
	.D(HEX3_D),
	.E(HEX3_E),
	.F(HEX3_F),
	.G(HEX3_G));


alu	b2v_inst1(
	.op(alu_op),
	.A(rd_data_a),
	.B(rd_data_b),
  .C_out(),
	.S(alu_out));


seven_seg_decoder	b2v_inst2(
	.VLD(reg2_vld),
	.Z(reg2[3]),
	.Y(reg2[2]),
	.X(reg2[1]),
	.W(reg2[0]),
	.A(HEX2_A),
	.B(HEX2_B),
	.C(HEX2_C),
	.D(HEX2_D),
	.E(HEX2_E),
	.F(HEX2_F),
	.G(HEX2_G));


seven_seg_decoder	b2v_inst3(
	.VLD(reg1_vld),
	.Z(reg1[3]),
	.Y(reg1[2]),
	.X(reg1[1]),
	.W(reg1[0]),
	.A(HEX1_A),
	.B(HEX1_B),
	.C(HEX1_C),
	.D(HEX1_D),
	.E(HEX1_E),
	.F(HEX1_F),
	.G(HEX1_G));


seven_seg_decoder	b2v_inst4(
	.VLD(reg0_vld),
	.Z(reg0[3]),
	.Y(reg0[2]),
	.X(reg0[1]),
	.W(reg0[0]),
	.A(HEX0_A),
	.B(HEX0_B),
	.C(HEX0_C),
	.D(HEX0_D),
	.E(HEX0_E),
	.F(HEX0_F),
	.G(HEX0_G));


reg_file	b2v_inst5(
	.clk(CLK),
	.rst_n(RST_N),
	.wr_en(wr_en),
	.rd_addr_a(rd_addr_a),
	.rd_addr_b(rd_addr_b),
	.wr_addr(wr_addr),
	.wr_dat(wr_data),
	.HEX0(reg0),
	.HEX1(reg1),
	.HEX2(reg2),
	.HEX3(reg3),
	.rd_dat_a(rd_data_a),
	.rd_dat_b(rd_data_b));


control	b2v_inst6(
	.clk(CLK),
	.ex_n(EX_N),
	.rst_n(RST_N),
	.mode(MODE),
	.wr_en(wr_en),
	.wr_sel(wr_sel),
	.err_ovfl(ERR_OVFL),
	.err_unfl(ERR_UNFL),
	.hex3_vld(reg3_vld),
	.hex2_vld(reg2_vld),
	.hex1_vld(reg1_vld),
	.hex0_vld(reg0_vld),
	.alu_op(alu_op),
	.rd_addr_a(rd_addr_a),
	.rd_addr_b(rd_addr_b),
	.wr_addr(wr_addr));


busmux_0	b2v_inst7(
	.sel(wr_sel),
	.dataa(DAT_IN),
	.datab(alu_out),
	.result(wr_data));


endmodule

module busmux_0(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [3:0] dataa;
input [3:0] datab;
output [3:0] result;

assign result = sel ? datab : dataa;

endmodule
