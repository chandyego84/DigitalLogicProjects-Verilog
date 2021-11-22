`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/18/2021 09:20:03 AM
// Design Name: Chandler Juego
// Module Name: disp_clk
//////////////////////////////////////////////////////////////////////////////////
module disp_clk(
    input CEN, clk,
    output reg [1:0] ctrout
);

always @ (posedge(clk)) begin
    ctrout <= ctrout + 1;
end

endmodule
