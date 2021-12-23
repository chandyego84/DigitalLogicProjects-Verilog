`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/02/2021 04:43:23 PM
// Module Name: anodecoder 
//////////////////////////////////////////////////////////////////////////////////
module anodecoder(
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