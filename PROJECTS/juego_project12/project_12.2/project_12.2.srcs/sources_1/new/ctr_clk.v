`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: 
// Create Date: 12/02/2021 04:38:19 PM
// Module Name: ctr_clk
// Selector for segment mux
// selector for anode decoder
//////////////////////////////////////////////////////////////////////////////////
module ctr_clk(
    input displ_clk,
    output reg [1:0] ctrout
);

always @ (posedge(displ_clk)) begin
    ctrout <= ctrout + 1;
end

endmodule
