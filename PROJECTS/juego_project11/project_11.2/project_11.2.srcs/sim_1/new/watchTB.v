`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/21/2021 08:28:54 AM
// Module Name: watchTB
//////////////////////////////////////////////////////////////////////////////////
module watchTB;

// inputs
reg [1:0] CEN;
reg clk, rst, inc, timer;
// outputs 
wire [3:0] ones, tens, hunds, thousands;
wire [1:0] PS, NS;

dec_counter UUT(
    .CEN(CEN), .clk(clk), .rst(rst), .inc(inc),
    .timer(timer), .ones(ones), .tens(tens),
    .hunds(hunds), .thousands(thousands),
    .PS(PS), .NS(NS)
);

always begin
    clk = 1'b0;
    #5;
    
    clk = 1'b1;
    #5;
end

always @(posedge clk) begin
    rst = 0;
    #10;
    CEN[0] = 0;
    inc = 1;
    #30;
    inc = 0;
    #10;
    $stop;
end
endmodule
