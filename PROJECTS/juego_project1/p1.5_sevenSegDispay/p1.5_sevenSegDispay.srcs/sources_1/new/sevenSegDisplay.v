`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Chandler Juego
// Module Name: reverseLEDsw
// Project Name: EE 214 Project 1.4
//////////////////////////////////////////////////////////////////////////////////

module sevenSegDisplay(
    input [7:0] sw,
    input [3:0] btn,
    output [7:0] seg_cat,
    output [0:3] seg_an
    );

// pushbtns connect to each anode
assign seg_an = ~btn;

// slide switcches connect to segments 
assign seg_cat = ~sw;

endmodule
