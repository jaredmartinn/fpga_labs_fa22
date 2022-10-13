module debouncer #(
    parameter WIDTH              = 1,
    parameter SAMPLE_CNT_MAX     = 62500,
    parameter PULSE_CNT_MAX      = 200,
    parameter WRAPPING_CNT_WIDTH = $clog2(SAMPLE_CNT_MAX),
    parameter SAT_CNT_WIDTH      = $clog2(PULSE_CNT_MAX) + 1
) (
    input clk,
    input [WIDTH-1:0] glitchy_signal,
    output [WIDTH-1:0] debounced_signal
);
    // TODO: fill in neccesary logic to implement the wrapping counter and the saturating counters
    // Some initial code has been provided to you, but feel free to change it however you like
    // One wrapping counter is required
    // One saturating counter is needed for each bit of glitchy_signal
    // You need to think of the conditions for reseting, clock enable, etc. those registers
    // Refer to the block diagram in the spec

    // Remove this line once you have created your debouncer
	reg [WRAPPING_CNT_WIDTH-1:0] cycles = 0;
	reg [SAT_CNT_WIDTH-1:0] sat_cnt [WIDTH-1:0];
	integer k;
	initial begin
	  for (k = 0; k < WIDTH; k = k + 1) begin
		sat_cnt[k] = 0;
	  end
	end
	integer i;
	always @(posedge clk) begin
		cycles<=cycles+1;
		if (cycles==SAMPLE_CNT_MAX) begin
			for(i=0; i<WIDTH; i=i+1) begin
				if (glitchy_signal[i]!=1) begin	
					sat_cnt[i]=0;
				end else begin
					if (sat_cnt[i]!=PULSE_CNT_MAX) begin
						sat_cnt[i]=sat_cnt[i]+1;
					end
				end
			end
		end
	end
	genvar n;
	generate
		for(n=0; n<WIDTH; n=n+1) begin:name
			assign debounced_signal[n] = sat_cnt[n]==PULSE_CNT_MAX? 1: 0;
		end
	endgenerate
endmodule
