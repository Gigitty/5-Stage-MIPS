`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 03:04:25 PM
// Design Name: 
// Module Name: FWD_Mux_B
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


module FWD_Mux_A(
    input [1:0] fwda,
    input qa,
    input r,
    input mr,
    input do,
    
    output reg a
    );
    
    always @(*)
    begin
    if (fwda == 2'b00)
        begin
            a <= qa;
        end
    if (fwda == 2'b01)
        begin
            a <= r;
        end
    if (fwda == 2'b10)
        begin
            a <= mr;
        end
    if (fwda == 2'b11)
        begin
            a <= do;
        end
    end
    
endmodule