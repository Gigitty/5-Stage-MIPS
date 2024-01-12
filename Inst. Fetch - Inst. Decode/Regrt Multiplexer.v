`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 11:48:15 PM
// Design Name: 
// Module Name: Regrt Multiplexer
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


module Regrt_Multiplexer(
    input [31:0] dinstOut,
    input regrt,
    
    output reg [4:0] destReg
    );
    reg [4:0] rd;
    reg [4:0] rt;
    always @(*)
    begin
        rd <= dinstOut[15:11];
        rt <= dinstOut[20:16];
        case(regrt)
            1'b0: destReg <= rd;
            1'b1: destReg <= rt;
        endcase
    end
endmodule


