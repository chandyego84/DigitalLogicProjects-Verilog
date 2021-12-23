`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Chandler Juego
// Create Date: 12/06/2021 07:13:23 PM
// Module Name: sevsegcontroller 
//////////////////////////////////////////////////////////////////////////////////
module sevsegcontroller(
    input clk,
    input [3:0] wOnes, wTens, wHunnids, wThousands,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire [1:0] wCtrout;
wire [3:0] wMuxout;

ctr_clk ctr_clk(.displ_clk(clk), .ctrout(wCtrout));
anodecoder anodecoder(.IN(wCtrout), .anods(seg_an));
muxBus_4_1(.I0(wOnes), .I1(wTens), .I2(wHunnids), .I3(wThousands),
    .sel(wCtrout), .Y(wMuxout));
segdecoder segdecoder(.IN(wMuxOut), .segs(seg_cat));

endmodule
