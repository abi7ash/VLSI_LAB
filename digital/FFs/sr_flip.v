//`timescale 1ns / 1ps

module sr_flip(sr,q,qb,clk);

    input [1:0] sr;
    output q,qb;
    reg q,qb;
    input clk;
	 
	 initial q = 0;
	 
	 always @(posedge clk) begin
		case(sr)
			2'b00 : q = q;
			2'b01 : q = 1'b0;
			2'b10 : q = 1'b1;
			default : q = q;
		endcase
		
		qb = ~q;
	end
endmodule
