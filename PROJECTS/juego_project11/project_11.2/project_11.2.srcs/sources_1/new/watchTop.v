`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/18/2021 10:24:06 AM
// Module Name: watchTop
//////////////////////////////////////////////////////////////////////////////////
module watchTop(
    input clk, rst, sw,
    input [2:0] en, // inc[2], stop[1], start[0]
    output [3:0] seg_an,
    output [7:0] seg_cat
);

wire newclk;
wire [3:0] wOnes, wTens, wHunds, wThousands;
wire [1:0] wCtrout;
wire [3:0] muxConnect;

clkdiv clkdiv(.clk(clk), .terminalcount(49999), .clk_div(newclk));   // 1 KHz
dec_counter stateMachine(.CEN(en[1:0]), .clk(newclk), .rst(rst), .timer(sw), .inc(en[2]), 
    .ones(wOnes), .tens(wTens), .hunds(wHunds), .thousands(wThousands));
disp_clk displ_clk(.CEN(1), .clk(newclk), .ctrout(wCtrout));
muxBus_4_1 mux(.I0(wOnes), .I1(wTens), .I2(wHunds), .I3(wThousands), .sel(wCtrout), .Y(muxConnect));
segdecoder segments(.IN(muxConnect), .segs(seg_cat));
anodecoder anodes(.EN(1), .IN(wCtrout), .anods(seg_an));

endmodule
