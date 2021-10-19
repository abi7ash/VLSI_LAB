module alu_if(
    input [31:0] P,Q,
    input [2:0]sel,
    output reg [63:0]Acc);

always@(sel or P or Q) begin
    Acc <= 64'd0;
   
    if(sel == 3'd0)
        Acc <= P + Q;
    else if(sel == 3'd1)
        Acc <= P - Q;
    else if(sel == 3'd2)
        Acc <= P * Q;
    else if(sel == 3'd3)
        Acc <= P / Q;
    else if(sel == 3'd4)
        Acc <= P | Q;
    else if(sel == 3'd5)
        Acc <= P & Q;
    else if(sel == 3'd6)
        Acc <= P ^ Q;
    else if(sel == 3'd7)
        Acc <= ~P;
 
end

endmodule
