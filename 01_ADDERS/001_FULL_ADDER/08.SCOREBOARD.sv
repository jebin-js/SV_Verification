class scoreboard;
  
  mailbox montoscr;

  function new (mailbox montoscr);
    
    this.montoscr = montoscr;
    
  endfunction
  
  task main();
    
    transaction trans;
    
    bit expected_sum;
    bit expected_carry;
    
    forever begin
      
    montoscr.get(trans);
    
   trans.display("Scoreboard Signals");
      
      expected_sum = trans.a ^ trans.b ^ trans.cin;
      expected_carry = (trans.a & trans.b) | (trans.b & trans.cin) | (trans.cin & trans.a);
      
      if((expected_sum == trans.sum) && (expected_carry == trans.carry)) begin
        
        $display("====================TEST PASSED========================");
        
      end
        
        else begin
          
        $display("====================TEST FAILED========================");
          
          $display("Expected : sum=%0b carry=%0b",
                  expected_sum, expected_carry);

          $display("Actual   : sum=%0b carry=%0b",
                  trans.sum, trans.carry);
          
        end
        
          $display("--------- Transaction Completed ---------");
        
      end
      
      endtask
      
      endclass



          
          
    
