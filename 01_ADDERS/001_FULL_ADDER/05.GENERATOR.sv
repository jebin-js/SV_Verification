class generator;
  
  transaction trans;
  mailbox gentodri;
  virtual inter vif;
  
  int repeat_count;
  event ended;
  
  function new (mailbox gentodri, virtual inter vif);
    
    this.gentodri = gentodri;
    this.vif = vif;
    
  endfunction
  
  
  task main();
    
    repeat(repeat_count) begin
      
      trans = new();
    
      if(!trans.randomize())
        $fatal(1, "GENERATOR: Transaction randomization failed");
      
      $display("");
      $display("---------------------------------------------------------");
      trans.display("generator class signals");
      $display("");
      
      gentodri.put(trans);
      
    end
    
    -> ended;
    
  endtask
  
endclass
