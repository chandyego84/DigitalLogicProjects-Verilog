`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 09/09/2021 10:49:51 AM
// Name: Chandler Juego
// Module Name: allLedswitches
// Project Name: EE 214 Project 1.3
//////////////////////////////////////////////////////////////////////////////////

module allLedswitches(
    input [11:0] sw,
    // green LED outputs
    output [0:2] RGB_led_A,
    output [0:2] RGB_led_B,
    output [9:0] led
    );

assign led = sw;
assign RGB_led_A[1] = sw[10];
assign RGB_led_B[1] = sw[11];

endmodule
