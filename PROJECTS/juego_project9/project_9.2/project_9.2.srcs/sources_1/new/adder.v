`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/03/2021 09:39:01 PM
// Module Name: adder
//////////////////////////////////////////////////////////////////////////////////
module adder(
    input [7:0] A, B, 
    output reg [1:0] led,
    output [8:0] sum    // 9 bits, compensate for carry
);

assign sum = A + B;

always @ (sum) begin
    if (sum[7] == 1) led[0] <= 1;   // negative number 
    if (sum[8] == 1) led <= 1;  // overflow
end


endmodule
