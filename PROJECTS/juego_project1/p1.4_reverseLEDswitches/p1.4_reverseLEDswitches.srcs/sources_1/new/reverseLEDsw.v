`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 09/09/2021 11:35:11 AM
// Chandler Juego
// Module Name: reverseLEDsw
// Project Name: EE 214 Project 1.4
//////////////////////////////////////////////////////////////////////////////////


module reverseLEDsw(
   input [11:0] sw,
    // green LED outputs
   output [0:2] RGB_led_A,
   output [0:2] RGB_led_B,
   output [0:9] led
   );

assign sw[0] = RGB_led_B[1];
assign sw[1] = RGB_led_A[1];
assign sw[11:2] = led;

    
endmodule
