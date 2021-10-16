`timescale 1ns / 1ps

module jk_flip(j,k,clk,q,qb);
	 
	 
    input j,k,clk;
    output q,qb;
	 reg q,qb;
	 
//	wire clk_br,qm,qmb,s1,r1;
//	
//	not uut1(clk,clk_br);
//	sr_flip uut2 (.sr({s1,r1}),.q(qm),.qb(qmb),.clk(clk));
//	sr_flip uut3 (.sr({qm,qmb}),.q(q),.qb(qb),.clk(clk_br));
//	and uut4(j,qb,s1);
//	and uut5(k,q,r1);

	initial begin
	q = 1'b0;
	qb = 1'b1;
	end
	
	always @(posedge clk) begin
		case({j,k})
			2'b00 : q = q;
			2'b01 : q = 1'b0;
			2'b10 : q = 1'b1;
			2'b11 : q = qb;
		endcase
		
		qb = ~q;
	end
	
endmodule