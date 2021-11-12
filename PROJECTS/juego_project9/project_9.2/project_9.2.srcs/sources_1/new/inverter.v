`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/03/2021 09:34:14 PM
// Module Name: inverter
//////////////////////////////////////////////////////////////////////////////////
module inverter(
    input sub,
    input [7:0] bits,
    output reg [7:0] inverted
);

always @ (sub) begin
    if (sub)
        inverted <= -bits; // twos complement
    else 
        inverted <= bits;

end
endmodule
