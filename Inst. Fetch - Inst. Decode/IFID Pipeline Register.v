`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 11:48:15 PM
// Design Name: 
// Module Name: IFID Pipeline Register
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


module IFID_Pipeline_Register(
    input clock,
    input [31:0] instOut,
    
    output reg [31:0] dinstOut
    );
    
    always @(posedge clock)
    begin
        dinstOut <= instOut;
    end
endmodule
