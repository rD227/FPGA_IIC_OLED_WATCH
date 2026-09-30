`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/25 13:24:35
// Design Name: 
// Module Name: led
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


module led #(parameter times = 28'b1111_1111_1111_1111_1111_1111_1111)
   (
   input clk,
   input rst_n,
   output reg [3:0]led
   );
   
   reg [27:0]cnt = 28'b0;
   
   always@(posedge clk or negedge rst_n) begin
       if(!rst_n)
           cnt <= 28'b0;
       else 
       begin
           if(cnt >= times)
               cnt <= 28'b0;
           else
               cnt <= cnt + 1;
       end
   end
   
   always@(posedge clk or negedge rst_n) begin
       if(!rst_n)
           led <= 4'b0;
       else 
       begin
           if(cnt >= times)
               case(led)
                   4'b0001: led <= 4'b0010;
                   4'b0010: led <= 4'b0100;
                   4'b0100: led <= 4'b1000;
                   4'b1000: led <= 4'b0001;
                   
                   default: led <= 4'b0001; 
               endcase
           else
               led <= led;
       end
   end
endmodule
