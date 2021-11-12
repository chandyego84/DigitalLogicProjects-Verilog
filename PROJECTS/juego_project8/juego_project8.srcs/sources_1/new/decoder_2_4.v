`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/01/2021 04:34:44 PM
// Module Name: decoder_2_4
//////////////////////////////////////////////////////////////////////////////////
module decoder_2_4(
    input [1:0] IN,
    output reg [3:0] anods
);

always @ (IN) begin
    case (IN) 
        2'd0: anods <= 4'b1110;
        2'd1: anods <= 4'b1101;
        2'd2: anods <= 4'b1011;
        2'd3: anods <= 4'b0111;
     endcase
end
endmodule