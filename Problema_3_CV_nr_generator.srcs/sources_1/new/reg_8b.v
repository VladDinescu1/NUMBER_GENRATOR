`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 20:15:48
// Design Name: 
// Module Name: reg_8b
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


module reg_8b(output reg [7:0] out,
              input[7:0] in,
              input en,rst,clk          
   
    );
    
    always @(posedge clk)
     if (rst) out<=0;
     else if(en)  out<=in;
     else out<=out;
   
endmodule
