`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/22/2021 01:20:49 PM
// Module Name: clockdivTB
//////////////////////////////////////////////////////////////////////////////////
module clockdivTB;

// inputs 
reg clk; // make 100 MHz -- T = 10 ns
reg rst;
// outputs
wire newclk;

// millisecond clock -- connect test signals to clkdiv
clkdiv slowclkCUT (
    .clk(clk),
    .terminalcount(25000-1), // 2KHz
    .clk_div(newclk)
);

initial begin 
    // initialize inputs
    clk = 0;    
    #100; // wait 100ns for global reset to finish
    
    // create input clock 100MHz
    forever #5 clk = ~clk;
end

endmodule
