`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/22/2021 08:43:35 AM
// Module Name: fiveWayLightsw
// Project Name: P3 Combinational Circuits
// Description: Odd number of switches asserted turns led on
//////////////////////////////////////////////////////////////////////////////////


module fiveWayLightsw(
    input [5:0] sw,
    output [1:0] led
);

assign led[0] = ^sw;

endmodule
