`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/03/2021 10:06:12 AM
// Module Name: counter
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input clk, rst,
    output reg counterout
);

always @ (posedge(clk), posedge(rst))
begin
    if (rst) counterout <= 0;
    else counterout <= counterout + 1;
    
end
endmodule
