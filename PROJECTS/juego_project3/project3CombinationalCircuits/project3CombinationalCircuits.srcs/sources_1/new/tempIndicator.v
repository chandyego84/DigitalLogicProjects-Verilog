`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/23/2021 11:14:19 AM
// Module Name: tempIndicator
// Project Name: Project 3.3 Temperature Indicator
//////////////////////////////////////////////////////////////////////////////////


module tempIndicator(
    input [7:0] sw,
    output [1:0] led
);

assign led[0] = (sw >= 8'b10100000) && (sw < 8'b10111001);

endmodule
