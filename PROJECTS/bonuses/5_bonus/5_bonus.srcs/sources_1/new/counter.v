`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 11/29/2021 12:24:19 PM
// Module Name: counter 
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input clk, rst,
    input [15:0] terminalcount,
    output reg clk_div
);

reg [15:0] count;
wire tc;

assign tc = (count == terminalcount);

always @ (posedge(clk), posedge(rst)) 
begin
    if (rst) count <= 0;
    else if (tc) count <= 0;
    else count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst) clk_div <= 0;
    else if (tc) clk_div = !clk_div;
end

endmodule

