`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 11:48:15 PM
// Design Name: 
// Module Name: Immediate Extender
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


module Immediate_Extender(
    input [15:0] imm,
    
    output reg [31:0] imm32
    );
    
    always @(*)
    begin
    imm32 <= {{16{imm[15]}},imm[15:0]};
    end
endmodule
