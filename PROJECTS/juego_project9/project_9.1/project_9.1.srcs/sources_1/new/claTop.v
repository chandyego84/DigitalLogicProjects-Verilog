`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/03/2021 10:14:38 AM
// Module Name: claTop
//////////////////////////////////////////////////////////////////////////////////
module claTop(
    input clk, rst,
    input [7:0] sw,
    output [3:0] seg_an,
    output [6:0] seg_cat
);
wire clkOut;
wire cout;
wire [3:0] muxConnect;
wire [7:0] wSum;
wire[15:0] wBCD;

clkdiv clkdiv(.clk(clk), .rst(rst), .terminalcount(49999), .clk_div(clkOut));
cla_adder claAdder(.op1(sw[3:0]), .op2(sw[7:4]), .sum(wSum));
bin2bcd bcdConvert(.bin(wSum), .bcd(wBCD));
counter counter(.clk(clkOut), .rst(rst), .counterout(cout));
decoder decoder(.IN(cout), .anods(seg_an));
mux_4_1 mux(.I0(wBCD[3:0]), .I1(wBCD[7:4]), .I2(wBCD[11:8]), .I3(wBCD[15:12]), .sel(cout), .Y(muxConnect));
sevsegdecoder segDecoder(.I(muxConnect), .segs(seg_cat));


endmodule
