`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 10/31/2021 01:32:45 PM
// Module Name: clkdiv_syncbinctr
//////////////////////////////////////////////////////////////////////////////////
module clkdiv_syncbinctr(
    input clk, rst,
    output [3:0] led
);

wire [27:0] din;
wire [27:0] clkdiv;

FDC dff_inst0(
    .C(clk),
    .CLR(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);

genvar i;
generate 
for (i=1; i<28; i=i+1)
    begin : dff_gen_label
    FDC dff_inst(
        .C(clkdiv[i-1]),
        .CLR(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate

assign din = ~clkdiv;

sync4bit_ctr(.clk(clkdiv[27]), .rst(rst), .counterout(led));

endmodule
