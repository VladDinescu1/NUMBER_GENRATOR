`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 20:37:50
// Design Name: 
// Module Name: COM_BEH
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


module COM_BEH(output [7:0]out,
               input [7:0]in0,in1 );
   wire[7:0] inmultire;            
   wire[7:0] adunare,adunare1; 
   
   wire[7:0] inmultire2;            
   wire[7:0] adunare2,scadere3;           
     
   wire[7:0] par;
   wire[7:0]  impar;    
   
   wire sel;
    
  inmultire inm(.out(inmultire),
                .in(in1));
                
  sumator sum1(.sum(adunare),
               .in0(in0),
               .in1(inmultire));
               
  sumator sum2(.sum(adunare1),
               .in0(adunare),
               .in1(3));
               
  modul mod(.out(par),
            .in(adunare1));


  inmultire inm3(.out(inmultire2),
                 .in(in1));
                 
  sumator sum4(.sum(adunare2),
               .in0(in0),
               .in1(inmultire2));
               
  scadere scad23(.out(scadere3),
                 .in0(adunare2),
                 .in1(1));
                 
  modul mod2(.out(impar),
             .in(scadere3));
  
  
  paritate parx(.out(sel),
                .in(in0));
                
  MUXXX mux1(.out(out),
             .sel(sel),
             .in0(par),
             .in1(impar));
  
  
  
 
  

     
endmodule
