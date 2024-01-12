`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 11:48:15 PM
// Design Name: 
// Module Name: Control Unit
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


module Control_Unit(
    input [31:0] dinstOut,
    input [4:0] mdestReg,
    input mm2reg, 
    input mwreg,
    input [4:0] edestReg,
    input em2reg,
    input ewreg,
    
    output reg wreg,
    output reg m2reg,
    output reg wmem,
    output reg [3:0] aluc,
    output reg aluimm,
    output reg regrt,
    output reg fwda,
    output reg fwdb
    );
    
    always@(*)
    begin
    case (dinstOut[31:26])
        6'b000000:
        begin
        case (dinstOut[5:0])
            6'b100000: //ADD
            begin
                wreg <= 1'b1;
                m2reg <= 1'b0;
                wmem <= 1'b0;
                aluc <= 4'b0010;
                aluimm <= 1'b0;
                regrt <= 1'b0;
            end
            6'b100010: //SUB
            begin
                wreg <= 1'b1;
                m2reg <= 1'b0;
                wmem <= 1'b0;
                aluc <= 4'b0110;
                aluimm <= 1'b0;
                regrt <= 1'b0;    
            end
            6'b100100: //AND
            begin
                wreg <= 1'b1;
                m2reg <= 1'b0;
                wmem <= 1'b0;
                aluc <= 4'b0000;
                aluimm <= 1'b0;
                regrt <= 1'b0;    
            end
            6'b100101: //OR
            begin
                wreg <= 1'b1;
                m2reg <= 1'b0;
                wmem <= 1'b0;
                aluc <= 4'b0001;
                aluimm <= 1'b0;
                regrt <= 1'b0;    
            end
            6'b100110: //XOR
            begin
                wreg <= 1'b1;
                m2reg <= 1'b0;
                wmem <= 1'b0;
                aluc <= 4'b0011;
                aluimm <= 1'b0;
                regrt <= 1'b0;    
            end
        endcase
        end
        6'b100011: //LW
        begin
            wreg <= 1'b1;
            m2reg <= 1'b1;
            wmem <= 1'b0;
            aluc <= 4'b0010;
            aluimm <= 1'b1;
            regrt <= 1'b0001;
        end
    endcase
    end
    
    always @(*)
    begin
       if (em2reg && (edestReg != 0) && edestReg == dinstOut [25: 21])
       begin
            fwda = 2'b10;
       end 
       if (em2reg && (edestReg != 0) && edestReg == dinstOut [20: 16])
       begin
            fwdb = 2'b10;
       end
       if (mm2reg && (mdestReg != 0) && mdestReg == dinstOut [25: 21])
       begin
            fwda = 2'b01;
       end
       if (mm2reg && (mdestReg != 0) && mdestReg == dinstOut [20: 16])
       begin
            fwdb = 2'b01;
       end 
    end
endmodule
