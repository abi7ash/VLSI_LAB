module alu_tb;

reg [31:0] p,q;
reg [2:0]sel;
wire [63:0]acc_case;
wire [63:0]acc_if;

alu_case inst1(.P(p),.Q(q),.sel(sel),.Acc(acc_case));
alu_if   inst2(.P(p),.Q(q),.sel(sel),.Acc(acc_if));



initial begin
    $monitor("For P=%b, Q=%b,sel=%b the results are \n Acc_case=%b and Acc_if=%b \n",p,q,sel,acc_case,acc_if);
    //$monitor("For P=%b, Q=%b,sel=%b the result is \n Acc_case=%d \n",p,q,sel,acc_if);
    
    sel=3'd0;p=32'd127;q=32'd200;
    //sel=3'd0;p={32{1'b1}};q={32{1'b1}};
    //sel=3'd0;p={32{1'b1}};q={32{1'b1}};
    
    #20 sel=3'd1;
    #20 sel=3'd2;
    #20 sel=3'd3;
    #20 sel=3'd4;
    #20 sel=3'd5;
    #20 sel=3'd6;
    #20 sel=3'd7;

end

endmodule
