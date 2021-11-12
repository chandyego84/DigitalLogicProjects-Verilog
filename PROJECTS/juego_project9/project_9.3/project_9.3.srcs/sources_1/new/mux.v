`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/04/2021 09:28:53 PM
// Module Name: mux
//////////////////////////////////////////////////////////////////////////////////
module mux(
    input [3:0] I0, I1, I2, I3, 
    input [1:0] sel,
    output reg [3:0] muxY
);

always @ (*) begin
    case(sel)
    4'b00: muxY <= I0;
    4'b01: muxY <= I1;
    4'b10: muxY <= I2;
    4'b11: muxY <= I3;
    endcase
end
endmodule
