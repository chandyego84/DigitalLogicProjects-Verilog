`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/22/2021 11:26:19 PM
// Design Name: Project 3 Challenge 2 Odd # Detector w/ Pushbutton inputs
// Module Name: c2oddDetectorPushBttn
// Description: Illuminate 3rd LED when odd # of eight switches asserted 
// and 0, 2, or all 4 push buttons pressed
//////////////////////////////////////////////////////////////////////////////////


module c2oddDetectorPushBttn(
    input [7:0] sw,
    input [3:0] btn,
    output [2:0] led
);

// odd numbers
assign led[0] = ^sw;
// even numbers
assign led[1] = ~^sw;
// odd number of inputs, and even or none pushbtns pressed 
assign led[2] = ^sw & ~^btn;


endmodule
