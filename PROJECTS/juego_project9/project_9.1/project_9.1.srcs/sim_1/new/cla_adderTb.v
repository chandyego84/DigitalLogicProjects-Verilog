`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Chandler Juego
// Create Date: 11/03/2021 01:44:46 PM
// Module Name: cla_adderTb
//////////////////////////////////////////////////////////////////////////////////
module cla_adderTb;

reg [3:0] op1, op2;
wire [7:0] sum;

cla_adder CUT (
    .op1(op1),
    .op2(op2),
    .sum(sum)
);

initial begin
    # 10;
    // 1 + 1
    op1 = 4'b0001;
    op2 = 4'b0001;
    # 10;
    // 2 + 2
    op1 = 4'b0010;
    op2 = 4'b0010;   
    # 10;
    // 8 + 1
    op1 = 4'b1000;
    op2 = 4'b0001;
    # 10;
    // 8 + 2
    op1 = 4'b1000;
    op2 = 4'b0010;  
    # 10;
    // 9 + 2
    op1 = 4'b1001;
    op2 = 4'b0010;
    #10;
     // 15 + 15
    op1 = 4'b1111;
    op2 = 4'b1111;  
    # 10;
end
endmodule
