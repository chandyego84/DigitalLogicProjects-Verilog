`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 04:15:15 PM
// Module Name: clkdiv 
//////////////////////////////////////////////////////////////////////////////////
module clkdiv(
    input clk, rst,
    input [15:0] terminalcount, // 100MHz -> 1KHz: 50000 - 1; 1KHz -> 1Hz: 500 - 1
    output reg clk_div
);

// localparam terminalcount = (50000 - 1);
reg [15:0] count;
wire tc;

assign tc = (count == terminalcount);   // comparator on counter output 

always @ (posedge(clk), posedge(rst))
begin
    if (rst) count <= 0;
    else if (tc) count <= 0;
    else count <= count + 1;
 end
 
 always @ (posedge(clk), posedge(rst))
 begin 
    if (rst) clk_div <= 0;
    else if (tc) clk_div = !clk_div;    // T-FF with tc as input signal 
end
endmodule