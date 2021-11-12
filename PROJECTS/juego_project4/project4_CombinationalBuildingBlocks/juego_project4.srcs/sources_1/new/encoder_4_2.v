`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chandler Juego 
// Create Date: 09/30/2021 8:34 AM
// Module Name: encoder_4_2
// create verilog description of 4:2 priority encoder 
// then make test bench to check all possible inputs 
// do not need to implement circuit 
//////////////////////////////////////////////////////////////////////////////////
module encoder_4_2(
    input [3:0] I,
    input Ein,
    output reg [1:0] Y,
    output reg GS,
    output reg Eout 
);
always @ (I, Ein)
begin
    if(Ein == 1) begin
        if (I[3] == 1)
            Y <= 2'd3; 
        else if (I[2] == 1)
            Y <= 2'd2;
        else if (I[1] == 1)
            Y <= 2'd1; 
        else
            Y <= 2'd0;
    end
    else
        Y = 2'd0;
end 

always @ (I, Ein)
begin
    if (Ein == 1 && I == 0)
        Eout <= 1'b1;
    else
        Eout <= 1'b0;
end 

always @ (I, Ein)
begin 
    if (Ein == 1 && I != 0)
        GS <= 1'b1;
    else 
        GS <= 1'b0;

end
endmodule
