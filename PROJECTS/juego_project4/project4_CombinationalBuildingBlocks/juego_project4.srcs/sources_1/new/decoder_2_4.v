`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chandler Juego 
// Create Date: 09/29/2021 10:27:13 PM
// Module Name: decoder_2_4
// Enable one of four LEDs when corresponding btn is pressed
// Input driven from two slide switches 
// Outputs AND'ed with btn inputs  
//////////////////////////////////////////////////////////////////////////////////
module decoder_2_4(
    input [1:0] I,
    input [3:0] sel,
    output [3:0] Y
);
/*
assign Y[3] = I[1] & I[0] & sel[1] & sel[0];
assign Y[2] = I[1] & !I[0] & sel[1] & !sel[0];
assign Y[1] = !I[1] & I[0] & !sel[1] & sel[0];
assign Y[0] = !I[1] & !I[0] & !sel[1] & !sel[0];
*/
assign Y = (I == 2'b00 & sel == 4'b0001) ? 4'b0001 :
    (I == 2'b01 & sel == 4'b0010) ? 4'b0010 :
    (I == 2'b10 & sel == 4'b0100) ? 4'b0100:
    (I == 2'b11 & sel == 4'b1000) ? 4'b1000:
    3'd0;
    
endmodule
