class generator;
  
  transaction trans;
  mailbox gentodri;
  
  virtual inter vif;
  int repeat_count;
  event ended;
  
  function new(mailbox gentodri, virtual inter vif);
    
    this.gentodri = gentodri;
    this.vif = vif;
    
  endfunction
  
  task main();
    
    repeat(repeat_count)
      begin
        
        @vif.cb;
        trans = new();
        
        if(!trans.randomize())
          $fatal(1, "GENERATOR: Transaction randomization failed");
        
        $display("-------------------------------------------------------");
        $display("\n");
        $display("[GENERATOR]: Time=%0t | clk=%0b | rst=%0b | d=%0b | q=%0b\n",
                 $time, vif.clk, trans.rst, trans.q, trans.d);
        
        gentodri.put(trans);
        
      end
    
    -> ended;
    
  endtask
  
endclass
  
  
