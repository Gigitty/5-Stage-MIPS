`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 11:48:15 PM
// Design Name: 
// Module Name: Register File
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


module Register_File(
    input [31:0] dinstOut,
    input [4:0] wdestReg,
    input [31:0] wbData,
    input wwreg,
    input clock,
    
    output reg [31:0] qa,
    output reg [31:0] qb
    );
    
    reg [31:0] registers [0:31];
    integer i;
    initial begin
        for (i=0; i<32; i= i+1) begin
            registers[i] = 32'd0;
        end
        end
    
    always @(*)
    begin
        qa <= registers[dinstOut[25:21]];
        qb <= registers[dinstOut[20:16]]; 
    end
    
        
    always @(negedge clock)
    begin
        if (wwreg ==1)
        begin
            registers[wdestReg] <= wbData;    
        end
    end
    
endmodule
