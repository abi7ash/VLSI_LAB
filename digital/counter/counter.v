module counter(
    input clk,rst,udb,
output [3:0] count);

reg [3:0] count;

always @(posedge clk) begin

    if(rst==1)
        count=4'd0;//reset
    else
    case(udb)
        1'b0:count=count+1;//up count
        1'b1:count=count-1;//down count
        default:count =count;// no change
    endcase

end

endmodule
