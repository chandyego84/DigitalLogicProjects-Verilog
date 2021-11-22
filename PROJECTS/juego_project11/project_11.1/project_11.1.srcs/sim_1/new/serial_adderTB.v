`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/17/2021 10:07:18 PM
// Module Name: serial_adderTB
//////////////////////////////////////////////////////////////////////////////////
module serial_adderTB;

// inputs
reg A, B, clk, rst;
// outputs
wire F, Cout;

serial_adder UUT(
    .A(A), .B(B), .clk(clk), .rst(rst),
    .F(F), .Cout(Cout));

always begin
    clk = 1'b0;
    #5;
 
    clk = 1'b1;
    #5;
end
    
always @(posedge clk) begin
    // S0
    rst = 0;
    #10;
    // S0
    A = 0;
    B = 0;
    if (F == 0 && Cout == 0) 
        $display("S0 Input works");
    #10;
    // S1
    A = 1;
    B = 0;
    if (F == 1 && Cout == 0) 
        $display("S0 to S1 works");
    #10;
    // S1
    A = 0;
    B = 1;
    if (F == 1 && Cout == 0)
        $display("S1 to S1 works");
    #10;
    // S2
    A = 1;
    B = 1;
    if (F == 0 && Cout == 1)
        $display("S1 to S2 works");
    #10; 
    // S2 
    A = 1;
    B = 0;
    if (F == 0 && Cout == 1)
        $display("S2 to S2 works");

    #10;
    // S3
    A = 1;
    B = 1;
    if (F == 1 && Cout == 1)
        $display("S2 to S3 works");

    #10;
    // S3
    A = 1;
    B = 1;    
    if (F == 1 && Cout == 1)
        $display("S3 to S3 works");
    #10;
    // S1
    A = 0;
    B = 0;
    if (F == 1 && Cout == 0)
        $display("S3 to S1 works");
    #10;
    $stop;
    
    end
endmodule
