module full_sub(diff,bout,a,b,bin);
  input a, b, bin;
  output diff, bout;
  assign diff = a ^ b ^ bin ; // XOR of inputs
  assign bout = (~a & b) | (bin & (a ~^ b)); // simplifying the min terms 
endmodule

  
