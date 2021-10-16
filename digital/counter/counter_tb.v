module counter_tb;

reg clk,rst,udb;
wire [3:0] count;

counter HA1 (.clk(clk),.rst(rst),.udb(udb),.count(count));

initial begin
    clk=1'b0;
    rst=1'b1;
    udb = 1'b0;

    #30 rst = 1'b0;
    #50 udb = 1'b1;
    #80 udb = 1'b0;
    #20 rst = 1'b1;
    #30 rst = 1'b0;
end

always #10 clk=~clk;


endmodule
