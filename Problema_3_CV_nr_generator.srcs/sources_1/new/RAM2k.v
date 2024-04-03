`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 22:52:13
// Design Name: 
// Module Name: RAM2k
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


module RAM2k(output[7:0] sir,
             input w_en,clk,
             input[10:0] addr_w, addr_r,
             input[7:0] data_w    );
             
     reg [7:0] memory[0:2047];
     
     always @(posedge clk)
     if(w_en)
        memory[addr_w]=data_w;
        
      assign sir=memory[addr_r];          
endmodule
