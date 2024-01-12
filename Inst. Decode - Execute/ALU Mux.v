`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 01:19:41 AM
// Design Name: 
// Module Name: ALU Mux
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


module ALU_Mux(
    input [31:0] eqb,
    input [31:0] eimm32,
    input ealuimm,
    
    output reg [31:0] b
    );
    
    always @(*)
    begin
        b <= ealuimm? eimm32 : eqb;                                                                                                           
    end
endmodule
