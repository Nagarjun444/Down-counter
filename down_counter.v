`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2022 19:29:00
// Design Name: 
// Module Name: up_counter
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


module down_counter#(parameter N=10)(clk,reset,down_counter);
input clk;
input reset;
output reg [N-1:0] down_counter;
always@(posedge clk or posedge reset)
begin
  if(reset)
   down_counter<=10'd100;
  else
    down_counter <=down_counter-1;
end
endmodule
