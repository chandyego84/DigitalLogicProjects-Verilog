`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 04:43:40 PM
// Module Name: setDigit 
//////////////////////////////////////////////////////////////////////////////////
module setDigit(
    input [3:0] countSel, loadVal,
    output reg [3:0] ones, tens, hunds, thousands
);

always @ (countSel) begin
    case(countSel)
    4'b0001: ones <= loadVal;
    4'b0010: tens <= loadVal;
    4'b0100: hunds <= loadVal;
    4'b1000: thousands <= loadVal;
    endcase
end
endmodule
