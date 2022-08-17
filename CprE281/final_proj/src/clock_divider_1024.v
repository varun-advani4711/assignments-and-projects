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
// CREATED		"Mon Apr 25 22:41:37 2022"

module clock_divider_1024(
	CLK_IN,
	CLK_OUT
);


input wire	CLK_IN;
output reg	CLK_OUT;

wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_5;
reg	SYNTHESIZED_WIRE_37;
reg	TFF_inst2;
wire	SYNTHESIZED_WIRE_38;
reg	TFF_inst3;
wire	SYNTHESIZED_WIRE_39;
reg	TFF_inst4;
wire	SYNTHESIZED_WIRE_40;
reg	TFF_inst5;
wire	SYNTHESIZED_WIRE_41;
reg	TFF_inst6;
wire	SYNTHESIZED_WIRE_42;
reg	TFF_inst7;
wire	SYNTHESIZED_WIRE_43;
reg	TFF_inst8;
wire	SYNTHESIZED_WIRE_44;
reg	TFF_inst9;

assign	SYNTHESIZED_WIRE_36 = 1;





always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	SYNTHESIZED_WIRE_37 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	SYNTHESIZED_WIRE_37 <= 1;
	end
else
	SYNTHESIZED_WIRE_37 <= SYNTHESIZED_WIRE_37 ^ SYNTHESIZED_WIRE_36;
end


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	CLK_OUT <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	CLK_OUT <= 1;
	end
else
	CLK_OUT <= CLK_OUT ^ SYNTHESIZED_WIRE_5;
end

assign	SYNTHESIZED_WIRE_38 = SYNTHESIZED_WIRE_37 & TFF_inst2;

assign	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_38 & TFF_inst3;

assign	SYNTHESIZED_WIRE_40 = SYNTHESIZED_WIRE_39 & TFF_inst4;

assign	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_40 & TFF_inst5;

assign	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_41 & TFF_inst6;

assign	SYNTHESIZED_WIRE_43 = SYNTHESIZED_WIRE_42 & TFF_inst7;

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_43 & TFF_inst8;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_44 & TFF_inst9;


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst2 <= 1;
	end
else
	TFF_inst2 <= TFF_inst2 ^ SYNTHESIZED_WIRE_37;
end


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst3 <= 1;
	end
else
	TFF_inst3 <= TFF_inst3 ^ SYNTHESIZED_WIRE_38;
end


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst4 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst4 <= 1;
	end
else
	TFF_inst4 <= TFF_inst4 ^ SYNTHESIZED_WIRE_39;
end


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst5 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst5 <= 1;
	end
else
	TFF_inst5 <= TFF_inst5 ^ SYNTHESIZED_WIRE_40;
end


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst6 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst6 <= 1;
	end
else
	TFF_inst6 <= TFF_inst6 ^ SYNTHESIZED_WIRE_41;
end


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst7 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst7 <= 1;
	end
else
	TFF_inst7 <= TFF_inst7 ^ SYNTHESIZED_WIRE_42;
end


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst8 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst8 <= 1;
	end
else
	TFF_inst8 <= TFF_inst8 ^ SYNTHESIZED_WIRE_43;
end


always@(posedge CLK_IN or negedge SYNTHESIZED_WIRE_36 or negedge SYNTHESIZED_WIRE_36)
begin
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst9 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_36)
	begin
	TFF_inst9 <= 1;
	end
else
	TFF_inst9 <= TFF_inst9 ^ SYNTHESIZED_WIRE_44;
end


endmodule
