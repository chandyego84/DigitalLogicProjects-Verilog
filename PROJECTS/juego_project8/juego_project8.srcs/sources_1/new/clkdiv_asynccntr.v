`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/31/2021 12:31:43 PM
// Module Name: clkdiv_asynccntr
//////////////////////////////////////////////////////////////////////////////////
module clkdiv_asynccntr(
    input clk, rst,
    output led
);

wire [26:0] din;
wire [26:0] clkdiv;

FDC dff_inst0(
    .C(clk),
    .CLR(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);

genvar i;
generate
for (i=1; i<27; i=i+1)
begin : dff_gen_label
    FDC dff_inst(
        .C(clkdiv[i-1]),
        .CLR(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate

assign din = ~clkdiv;   // inverts every FF's output before returning it to the input

assign led = clkdiv[26];


endmodule
