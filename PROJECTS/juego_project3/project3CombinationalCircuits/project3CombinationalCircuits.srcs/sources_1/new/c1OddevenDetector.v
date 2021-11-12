`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/22/2021 11:08:18 PM
// Design Name: Project 3 Challenge 1: Odd/Even Input Detector
// Module Name: c1OddevenDetector
// Description: Turns on different LEDs depending on odd/even inputs asserted
//////////////////////////////////////////////////////////////////////////////////

module c1OddevenDetector(
    input [7:0] sw,
    output [1:0] led
);
// odd numbers
assign led[0] = ^sw;
// even numbers
assign led[1] = ~^sw;

endmodule
