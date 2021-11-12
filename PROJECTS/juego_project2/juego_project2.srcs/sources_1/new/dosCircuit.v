`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 09/16/2021 09:37:03 AM
// Module Name: dosCircuit
// Project Name: Circuit Practice (SOP & POS) 
//////////////////////////////////////////////////////////////////////////////////

module dosCircuit(
    input [7:0] sw,
    output [2:0] led
);


// SOP Logic
assign led[0] = (sw[0] & ~sw[1]) | (~sw[0] & sw[1]);    // given statement
assign led[1] = (~sw[1] & ~sw[2]) & ~sw[3] | (sw[1] & sw[2] & ~sw[3]) | (sw[1] & ~sw[2] & sw[3]);
assign led[2] = (sw[4] & ~sw[5] & ~sw[6] & ~sw[7]) | (sw[4] & sw[5] & ~sw[6] & ~sw[7]) | (~sw[5] & ~sw[4] & ~sw[7] & sw[6]) | (sw[7:4]);

/*POS Logic
assign led[0] = (sw[0] | sw[1]) & (~sw[0] | ~sw[1]);
assign led[1] = (sw[3] | sw[2] | ~sw[1]) & (sw[3] | ~sw[2] | sw[1]) & (~sw[3] | sw[2] | sw[1]) & (~sw[3] | ~sw[2] | sw[1]) & 
(sw[3] | sw[2] | sw[1]);
assign led[2] = (sw[7] | sw[6] | sw[5] | sw[4]) & (sw[7] | sw[6] | ~sw[5] | sw[4]) & (sw[7] | ~sw[6] | sw[5] | ~sw[4]) &
(sw[7] | ~sw[6] | ~sw[5] | sw[4]) & (sw[7] | ~sw[6] | ~sw[5] | ~sw[4]) & (~sw[7] | sw[6] | sw[5] | sw[4]) &
(~sw[7] | sw[6] | sw[5] | ~sw[4]) & (~sw[7] | sw[6] | ~sw[5] | sw[4]) & (~sw[7] | sw[6] | ~sw[5] | ~sw[4]) & 
(~sw[7] | ~sw[6] | sw[5] | sw[4]) & (~sw[7] | ~sw[6] | sw[5] | ~sw[4]) & (~sw[7] | ~sw[6] | ~sw[5] | sw[4]);
*/
endmodule
