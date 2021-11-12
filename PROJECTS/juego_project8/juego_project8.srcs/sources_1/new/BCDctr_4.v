`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/01/2021 08:05:57 PM
// Module Name: BCDctr_4
//////////////////////////////////////////////////////////////////////////////////
module BCDctr_4(
    input clk, rst,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire clkdivDown;
wire [3:0] bcd0, bcd1,bcd2,bcd3;
wire [3:0] tc;
wire [1:0] cout;
wire [3:0] muxOut;

clkdiv div(.clk(clk), .rst(rst), .terminalcount(49999), .clk_div(clkdivDown));
bcdcounter bcd_one(.clk(clkdivDown), .rst(rst), .bcd_digit(bcd0), .en(1), .tc(tc[0]));
bcdcounter bcd_two(.clk(clkdivDown), .rst(rst), .bcd_digit(bcd1), .en(tc[0]), .tc(tc[1]));
bcdcounter bcd_three(.clk(clkdivDown), .rst(rst), .bcd_digit(bcd2), .en(tc[1]&tc[0]), .tc(tc[2]));
bcdcounter bcd_four(.clk(clkdivDown), .rst(rst), .bcd_digit(bcd3), .en(tc[2]&tc[1]&tc[0]), .tc(tc[3]));
counter_2bit(.clk(clkdivDown), .counterout(cout));
busMux_4_1 busMux(.I0(bcd0), .I1(bcd1), .I2(bcd2), .I3(bcd3), .sel(cout), .Y(muxOut));
decoder_2_4 decoder(.IN(cout), .anods(seg_an));
sevseg_decoder sevDecoder(.segIn(muxOut), .segs(seg_cat)); 

endmodule
