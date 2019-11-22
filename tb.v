module tb();
  reg[15:0] in;
  reg[4*8:0] P;
  reg clk;
  
  wire[15:0] out;
  
  
  StackMemory  sm(in,P,out,clk);
  
  initial
  begin
    
    
    $monitor("time=%d,out=%h",$time,out);
    
    in=16'hffff;
    P="pop";
    clk=!clk;
    #10
    P="push";
    #10
    
    in=16'hffaa;
    
    #10
    
    in=16'hf66f;
    
    #10
    
    in=16'hff9f;
    
    #10
    
    in=16'h0000;
    
    #10
    
    in=16'h666f;
    
    #10
    
    in=16'h1234;
    
    #10
    
    in=16'h9876;
    clk=1'b0;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
    #10
    P="pop";
    clk=!clk;
  end
  
endmodule