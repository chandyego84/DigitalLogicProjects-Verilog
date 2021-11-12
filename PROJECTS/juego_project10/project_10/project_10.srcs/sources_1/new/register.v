`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/10/2021 06:47:46 PM
// Module Name: register
//////////////////////////////////////////////////////////////////////////////////
module register(
    input [7:0] D,
    input [1:0] en,
    input clk,
    output reg [7:0] op1, op2
);

always @ (posedge(clk)) begin
    if (en[0]) op1 <= D;
    if (en[1]) op2 <= D;
end

endmodule
