`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/09/2021 10:34:21 PM
// Module Name: driveRGBled
// Project Name: EE 214 Project 1: Challenge 1
//////////////////////////////////////////////////////////////////////////////////

module driveRGBled(
    input [0:3] btn,
    output [0:2] RGB_led_A
    );

assign RGB_led_A = btn;

endmodule
