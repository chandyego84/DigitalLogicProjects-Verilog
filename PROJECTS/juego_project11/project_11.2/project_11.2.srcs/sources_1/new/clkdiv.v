`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/18/2021 08:47:42 AM
// Module Name: clkdiv 
//////////////////////////////////////////////////////////////////////////////////
module clkdiv(
    input clk,
    input [15:0] terminalcount,
    output reg clk_div
);

reg [15:0] count;
wire tc;

assign tc = (count == terminalcount);

always @ (posedge(clk)) 
begin
    //if (rst) count <= 0;
    if (tc) count <= 0;
    else count <= count + 1;
end

always @ (posedge(clk))
begin
    //if (rst) clk_div <= 0;
    if (tc) clk_div = !clk_div;
end

endmodule