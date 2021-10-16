//`timescale 1ns / 1ps

module sr_tb;

	// Inputs
	reg [1:0] sr;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	sr_flip uut (
		.sr(sr), 
		.q(q), 
		.qb(qb), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		sr = 2'b00;
		clk = 0;
	end
	
	always #10 clk = ~clk;
	
	initial begin
		// Wait 100 ns for global reset to finish
		#40 sr = 2'b01;
		#40 sr = 2'b10;
		#40 sr = 2'b00;
		#40 sr = 2'b01;
        
		// Add stimulus here

	end
      
endmodule
