`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 04:36:30 PM
// Module Name: load_decoder 
//////////////////////////////////////////////////////////////////////////////////
module load_decoder(
    input [1:0] sel,
    input [3:0] ones, tens, hunds, thousands,
    output reg [3:0] load
);

always @ (sel) begin
    case(sel)
    2'b00: load <= ones;
    2'b01: load <= tens;
    2'b10: load <= hunds;
    2'b11: load <= thousands;
    endcase
end
endmodule