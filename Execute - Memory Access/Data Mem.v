`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 01:19:41 AM
// Design Name: 
// Module Name: Data Mem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Data_Mem(
    input [31:0] mr,
    input [31:0] mqb,
    input mwmem,
    input clock,
    
    output reg [31:0] mdo
    );
    
    reg [31:0] memory [63:0];
    
    initial 
    begin
        memory[0] = 32'hA00000AA;
        memory[1] = 32'h10000011;
        memory[2] = 32'h20000022;
        memory[3] = 32'h30000033;
        memory[4] = 32'h40000044;
        memory[5] = 32'h50000055;
        memory[6] = 32'h60000066;
        memory[7] = 32'h70000077;
        memory[8] = 32'h80000088;
        memory[9] = 32'h90000099;
    end
    
    always @(*)
    begin
    if (mwmem == 1'b0) 
        begin
            mdo <= memory[mr];
    end
    end
    always @(negedge clock)
    begin
        if(mwmem == 1'b1)
        begin
            memory[mr] <= mqb;
        end
    end
endmodule 
