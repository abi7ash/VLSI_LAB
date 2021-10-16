module adder_tb;

reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire carry;


adder4bit inst1 (.A(a),.B(b),.Cin(cin),.Sum(sum),.Carry(carry));

initial begin
    a=4'd1;b=4'd6;cin=1'd0;
    #40 a=4'd10;b=4'd7;cin=1'd0;
    #30 a=4'd15;b=4'd12;cin=1'd1;
    #50 a=4'd15;b=4'd15;cin=1'd1;
end

endmodule
