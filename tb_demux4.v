`timescale 1ns / 1ps
module demux4_tb; 
wire [3:0] Y; 
reg  [1:0] A;
reg        din; 
demux4 I0 (Y, A, din); 
  initial begin 
   #0  din = 1;
   #0  A[1] = 0; A[0] = 0; 
   #10 A[1] = 0; A[0] = 1; 
   #10 A[1] = 1; A[0] = 0;
   #10 A[1] = 1; A[0] = 1; 
  end 
  initial begin
   $monitor("%t| Din = %d| A[1] = %d| A[0] = %d| Y[0] = %d| Y[1] = %d| Y[2] = %d| Y[3] = %d", 
   $time, din, A[1], A[0], Y[0], Y[1], Y[2], Y[3]); 
  end
endmodule
