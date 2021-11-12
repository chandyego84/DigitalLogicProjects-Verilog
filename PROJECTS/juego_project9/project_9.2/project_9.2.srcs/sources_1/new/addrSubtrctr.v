`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/04/2021 02:39:55 PM
// Module Name: addrSubtrctr
//////////////////////////////////////////////////////////////////////////////////
module addrSubtrctr(
    input [7:0] sw,
    input [1:0] en,
    input clk, rst, sub,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire [7:0] wOp1, wOp2;
wire [7:0] invOp2;
wire [8:0] wSum;
wire [15:0] newBCD;
wire clkout;
wire cout;
wire [3:0] muxConnect;

register loads(.D(sw), .en(en), .rst(rst), .clk(clk), .op1(wOp1), .op2(wOp2));
inverter inverter(.sub(sub), .bits(wOp2), .inverted(invOp2));
adder adder(.A(wOp1), .B(invOp2), .led(led), .sum(wSum));
bin2bcd BCD(.bin(wSum[7:0]), .bcd(newBCD));
clkdiv newClk(.clk(clk), .rst(rst), .terminalcount(49999), .clk_div(clkout));
counter counter(.clk(clkout), .counterout(cout));
mux mux(.I0(newBCD[3:0]), .I1(newBCD[7:4]), .I2(newBCD[11:8]), .I3(newBCD[15:12]), 
    .sel(cout), .muxY(muxConnect));
anod_decoder anodes(.IN(cout), .anods(seg_an));
segdecoder segdecoder(.IN(muxConnect), .segs(seg_cat));


endmodule
