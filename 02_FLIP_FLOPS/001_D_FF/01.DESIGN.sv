module d_FF(
  
  input logic clk,
  input logic rst,
  input logic d,
  output logic q
  
);
  
  always@(posedge clk) begin
    
    if(rst)
      
      q <= 0;
  
   else
    
     q <= d;
  
  end
  
endmodule
