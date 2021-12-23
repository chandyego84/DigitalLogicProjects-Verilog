`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/02/2021 04:33:20 PM
// Module Name: clkdiv 
//////////////////////////////////////////////////////////////////////////////////
module clkdiv(
    input clk,
    input rst,
    input [25:0] terminalcount,
    output reg clk_div = 0
);

reg [25:0] count = 0;
wire tc;

assign tc = (count == terminalcount);

always @ (posedge(clk)) begin
    if (rst) count <= 0;
    if (tc) count <= 0;
    else count <= count + 1;
end

always @ (posedge(clk)) begin
    if (rst) clk_div <= 0;
    if (tc) clk_div <= ~clk_div;
end

endmodule
