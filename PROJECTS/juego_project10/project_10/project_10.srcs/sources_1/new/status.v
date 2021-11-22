`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/11/2021 12:06:21 PM
// Module Name: status 
//////////////////////////////////////////////////////////////////////////////////
module status(
    input [8:0] A, B,
    input [9:0] ALUin,
    output reg [3:0] state
);

always @ (ALUin) begin
    if (ALUin == 9'd0) state[0] <= 1; // zero
    if (ALUin[8] == 1'b1) state[1] <= 1; // negative 
    if (ALUin[9] == 1'b1) state[2] <= 1; // carry out MSB
    if (A[8] == 1'b0 & B[8] == 1'b0 & ALUin[8] == 1'b1) state[3] <= 1; // overflow
    if (A[8] == 1'b1 & B[8] == 1'b1 & ALUin[8] == 1'b0) state[3] <= 1; //overflow
end
endmodule
