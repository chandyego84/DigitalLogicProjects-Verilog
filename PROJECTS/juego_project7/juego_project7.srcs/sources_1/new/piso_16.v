`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/21/2021 08:54:01 PM
// Module Name: piso_16
//////////////////////////////////////////////////////////////////////////////////
module piso_16(
    input clk, 
    input [1:0] EN,
    input [7:0] sw,
    output reg [15:0] led
);
  
reg [25:0] cntr;

always @ (posedge(clk))
begin
    cntr <= cntr + 1;
end

always @ (posedge(cntr[25:23]), posedge(EN[0]), posedge(EN[1]))
begin
    if (EN[0])  // load lower 8 bits 
        led <= {8'b00000000, sw};
    else if (EN[1]) // load upper 8 bits
        led <= {sw, 8'b00000000};
    else
    begin
        led <= {led[14:0], led[15]};
    end
end

endmodule


