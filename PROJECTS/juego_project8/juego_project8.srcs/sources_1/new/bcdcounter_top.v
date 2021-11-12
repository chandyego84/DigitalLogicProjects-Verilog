`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/31/2021 03:26:00 PM
// Module Name: bcdcounter_top
//////////////////////////////////////////////////////////////////////////////////
module bcdcounter_top(
    input clk, rst,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

assign seg_an = 4'b1110;
wire connect, bcdconnect;
wire [3:0] digit;

clkdiv KHz1(.clk(clk), .rst(rst), .terminalcount(50000-1), .clk_div(connect));
clkdiv Hz1(.clk(connect), .rst(rst), .terminalcount(500-1), .clk_div(bcdconnect));
bcdcounter(.clk(bcdconnect), .rst(rst), .bcd_digit(digit));
sevseg_decoder(.segIn(digit), .segs(seg_cat));

endmodule
