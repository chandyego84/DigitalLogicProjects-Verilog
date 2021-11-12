`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/01/2021 04:25:35 PM
// Module Name: counter_2bit
//////////////////////////////////////////////////////////////////////////////////
module counter_2bit(
    input clk, rst,
    output reg [1:0] counterout
);

always @ (posedge(clk), posedge(rst))
begin
    if (rst) counterout <= 0;
    else counterout <= counterout + 1;
    
end
endmodule