`include "environment.sv"

program test(inter vif);
  
  environment env;
  
  initial begin
    
    env = new(vif);
    
    env.gen.repeat_count = 5;
    
    env.run();
    
    wait(env.gen.ended.triggered);
    
    #15;
    
  end
  
endprogram
