`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2022 19:32:54
// Design Name: 
// Module Name: down_counter_tb
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


module down_counter_tb();
parameter N=10;
reg clk;
reg reset;
wire [N-1:0] down_counter;
down_counter DUT(clk,reset,down_counter);

initial
begin
clk=1'b0;
forever #100 clk=~clk;
end
initial
  begin
  #100;
  reset <=1'b1;
  #1000;
  reset<=1'b0;
  #10000;
  $stop;
  end



endmodule
