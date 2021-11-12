`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/02/2021 07:55:10 PM
// Module Name: cla_adder
//////////////////////////////////////////////////////////////////////////////////
module cla_adder(
    input [3:0] op1, op2,
    output [4:0] sum
);

wire [4:0] wC;  // carry
// generate, propogate, sum
wire [3:0] wG, wP;
wire [3:0] wS;

assign wC[0] = 0;    // no carry input at first bit
bitslice add1(.A(op1[0]), .B(op2[0]), .CIN(wC[0]), .G(wG[0]), .P(wP[0]), .S(wS[0]));
assign wC[1] = wG[0] | (wP[0] & wC[0]);

bitslice add2(.A(op1[1]), .B(op2[1]), .CIN(wC[1]), .G(wG[1]), .P(wP[1]), .S(wS[1]));
assign wC[2] = wG[1] | (wP[1] & wG[0]) | (wP[1] & wP[0] & wC[0]);

bitslice add3(.A(op1[2]), .B(op2[2]), .CIN(wC[2]), .G(wG[2]), .P(wP[2]), .S(wS[2]));
assign wC[3] = wG[2] | (wP[2] & wG[1]) | (wP[2] & wP[1] & wG[0]) | (wP[2] & wP[1] & wP[0] & wC[0]);

bitslice add4(.A(op1[3]), .B(op2[3]), .CIN(wC[3]), .G(wG[3]), .P(wP[3]), .S(wS[3]));
assign wC[4] = wG[3] | (wP[3] & wG[2]) | (wP[3] & wP[2] & wG[0]) | (wP[3] & wP[2] & wP[2] & wP[0] & wC[0]);

//$display("wC[4] = %b", wC[4]);

assign sum = {wC[4], wS};

endmodule
