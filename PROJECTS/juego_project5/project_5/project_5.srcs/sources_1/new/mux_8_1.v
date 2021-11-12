`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/03/2021 06:59:15 PM
// Module Name: mux_8_1
//////////////////////////////////////////////////////////////////////////////////
module mux_8_1(
    input [7:0] I,
    input [2:0] S,
    output reg R_A
);

always @(I, S) begin
    case (S)
    3'd0: R_A <= I[0];
    3'd1: R_A <= I[1];
    3'd2: R_A <= I[2];
    3'd3: R_A <= I[3];
    3'd4: R_A <= I[4];
    3'd5: R_A <= I[5];
    3'd6: R_A <= I[6];
    3'd7: R_A <= I[7];
    default: R_A <= 1'd0;
    endcase
end
endmodule
