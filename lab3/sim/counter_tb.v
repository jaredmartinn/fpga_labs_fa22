`timescale 1ns/1ns

`define SECOND 1000000000
`define MS 1000000

module counter_tb();
	reg clk = 0;
    reg [3:0] buttons;
    wire [3:0] leds;

	counter ctr(.clk(clk), .buttons(buttons), .leds(leds));
    defparam ctr.CYCLES_PER_SECOND = 100;

    always #(4) clk <= ~clk;

    initial begin
        `ifdef IVERILOG
            $dumpfile("counter_tb.fst");
            $dumpvars(0, counter_tb);
        `endif
        `ifndef IVERILOG
            $vcdpluson;
        `endif

        buttons[0]=1;
        buttons[1]=0;
        buttons[2]=0;
        buttons[3]=0;
        repeat (2) @(posedge clk);
        assert(leds==1) else $display ("ERROR: Expected LED 0 to be on");
        buttons[0]=0;
        buttons[1]=1;
        repeat (1) @(posedge clk);
        assert(leds==0) else $display ("ERROR: Expected LED 0 to be off");
        buttons[1]=0;
        buttons[2]=1;
        repeat (1) @(posedge clk);
        buttons[2]=0;
        repeat (202) @(posedge clk);
        assert(leds==2) else $display ("ERROR: Expected LED 0 and 1 to be on");
        buttons[2]=1;
		repeat (1) @(posedge clk);
        buttons[2]=0;
        repeat (101) @(posedge clk);
        assert(leds==2) else $display ("ERROR: Expected no change once button 2 is pressed");
        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule
