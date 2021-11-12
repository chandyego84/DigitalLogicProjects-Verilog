`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/03/2021 07:44:46 PM
// Module Name: counter 
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input clk,
    output [2:0] B
);

reg [27:0] counter;

always @ (posedge clk)
begin
    counter <= counter + 1;
end

assign B = counter[27:25];

endmodule
