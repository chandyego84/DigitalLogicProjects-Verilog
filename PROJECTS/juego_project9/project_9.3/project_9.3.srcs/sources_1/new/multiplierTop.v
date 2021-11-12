`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/04/2021 09:39:37 PM
// Module Name: multiplierTop
//////////////////////////////////////////////////////////////////////////////////
module multiplierTop(
    input [7:0] sw,
    input [2:0] en,
    input [2:0] led,
    input clk, rst,
    output [3:0] seg_an,
    output [6:0] seg_cat
);

wire [7:0] wOp1 ,wOp2; 
wire [16:0] wProd;
wire [16:0] wLoadout;
wire clkDiv;
wire [1:0] cout;
wire [15:0] newBCD;
wire [3:0] muxConnect;

register loads(.D(sw), .en(en[1:0]), .rst(rst), .clk(clk), .op1(wOp1), .op2(wOp2));
multiplier multiplier(.A(wOp1), .B(wOp2), .product(wProd));
register_16 saveProduct(.D(wProd), .en(en[2]), .clk(clk), .rst(rst), .loadout(wLoadout));
assign led[0] = (wLoadout < wProd) ? 1 : 0;
assign led[1] = (wLoadout == wProd) ? 1 : 0;
assign led[2] = (wLoadout > wProd) ? 1 : 0;
//cmparator compare(.A(wLoadout), .B(wProd), .clk(clk), .LTO(led[0]), .EQO(led[1]), .GTO(led[2]));
bin2bcd BCD(.bin(wProd), .bcd(newBCD));
clkdiv clkiv(.clk(clk), .rst(rst), .terminalcount(49999), .clk_div(clkDiv));
counter counter(.clk(clkDiv), .rst(rst), .counterout(cout));
mux mux(.I0(newBCD[3:0]), .I1(newBCD[7:4]), .I2(newBCD[11:8]), .I3(newBCD[15:12]), .sel(cout), .muxY(muxConnect));
anod_decoder(.IN(cout), .anods(seg_an));
segdecoder segdecoder(.IN(muxConnect), .segs(seg_cat));

endmodule
