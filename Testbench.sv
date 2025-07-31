`timescale 1ns/1ps
module tb_full_sub;
  reg a_tb,b_tb,bin_tb;
  wire diff_tb,bout_tb;
  
  full_sub dut(
    .a(a_tb),
    .b(b_tb),
    .bin(bin_tb),
    .diff(diff_tb),
    .bout(bout_tb) );
  
  initial
    begin
  
      $dumpfile("dumpfile.vcd");
  $dumpvars(0,tb_full_sub);
           
           $monitor("Time=%0t  a=%b  b=%b  b_in=%b  ||  diff=%b  b_out=%b",$time,a_tb,b_tb,bin_tb,diff_tb,bout_tb);
           for(integer i=0;i<8;i=i+1)
             begin
               {a_tb,b_tb,bin_tb} = i ; 
               #10 ; 
             end
           
           $finish;
           end
endmodule
           
           
