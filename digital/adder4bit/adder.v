module adder4bit(
    input [3:0] A,B,
    input Cin,
    output [3:0] Sum,
    output Carry);
   
 reg [3:0] Sum;
 reg Carry;


    always @(*) begin
        {Carry,Sum} = A + B + Cin;
    end

endmodule
