`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 09/09/2021 11:00:35 PM
// Module Name: masterONoff
// Project Name: EE 214 Project 1 Challenge 2  
//////////////////////////////////////////////////////////////////////////////////

module masterONoff(
    input [0:3] btn,
    input [0:11] sw,
    output [0:2] RGB_led_A
    );

assign RGB_led_A[0] = btn[0] & sw[0];    
assign RGB_led_A[1] = btn[1] & sw[0];    
assign RGB_led_A[2] = btn[2] & sw[0];    

endmodule

