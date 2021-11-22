`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 11/21/2021 03:38:12 PM
// Module Name: BCD_ctr4TB
//////////////////////////////////////////////////////////////////////////////////
module BCD_ctr4TB;

reg clk, rst;
reg [7:0] sw;
reg [3:0] btn;
wire [3:0] seg_an;
wire [6:0] seg_cat;

BCDctr_4 UUT(
    .clk(clk), .rst(rst), .sw(sw), .btn(btn), .seg_an(seg_an), .seg_cat(seg_cat)
);

initial begin
    btn[0] = 0;
    #10
    btn[0] = 1;
    #50
    $stop;
end


endmodule
