class scoreboard;

  mailbox monitoscor;
  virtual inter vif;
  
  function new (virtual inter vif, mailbox monitoscor);
    
    this.vif = vif;
    this.monitoscor = monitoscor;
    
  endfunction
  
  task main();
    
    transaction trans;
    bit expected_q;
    
    forever begin
      
      monitoscor.get(trans);
    
   //expected output
      
    if(trans.rst)
      
      expected_q = 0;
    
    else
      
      expected_q = trans.d;
      
   // Compare actual and expected output
      
      if(trans.q == expected_q) begin
        
        $display("[SCOREBOARD] Time=%0t | rst=%0b | d=%0b | q=%0b | expected=%0b | TEST PASSED", $time, trans.rst, trans.d, trans.q, expected_q);
        
      end
      
      else begin
          
          $error("[SCOREBOARD] Time=%0t | rst=%0b | d=%0b | q=%0b | expected=%0b | TEST FAILED", $time, trans.rst, trans.d, trans.q, expected_q);
        
      end
      
    end
    
  endtask
  
endclass
    
    
  
  
