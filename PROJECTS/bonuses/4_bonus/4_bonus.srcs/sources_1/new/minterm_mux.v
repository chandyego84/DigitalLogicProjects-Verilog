`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/29/2021 02:31:09 PM
// Module Name: minterm_mux 
// minterms 3, 4, 6, 8, 9, 10 and 13 cause the LED to illuminate
// 00: cd
// 01: ~d
// 10: ~(cd)
// 11: ~cd
//////////////////////////////////////////////////////////////////////////////////
module minterm_mux(
    input A, B, C, D, // [3:2] for Sel, [1:0] for mux inputs
    output reg Y
);

wire [3:0] channels; // stores indices for channels of C/D (mux inputs)
wire [1:0] sel; // selector
assign channels = {~C&&D, ~(C&&D), ~D, C&&D}; // logic fxns to the mux inputs
assign sel ={A,B};

always @ (*) begin
    case (sel)
    2'b00: Y <= channels[0]; // CD
    2'b01: Y <= channels[1]; // ~D
    2'b10: Y <= channels[2]; // ~(CD)
    2'b11: Y <= channels[3]; // ~CD
    default: Y <= 4'b0000;
    endcase
end


endmodule
