`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/18/2021 09:35:03 PM
// Module Name: incrementer
//////////////////////////////////////////////////////////////////////////////////
module incrementer(
    input clk, incButton,
    output reg toInc
);

reg button_old = 1'b0;

always @(posedge(clk)) begin
    // detect rising edge
    if (button_old != incButton && incButton == 1'b1)
          toInc <= 1'b1;
    button_old <= incButton;
end
endmodule
