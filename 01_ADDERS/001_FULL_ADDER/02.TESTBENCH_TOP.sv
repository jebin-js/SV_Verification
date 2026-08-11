`include "interface.sv"
`include "test.sv"


module top_testbench;
  
  inter vif();
  
  test test1(vif);
  
  full_adder DUT (
    
    .a(vif.a),
    .b(vif.b),
    .cin(vif.cin),
    .sum(vif.sum),
    .carry(vif.carry)
    
  );
  
    initial
    begin

        $dumpfile("dump.vcd");
        $dumpvars;
        #250 $finish;
    end

endmodule
