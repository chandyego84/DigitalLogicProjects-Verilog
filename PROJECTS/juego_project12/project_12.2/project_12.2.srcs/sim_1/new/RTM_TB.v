`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 12/23/2021 08:52:58 PM
// Module Name: RTM_TB
//////////////////////////////////////////////////////////////////////////////////
module RTM_TB;

// inputs
reg clk;
reg [2:0] btn;
// outputs
wire led;
wire [3:0] ones, tens, hunnids, thousands;
//wire [1:0] PS;

// connect test signals to RTM
stateMachine SM_CUT (
    .start(btn[0]),
    .react(btn[1]),
    .clk(clk),
    .led(led),
    .ones(ones),
    .tens(tens),
    .hunnids(hunnids),
    .thousands(thousands)
    //.PS(PS)
);

always begin
    #5 clk = ~clk;  // 100 MHz clock input
end

initial begin
    // init inputs
    clk = 0;
    btn = 0;
    
    #20 btn[0] = 1; // start
   
    #100;
end

endmodule
