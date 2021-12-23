`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/09/2021 09:39:54 PM
// Module Name: RTMtop 
//////////////////////////////////////////////////////////////////////////////////
module RTMtop(
    input clk,
    input [2:0] btn,
    output led,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire slowclk;
wire superslowClk;
wire [3:0] wOnes, wTens, wHunnids, wThousands;

clkdiv clkdiv(.clk(clk), .rst(btn[2]), .terminalcount(49999), .clk_div(slowclk));
clkdiv superslowclk(.clk(clk), .rst(btn[2]), .terminalcount(50000000-1), .clk_div(superslowClk));
stateMachine RTMsm(.start(btn[0]), .react(btn[1]), .clk(slowclk), .slowClk(superslowClk), .led(led),.ones(wOnes),
    .tens(wTens), .hunnids(wHunnids), .thousands(wThousands));
sevsegcontroller display(.clk(slowclk), .wOnes(wOnes), .wTens(wTens),
    .wHunnids(wHunnids), .wThousands(wThousands), .seg_an(seg_an), .seg_cat(seg_cat));


endmodule
