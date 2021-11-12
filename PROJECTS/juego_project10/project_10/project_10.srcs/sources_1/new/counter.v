`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/11/2021 10:25:28 AM
// Module Name: counter 
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input clk, rst,
    output reg [1:0] ctrout
);

always @ (posedge(clk), posedge(rst)) begin
    if (rst) ctrout <= 0;
    else ctrout <= ctrout + 1;
end
endmodule
