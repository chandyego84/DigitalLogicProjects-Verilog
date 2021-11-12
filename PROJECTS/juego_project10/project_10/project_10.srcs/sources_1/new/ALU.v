`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/10/2021 06:57:37 PM
// Module Name: ALU
//////////////////////////////////////////////////////////////////////////////////
module ALU(
    input [7:0] A, B,
    input [2:0] ctrl,
    output reg [8:0] result
);

always @ (ctrl) begin
    case(ctrl)
    3'b000: result <= A + B;
    3'b001: result <= A + B + 1; 
    3'b010: result <= A - B;
    3'b011: result <= A ^ B;
    3'b100: result <= A | B;
    3'b101: result <= A & B;
    endcase
end
endmodule
