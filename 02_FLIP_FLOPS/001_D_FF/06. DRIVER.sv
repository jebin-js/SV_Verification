class driver;
  
  virtual inter vif;
  mailbox gentodri;
  
  function new(virtual inter vif, mailbox gentodri);
    
    this.gentodri = gentodri;
    this.vif = vif;
    
  endfunction
  
  task reset();
    
    vif.cb.rst <= 1;
    vif.cb.d <= 0;
    
    @vif.cb;
    
    vif.cb.rst <= 0;
    
    @vif.cb;
    
  endtask
  
  task main();
    
    transaction trans;
    
    forever begin
      
      gentodri.get(trans);
      
      @vif.cb;
      
      vif.cb.d <= trans.d;
      vif.cb.rst <= trans.rst;
      
      $display("-------------------------------------------------------");
      $display("\n");
      $display("[DRIVER    ] Time=%0t | clk=%0b | rst=%0b | d=%0b | q=%0b",
                      $time,
                      vif.clk,
                      trans.rst,
                      trans.d,
                      trans.q);
      
      trans.q = vif.cb.q;
      
    end
    
  endtask
  
endclass
    
  
  
