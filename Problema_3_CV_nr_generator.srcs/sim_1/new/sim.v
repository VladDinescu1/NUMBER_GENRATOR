`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2024 21:07:37
// Design Name: 
// Module Name: sim
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


module sim();

wire tester_t ;
wire[7:0] sir_t;
reg en_t,rst_t,clk_t;
reg[10:0] in_top_t;

TOP DUT( .tester(tester_t),
         .sir(sir_t),
         .en(en_t),
         .rst(rst_t),
         .clk(clk_t),
         .in_top(in_top_t) );
         
  initial begin
  clk_t=0;
  forever #5 clk_t=~clk_t;
  end
  
  initial begin
  en_t=1;
  rst_t=1;
  
  #10rst_t=0;
  in_top_t=12;
  #200 $stop();
  
  
  end
  
      
         

endmodule
