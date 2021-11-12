`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/05/2021 03:56:59 PM
// Module Name: register_16
//////////////////////////////////////////////////////////////////////////////////
module register_16(
    input [16:0] D,
    input en,
    input clk, rst,
    output reg [16:0] loadout
);

always @ (posedge(clk)) begin
    if (en) loadout <= D;
end
endmodule
