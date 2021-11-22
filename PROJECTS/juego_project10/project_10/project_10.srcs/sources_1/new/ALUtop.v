`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/11/2021 10:34:00 AM
// Module Name: ALUtop 
//////////////////////////////////////////////////////////////////////////////////
module ALUtop(
    input clk, rst,
    input [11:0] sw,
    input [1:0] en,
    output [3:0] led,
    output [3:0] seg_an,
    output [7:0] seg_cat
);

wire [8:0] wOp1, wOp2;
wire [9:0] ALUout;
wire [15:0] BCDout;
wire newClk;
wire [1:0] wCtrout;
wire [3:0] muxConnect;

register load(.D(sw[8:0]), .en(en[1:0]), .clk(clk), .op1(wOp1), .op2(wOp2));
ALU ALU(.A(wOp1), .B(wOp2), .ctrl(sw[11:9]), .result(ALUout));
//assign led[0] = (ALUout == 0) ? 1 : 0; // zero
//assign led[1] = (ALUout[7] == 1) ? 1 : 0; // negative 
//assign led[2] = (ALUout[8] == 1) ? 1 : 0; // carry out MSB
status ALUstate(.A(wOp1), .B(wOp2), .ALUin(ALUout), .state(led[3:0]));
bin2BCD BCD(.bin(ALUout), .bcd(BCDout));
clkdiv clkdiv(.clk(clk), .rst(rst), .terminalcount(49999), .clk_div(newClk));
counter(.clk(newClk), .rst(rst), .ctrout(wCtrout));
mux mux(.I0(BCDout[3:0]), .I1(BCDout[7:4]), .I2(BCDout[11:8]), .I3(BCDout[15:12]), .sel(wCtrout), .muxY(muxConnect));
segdecoder segdec(.IN(muxConnect), .segs(seg_cat));
anodecoder anodec(.IN(wCtrout), .anods(seg_an));

endmodule
