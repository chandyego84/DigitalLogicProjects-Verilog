`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 04:20:27 PM
// Module Name: BCDctr_4
// UPDATED FOR CHALLENGE (4 digit counter controller):
//Change the 4-digit counter clock to a 1Hz clock, 
//and make the count value loadable from the slide switches. 
//Connect SW0 to counter enable, so the counter only counts when SW0 is a 1 
//(so, SW0 selects between "run mode" when SW0 = "1", and "load mode" when SW0 = "0")
//. Then, connect SW1 and SW2 to a decoder that will select which counter digit to load, 
//and use SW4-SW7 to set a count value into the digits. Verify your circuit works.
//////////////////////////////////////////////////////////////////////////////////
module BCDctr_4(
    input clk, rst,
    input [7:0] sw,
    input [3:0] btn,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire clkdivDown;
wire [3:0] bcd0, bcd1,bcd2,bcd3;
wire [3:0] tc;
wire [1:0] cout;
wire [3:0] muxOut;
// bonus additions
wire [3:0] WbcdLoad;

clkdiv div(.clk(clk), .rst(btn[0]), .terminalcount(100000000-1), .clk_div(clkdivDown));
bcdcounter bcd_one(.clk(clkdivDown), .rst(btn[0]), .bcd_digit(bcd0), .en(sw[0]), .tc(tc[0]), .digitSel(sw[4]), .bcdLoad(WbcdLoad));
bcdcounter bcd_two(.clk(clkdivDown), .rst(btn[0]), .bcd_digit(bcd1), .en(tc[0]), .tc(tc[1]), .digitSel(sw[5]), .bcdLoad(WbcdLoad));
bcdcounter bcd_three(.clk(clkdivDown), .rst(btn[0]), .bcd_digit(bcd2), .en(tc[1]&tc[0]), .tc(tc[2]), .digitSel(sw[6]), .bcdLoad(WbcdLoad));
bcdcounter bcd_four(.clk(clkdivDown), .rst(btn[0]), .bcd_digit(bcd3), .en(tc[2]&tc[1]&tc[0]), .tc(tc[3]), .digitSel(sw[7]), .bcdLoad(WbcdLoad));
// loads one of four bcd numbers
load_decoder load(.sel(sw[2:1]), .ones(bcd0), .tens(bcd1), .hunds(bcd2), .thousands(bcd3), .load(WbcdLoad));
// display controller
counter_2bit(.clk(clkdivDown), .counterout(cout));
busMux_4_1 busMux(.I0(bcd0), .I1(bcd1), .I2(bcd2), .I3(bcd3), .sel(cout), .Y(muxOut));
decoder_2_4 decoder(.IN(cout), .anods(seg_an));
sevseg_decoder sevDecoder(.segIn(muxOut), .segs(seg_cat)); 

endmodule