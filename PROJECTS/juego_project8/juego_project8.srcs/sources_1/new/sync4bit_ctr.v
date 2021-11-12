`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 10/31/2021 02:05:35 PM
// Module Name: sync4bit_ctr
//////////////////////////////////////////////////////////////////////////////////

module sync4bit_ctr(
    input clk, rst,
    output reg [3:0] counterout
);

always @ (posedge(clk), posedge(rst))
begin
    if (rst) counterout <= 0;
    else counterout <= counterout + 1;
end
endmodule
