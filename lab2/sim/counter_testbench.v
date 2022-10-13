`timescale 1ns/1ns

`define SECOND 1000000000
`define MS 1000000

module counter_testbench();
    reg clock = 0;
    reg ce;
    wire [3:0] LEDS;

    counter ctr (
        .clk(clock),
        .ce(ce),
        .LEDS(LEDS)
    );

    // Notice that this code causes the `clock` signal to constantly
    // switch up and down every 4 time steps.
    always #(4) clock <= ~clock;

    initial begin
        `ifdef IVERILOG
            $dumpfile("counter_testbench.fst");
            $dumpvars(0, counter_testbench);
        `endif
        `ifndef IVERILOG
            $vcdpluson;
        `endif

        // TODO: Change input values and step forward in time to test
        // your counter and its clock enable/disable functionality.
		ce=1;
		repeat (125001) @(posedge clock);
		assert(LEDS==1) else $display ("ERROR: Expected LED 0 to be on");
		repeat (125000) @(posedge clock);
		assert(LEDS==2) else $display ("ERROR: Expected LED 1 to be on");

		ce=0;
		repeat (125000) @(posedge clock);
		assert(LEDS==2) else $display ("ERROR: Expected LED 2 to be off");

        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule

