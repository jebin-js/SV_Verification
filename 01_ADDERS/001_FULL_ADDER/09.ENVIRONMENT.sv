`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  
  virtual inter vif;
  
  generator gen;
  driver dri;
  monitor mon;
  scoreboard scr;
  event done;
  
  mailbox gentodri;
  mailbox montoscr;
  
  function new(virtual inter vif);
    
    this.vif = vif;
    
    gentodri = new();
    montoscr = new();
    
    gen = new(gentodri, vif);
    dri = new(gentodri,vif, done);
    mon = new( montoscr,vif, done);
    scr = new(montoscr);
    
  endfunction
  
  task run();
     
    fork
      
      gen.main();
      dri.main();
      mon.main();
      scr.main();
      
    join
    
  endtask
  
endclass
      
