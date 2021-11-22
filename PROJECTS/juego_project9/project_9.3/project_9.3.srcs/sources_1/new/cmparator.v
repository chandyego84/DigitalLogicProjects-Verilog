`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date: 11/05/2021 04:07:51 PM
// Module Name: cmparator
//////////////////////////////////////////////////////////////////////////////////
module cmparator(
    input [15:0] A, B,
    output LTO,
    output EQO,
    output GTO
);

assign LTO = (A < B) ? 1 : 0;
assign EQO = (A == B) ? 1 : 0;
assign GTO = (A > B) ? 1 : 0;

endmodule