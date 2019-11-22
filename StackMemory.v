
module StackMemory(InputData,P,OutputData,clk);
  input wire[15:0] InputData;
  input wire[4*8:0]P;
  input wire clk;
  output reg[16:0] OutputData;
  
  integer stackPointer;
  reg[15:0]stackMem[0:63];
  
  
  initial 
  stackPointer=0;
  
  
  always @(P,InputData,posedge clk,negedge clk)
  
    begin
    
    case(P)
      
      "push": 
        begin
          if (stackPointer==64)
            $display("the memory is full!");
          
          else
            begin
        
              stackMem[stackPointer]=InputData;
              stackPointer=stackPointer+1;
        
            end
        end
    "pop": begin
      if (stackPointer==0)
        $display("the memory is empty!");
      
      else
        begin
        
          stackPointer=stackPointer-1;
          OutputData=stackMem[stackPointer];
        
        end
      end
    endcase
  end
endmodule