`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/16/2021 11:29:56 AM
// Project Name: Creating fourth circuit from truth table
//////////////////////////////////////////////////////////////////////////////////
module circuit4(
    input [6:3] sw,
    output [0:9] led
);

assign led[3] = (sw[3] & ~sw[6:4]) | (sw[4] & sw[3] & ~sw[6] & ~sw[5]) | (~sw[6] & sw[5] & ~sw[4] & ~sw[3]) | (sw[5] & sw[4] & ~sw[6] & ~sw[3]) | 
(sw[6] & sw[3] & ~sw[5] & ~sw[4]) | (sw[6] & ~sw[5] & sw[4] & sw[3]) | (sw[6] & sw[5] & ~sw[4] & ~sw[3]) | (sw[6] & sw[5] & sw[4] & ~sw[3]);


endmodule
