`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/03/2021 07:23:16 PM
// Module Name: mux_demux_wrapper
//////////////////////////////////////////////////////////////////////////////////
module mux_demux_wrapper(
    input clk,
    input [7:0] sw,
    output [7:0] led
);

wire sdata;
wire [2:0] Bdata;

counter input_counter(
    .clk(clk),
    .B(Bdata)
);

mux_8_1 input_mux(
    .I(sw),
    .S(Bdata),
    .R_A(sdata)
);

demux_3_8 output_demux(
    .EN(sdata),
    .I(Bdata),
    .Y(led)
);

endmodule