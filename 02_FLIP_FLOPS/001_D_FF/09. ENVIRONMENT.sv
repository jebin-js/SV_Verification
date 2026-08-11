`include "Transaction.sv"
`include "Generator.sv"
`include "Driver.sv"
`include "monitor.sv"
`include "Scoreboard.sv"

class environment;

    virtual inter vif;

    generator  gen;
    driver     drv;
    monitor    mon;
    scoreboard scb;

    mailbox gentodri;
    mailbox monitoscor;

    function new(virtual inter vif);

        this.vif = vif;

        gentodri  = new();
        monitoscor = new();

        gen = new(gentodri, vif);
        drv = new(vif, gentodri);
        mon = new(vif, monitoscor);
        scb = new(vif, monitoscor);

    endfunction

    task run();

        fork
            gen.main();
            drv.main();
            mon.main();
            scb.main();
        join_none

    endtask

endclass
