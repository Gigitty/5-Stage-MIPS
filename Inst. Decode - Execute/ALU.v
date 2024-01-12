`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 01:19:41 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] eqa,
    input [31:0] b,
    input [3:0] ealuc,
    
    output reg [31:0] r
    );
    
    always @(*)
    begin
        if(ealuc == 4'b0010) //ADD
        begin
            r = eqa + b;
        end
        if(ealuc == 4'b0110) //SUB
        begin
            r = eqa - b;
        end
        if(ealuc == 4'b0000) //ADD
        begin
            r = eqa & b;
        end
        if(ealuc == 4'b0001) //OR
        begin
            r = eqa | b;
        end
        if(ealuc == 4'b0011) //OR
        begin
            r = eqa ^ b;
        end
    end   
endmodule
