`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Module Name: pipo_wrapper
//////////////////////////////////////////////////////////////////////////////////
module pipo_wrapper(
    input [7:0] sw,
    input [3:0] btn,
    output [7:0] led
);

wire [7:0] qdata;

register input_register(
    .D(sw),
    .clk(btn[0]),
    .Q(qdata)
);

mux_2_1 output_mux(
    .slide(sw),
    .mem(qdata),
    .Sel(btn[1]),
    .Y(led)
);


endmodule
