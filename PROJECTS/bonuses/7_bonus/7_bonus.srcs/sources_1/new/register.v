`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 06:24:21 PM
// Module Name: register 
//////////////////////////////////////////////////////////////////////////////////
module register(
    input [7:0] D, // 8 slide sw's
    input clk, // btn0
    output reg [7:0] Q
);

// saves data 
always @ (posedge(clk)) begin
    Q <= D;
end

endmodule
