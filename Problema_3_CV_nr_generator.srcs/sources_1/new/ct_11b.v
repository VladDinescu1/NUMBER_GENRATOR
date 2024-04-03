`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 20:20:16
// Design Name: 
// Module Name: ct_11b
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


module ct_11b(output reg [10:0] out,
              input en,rst,clk );
              
             always @(posedge clk)
             if (rst) out<=0;
             else if (en) out<=out +1;
             else out<=out;
endmodule
