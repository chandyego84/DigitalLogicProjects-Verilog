`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/01/2021 04:29:30 PM
// Module Name: debouncer
//////////////////////////////////////////////////////////////////////////////////
module debouncer(
// using state machine
    input clk, data, rst, // data = btn[0], rst = btn[1]
    output reg DB // led[0]
);
wire slowclk;
clkdiv newclk(.clk(clk), .rst(rst), .terminalcount(12500000), .slowClk(slowclk));

reg [1:0] PS, NS;
localparam S0 = 2'b00; // initial
localparam S1 = 2'b01;  // bounce check
localparam S2 = 2'b10; // debounce out
localparam S3 = 2'b11;  // debounce out

always @ (*) begin
    case(PS)
    S0: if (!data) NS <= S0;
        else if (rst) NS <= S0;
        else if (data) NS <= S1;
    S1: if (!data) NS <= S0;
        else if (data) NS <= S2;
    S2: if (!data) NS <= S3;
        else if (data) NS <= S2;
    S3: if (!data) NS <= S0;
        else if (data) NS <= S2;
    default: NS <= S0;
endcase
end

always @ (posedge(slowclk)) begin
    PS <= NS;
    if (PS == S0) DB <= 0;
    else if (PS == S1 || PS == S2) DB <= 1;
end

endmodule

// 2 KHz -> 49999 tc
module clkdiv(
    input clk, rst,
    input [15:0] terminalcount, // detemrmines new frequency
    output reg slowClk
);

reg [15:0] count;
wire tc = (count == terminalcount);

always @ (posedge(clk), posedge(rst)) begin
    if (rst) count <= 0;
    else if (tc) count <= 0;
    else count <= count + 1;
end

always @ (posedge(clk), posedge(rst)) begin
    if (rst) slowClk <= 0;
    else if  (tc) slowClk <= !slowClk;
end 
endmodule
