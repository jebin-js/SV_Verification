`include "environment.sv"

program test (inter vif);

  environment env;

  initial begin
    env = new(vif);
    env.gen.repeat_count = 10;

    env.run();

    // Wait for the generator to finish producing all transactions
    wait(env.gen.ended.triggered);

    // Optional: give driver/monitor/scoreboard a little time to finish processing the last transaction
    #20;
  end

endprogram
