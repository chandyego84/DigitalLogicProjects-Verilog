`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/21/2021 02:20:52 PM
// Module Name: register
//////////////////////////////////////////////////////////////////////////////////
module register(
    input [7:0] D,  // 8 slide sw's
    input clk,  // btn0
    output reg [7:0] Q
);

always @ (posedge(clk))
begin
    Q <= D;
end

endmodule
