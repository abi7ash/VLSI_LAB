//`timescale 1ns / 1ns

module dFlip(d,clk,q,qb);
input d,clk;
output q,qb;
reg q,qb;


always @(posedge clk)
	begin
		  q = d;
		  qb = ~q;
	end
endmodule
