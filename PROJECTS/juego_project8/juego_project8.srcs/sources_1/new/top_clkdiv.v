`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/31/2021 03:01:52 PM
// Module Name: top_clkdiv
//////////////////////////////////////////////////////////////////////////////////
module top_clkdiv(
    input clk, rst,
    output led
);
wire connect;

clkdiv MHz100(.clk(clk), .rst(rst), .terminalcount(50000-1), .clk_div(connect));
clkdiv KHz1(.clk(connect), .rst(rst), .terminalcount(500-1), .clk_div(led));

endmodule