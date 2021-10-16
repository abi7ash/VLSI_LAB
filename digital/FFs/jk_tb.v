`timescale 1ns / 1ps

module jk_tb;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	jk_flip uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		j = 0;
		k = 0;
		clk = 0;
	end
	
	always #10 clk = ~clk;
	
	initial begin
		#30 {j,k} = 2'b01;
		#30 {j,k} = 2'b00;
		#30 {j,k} = 2'b10;
		#30 {j,k} = 2'b11;
	end
      
endmodule

