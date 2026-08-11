Loading snapshot worklib.top_tb:sv .................... Done
SVSEED default: 1
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
-------------------------------------------------------


[GENERATOR]: Time=5 | clk=1 | rst=1 | d=0 | q=1

-------------------------------------------------------


[MONITOR]: Time=5 | clk=1 | rst=0 | d=0 | q=0
[SCOREBOARD] Time=5 | rst=0 | d=0 | q=0 | expected=0 | TEST PASSED
-------------------------------------------------------


[GENERATOR]: Time=15 | clk=1 | rst=0 | d=0 | q=0

-------------------------------------------------------


[MONITOR]: Time=15 | clk=1 | rst=0 | d=0 | q=0
-------------------------------------------------------


[DRIVER    ] Time=15 | clk=1 | rst=1 | d=1 | q=0
[SCOREBOARD] Time=15 | rst=0 | d=0 | q=0 | expected=0 | TEST PASSED
-------------------------------------------------------


[GENERATOR]: Time=25 | clk=1 | rst=1 | d=0 | q=0

-------------------------------------------------------


[MONITOR]: Time=25 | clk=1 | rst=0 | d=0 | q=0
-------------------------------------------------------


[DRIVER    ] Time=25 | clk=1 | rst=0 | d=0 | q=0
[SCOREBOARD] Time=25 | rst=0 | d=0 | q=0 | expected=0 | TEST PASSED
-------------------------------------------------------


[GENERATOR]: Time=35 | clk=1 | rst=0 | d=0 | q=0

-------------------------------------------------------


[MONITOR]: Time=35 | clk=1 | rst=0 | d=0 | q=0
-------------------------------------------------------


[DRIVER    ] Time=35 | clk=1 | rst=1 | d=0 | q=0
[SCOREBOARD] Time=35 | rst=0 | d=0 | q=0 | expected=0 | TEST PASSED
-------------------------------------------------------


[GENERATOR]: Time=45 | clk=1 | rst=0 | d=0 | q=0

-------------------------------------------------------


[MONITOR]: Time=45 | clk=1 | rst=0 | d=0 | q=0
-------------------------------------------------------


[DRIVER    ] Time=45 | clk=1 | rst=0 | d=0 | q=0
[SCOREBOARD] Time=45 | rst=0 | d=0 | q=0 | expected=0 | TEST PASSED
-------------------------------------------------------


[MONITOR]: Time=55 | clk=1 | rst=0 | d=0 | q=0
-------------------------------------------------------


[DRIVER    ] Time=55 | clk=1 | rst=0 | d=0 | q=0
[SCOREBOARD] Time=55 | rst=0 | d=0 | q=0 | expected=0 | TEST PASSED
Simulation complete via implicit call to $finish(1) at time 65 NS + 3
./test.sv:3 program test (inter vif);
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Aug 11, 2026 at 11:13:22 EDT  (total: 00:00:02)
Done
