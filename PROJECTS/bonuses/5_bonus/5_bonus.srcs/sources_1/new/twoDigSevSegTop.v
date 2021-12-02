`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/29/2021 12:34:06 PM
// Module Name: twoDigSevSegTop
//////////////////////////////////////////////////////////////////////////////////
module twoDigSevSegTop(
    input clk, rst,
    input [7:0] sw,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire clkOut;
counter counter(.clk(clk), .rst(rst), .terminalcount(49999), .clk_div(clkOut));

twoDigSevenSegCtr controller(.I0(sw[3:0]), .I1(sw[7:4]), .ctr(clkOut),
    .seg_an(seg_an), .seg_cat(seg_cat));

endmodule
