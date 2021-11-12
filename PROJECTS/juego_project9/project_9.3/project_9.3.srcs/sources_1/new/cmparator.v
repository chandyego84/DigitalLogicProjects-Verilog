`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date: 11/05/2021 04:07:51 PM
// Module Name: cmparator
//////////////////////////////////////////////////////////////////////////////////
module cmparator(
    input [16:0] A, B,
    input clk,
    output reg LTO,
    output reg EQO,
    output reg GTO
);

always @ (posedge(clk)) begin
    if (A < B) LTO <= 1;
    else if (A == B) EQO <= 1; 
    else if (A > B) GTO <= 1;
end
endmodule