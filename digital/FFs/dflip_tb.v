//`timescale 1ns / 1ns


module dflip_tb;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dFlip uut (
		.d(d), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);
      
	initial begin
		// Initialize Inputs
		$monitor ("d=%b then q=%b,qb=%b",d,q,qb);
		d = 0;
		clk = 0;
		end

	always #10 clk = ~clk;
	
	initial begin

		#10     d = 1;
		#20 	d = 0;
		#40     d = 1;

	end
	
endmodule
