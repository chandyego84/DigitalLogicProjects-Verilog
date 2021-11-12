//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego 
// Create Date: 09/22/2021 12:13:50 PM
// Module Name: majority_of_five_tb
// Test bench for majority of five circuit 
// The module statement has an empty port list;
//The Verilog module to be tested (the “Circuit Under Test”, or CUT) must be instantiated as a component in the test bench;
//All CUT input signals must be declared as type reg so the test bench can drive them;
//All output busses must be declared as type wire so they will be added to the simulator output waveform viewer;
//An “initial block” is used to contain assignment statements that drive the CUT inputs so they will be executed sequentially;
//Delay statements are used to force simulator time to pass.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps    // defines reference time and precision used by simulator
module majority_of_five_tb;

// inputs: must be variables so can be assigned inside a procedural block 
reg [4:0] sw; 
// outputs: note, busses will not be shown unless declared as wires 
wire led;

// CUT instantiated 
// port list follows instantiation name 
majorityxFive cut (.sw(sw), .led(led));

// declare loop index bariable 
integer k;

// apply input stimulus 
// #n = delay time for simulator 
// $finish = tells simulator to stop
initial begin 
    sw = 0;
    for (k=0; k<32; k=k+1)
        #20 sw = k;
    
    #20 $finish;
end
endmodule
