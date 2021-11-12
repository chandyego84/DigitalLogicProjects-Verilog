`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/04/2021 09:30:12 AM
// Module Name: anod_decoder// 
//////////////////////////////////////////////////////////////////////////////////
module anod_decoder(
    input [1:0] IN, 
    output reg [3:0] anods
);

always @ (IN) begin
    case (IN)
    2'b00: anods <= 4'b1110;
    2'b01: anods <= 4'b1101;
    2'b10: anods <= 4'b1011;
    2'b11: anods <= 4'b0111;
    endcase
end

endmodule
