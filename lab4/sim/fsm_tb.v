`timescale 1ns/1ns
`define CLK_PERIOD 8

module fsm_tb();
    // Generate 125 Mhz clock
    reg clk = 0;
    always #(`CLK_PERIOD/2) clk = ~clk;

    // I/O
    reg rst;
    reg [2:0] buttons;
    wire [23:0] fcw;
    wire [3:0] leds;
    wire [1:0] leds_state;

    fsm #(.CYCLES_PER_SECOND(125)) DUT (
        .clk(clk),
        .rst(rst),
        .buttons(buttons),
        .leds(leds),
        .leds_state(leds_state),
        .fcw(fcw)
    );

    defparam DUT.CYCLES_PER_SECOND = 125;

    initial begin
        `ifdef IVERILOG
            $dumpfile("fsm_tb.fst");
            $dumpvars(0, fsm_tb);
        `endif
        `ifndef IVERILOG
            $vcdpluson;
        `endif

        rst = 1;
        @(posedge clk); #1;
        rst = 0; //In the PAUSED state, the RAM address should be held steady at its value before the transition into PAUSED, and the NCO should freeze (e.g. set fcw to 0). After returning to the REGULAR_PLAY state, the RAM address should begin incrementing again from where it left off.
        // TODO: toggle the buttons
        // verify state transitions with the LEDs
        // verify fcw is being set properly by the FSM
        buttons=0;
        repeat(5) @(posedge clk);
        assert(fcw == 24'd60508) else $error("Starting fcw is wrong");
        assert(leds == 1) else $error("Starting led is wrong");
        repeat (130) @(posedge clk);
        assert(fcw == 24'd67934) else $error("Second fcw is wrong");
        assert(leds == 2) else $error("Second led is wrong");
        repeat (126) @(posedge clk);
        assert(fcw == 24'd71922) else $error("Third fcw is wrong");
        assert(leds == 4) else $error("Third led is wrong");
        repeat (126) @(posedge clk);
        assert(fcw == 24'd80723) else $error("Fourth fcw is wrong");
        assert(leds == 8) else $error("Fourth led is wrong");
        repeat(5) @(posedge clk);
        buttons[1] = 1;
        repeat(1) @(posedge clk);
        buttons[1]=0;
        repeat (126) @(posedge clk);
        assert(fcw == 24'd71922) else $error("Reverse failed");
        buttons[0]=1;
        repeat(1) @(posedge clk);
        buttons[0]=0;
        repeat(127) @(posedge clk);
        assert(fcw == 0) else $error("Shouldn't change while paused;");
        buttons[2]=1;
        repeat(1) @(posedge clk);
        buttons[2]=0;
        buttons[0]=1;
        repeat(1) @(posedge clk);
        buttons[0]=0;
        repeat(5) @(posedge clk);
        assert(fcw == 24'd70922) else $error("Editing is wrong");
        // fork
        //     begin

        //     end
        // join

        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule
