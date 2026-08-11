class monitor;
  
  mailbox montoscr;
  virtual inter vif;
  event done;
  
  function new(mailbox montoscr, virtual inter vif, event done);
    
    this.montoscr = montoscr;
    this.vif = vif;
    this.done = done;
    
  endfunction
  
  task main();
    
    forever begin
      
      transaction trans;
      
      @done;
      
      trans = new();
      
      trans.a = vif.a;
      trans.b = vif.b;
      trans.cin = vif.cin;
      trans.sum = vif.sum;
      trans.carry = vif.carry;
      
      montoscr.put(trans);
      
      $display("");
      $display("---------------------------------------------------------");
      trans.display("monitor class signals");
      $display("");
      $display("---------------------------------------------------------");
      
    end
    
  endtask
  
endclass
      
      
    
  
