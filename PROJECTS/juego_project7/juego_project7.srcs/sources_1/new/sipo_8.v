`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/22/2021 09:28:42 AM
// Module Name: sipo_8
//////////////////////////////////////////////////////////////////////////////////
module sipo_8(
    input SI, // SDI signal
    input btn,  // clock input
    output reg [7:0] led // register outputs     
);

// shift a data bit in to the register 
// every time the clock pushbutton is pressed.
always @(posedge(btn))
begin
    led <= {led[6:0], SI};
end

endmodule

