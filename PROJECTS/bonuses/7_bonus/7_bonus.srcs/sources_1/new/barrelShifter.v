`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 08:09:16 PM
// Module Name: barrelShifter
//////////////////////////////////////////////////////////////////////////////////
module barrelShifter(
    input [11:0] sw,
    input [3:0] btn,
    output [7:0] led
);

wire [7:0] wReg;

register register(.D(sw[10:4]), .clk(btn[0]), .Q(wReg));
shifter shifter(.D(wReg), .val(sw[3:0]), .sel(btn[1]), .dir(btn[2]), .fillEN(sw[11]), .result(led));

endmodule
