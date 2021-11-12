`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 10/31/2021 01:18:57 PM
// Module Name: clkdiv_asyncTb
module clkdiv_asyncTb;

// inputs
reg clk;
reg rst;

// outputs 
wire led;

// Unit Under Test 
clkdiv_asynccntr uut (
    .clk(clk),
    .rst(rst),
    .led(led)
);

// clk freq is 100MHz; i.e., period of clock is 10ns, on for 5ns, low for 5ns
always 
    #5 clk = ~clk;

initial begin 
    // init inputs 
    clk = 0;
    rst = 1;
    
    #10 rst = 0;
    
    // wait 100 ns for global reset to finish
    #100;
    
    end
    
endmodule
