`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/03/2021 10:08:09 AM
// Module Name: decoder
//////////////////////////////////////////////////////////////////////////////////
module decoder(
    input IN,
    output reg [3:0] anods
);

always @ (IN) begin
    case (IN)
    1'b0: anods <= 4'b1110;
    1'b1: anods <= 4'b1101;
    //2'b10: anods <= 4'b1011;
    //2'b11: anods <= 4'b0111;
    endcase
end
endmodule
