class driver;
  
  mailbox gentodri;
  virtual inter vif;
  event done;
  
  function new (mailbox gentodri, virtual inter vif, event done);
    
    this.gentodri = gentodri;
    this.vif = vif;
    this.done = done;
    
  endfunction
  
  task main();
    
    transaction trans;
    
    forever begin
    
    gentodri.get(trans);
    
    vif.a <= trans.a;
    vif.b <= trans.b;
    vif.cin <= trans.cin;
      
      #1;
      
      -> done;
      
      $display("");
      $display("---------------------------------------------------------");
      trans.display("driver class signals");
      $display("");
      
    end
    
  endtask
  
endclass

      
      
    
    
