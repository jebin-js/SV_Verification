class monitor;
  
  transaction trans;
  mailbox monitoscor;
  
  virtual inter vif;
    
    function new (virtual inter vif, mailbox monitoscor);
      
      this.monitoscor = monitoscor;
      this.vif = vif;
      
    endfunction
      
      task main();
        
        forever begin
          
          @vif.cb;
          
          trans = new();
          
          trans.d <= vif.d;
          trans.rst <= vif.rst;
          trans.q <= vif.cb.q;
          
          $display("-------------------------------------------------------");
        $display("\n");
          $display("[MONITOR]: Time=%0t | clk=%0b | rst=%0b | d=%0b | q=%0b", $time, vif.clk, trans.rst, trans.q, trans.d);
        
          
          monitoscor.put(trans);
          
          end
        
      endtask
      
      endclass
          
          
      
      
      
      
      
      
      
