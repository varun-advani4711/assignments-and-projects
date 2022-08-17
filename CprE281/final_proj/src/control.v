module control(
	clk,
	rst_n,
	ex_n,
	mode,
	wr_en,
	err_ovfl,
	err_unfl,
	hex3_vld,
	hex2_vld,
	hex1_vld,
	hex0_vld,
	alu_op,
	wr_sel,
	rd_addr_a,
	rd_addr_b,
	wr_addr
);


input wire	clk;
input wire	rst_n;
input wire	ex_n;
input wire	[1:0] mode;
output wire	wr_en;
output wire	err_ovfl;
output wire	err_unfl;
output wire	hex3_vld;
output wire	hex2_vld;
output wire	hex1_vld;
output wire	hex0_vld;
output wire	alu_op;
output wire	wr_sel;
output wire	[1:0] rd_addr_a;
output wire	[1:0] rd_addr_b;
output wire	[1:0] wr_addr;

wire  cnt_en;
reg	[2:0] cnt;
wire[2:0] nxt_cnt;
reg 	ex_dly;

assign	alu_op = mode[0];

assign	hex3_vld = cnt[0] | cnt[1] | cnt[2];
assign	hex2_vld = cnt[1] | cnt[2];
assign	hex1_vld = cnt[0] & cnt[1] | cnt[2];
assign	hex0_vld = cnt[2];

assign	wr_en = cnt_en & (
                  (~mode[0] & ~mode[1] & ~cnt[2]) |
                  (mode[1] & (cnt[1] | cnt[2]))
                );

assign  wr_sel = mode[1];

assign  wr_addr[1] = cnt[2] | (~mode[1] & cnt[1]);
assign  wr_addr[0] = cnt[0];

assign  rd_addr_a[1] = cnt[0] | cnt[2];
assign  rd_addr_a[0] = ~cnt[0];

assign  rd_addr_b[1] = ~cnt[1];
assign  rd_addr_b[0] = cnt[0];

assign  err_ovfl = ~mode[0] & ~mode[1] & cnt[2];
assign  err_unfl = (mode[0] & ~mode[1] & ~cnt[2] & ~cnt[1] & ~cnt[0]) |
                   (mode[1] & ~cnt[2] & ~cnt[1]);

//  Falling Edge Eetector
always @(posedge clk or negedge rst_n) begin
  if (rst_n == 1'b0) begin
    ex_dly <= 1'b1;
  end else begin
    ex_dly <= ex_n;
  end
end
assign cnt_en = ex_dly & ~ex_n;

assign  nxt_cnt[2] = (~mode[0] & ~mode[1] & (cnt[2] | (cnt[1] & cnt[0])));
assign  nxt_cnt[1] = (~mode[0] & ~mode[1] & (cnt[0] ^ cnt[1])) |
                     ((mode[0] | mode[1]) & (cnt[2] | (cnt[1] & cnt[0])));
assign  nxt_cnt[0] = (~mode[0] & ~mode[1] & ~cnt[2] & ~cnt[0]) |
                     ((mode[0] | mode[1]) & cnt[2]) |
                     (mode[1] & ~cnt[1] & cnt[0]) |
                     (cnt[1] & ~cnt[0]);

always @(posedge clk or negedge rst_n) begin
  if ( rst_n == 1'b0 ) begin
    cnt <= 3'b000;
  end else if (cnt_en) begin
    cnt <= nxt_cnt;
  end
end

endmodule
