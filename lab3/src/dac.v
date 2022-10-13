module dac #(
    parameter CYCLES_PER_WINDOW = 1024,
    parameter CODE_WIDTH = $clog2(CYCLES_PER_WINDOW)
)(
    input clk,
    input [CODE_WIDTH-1:0] code,
    output next_sample,
    output pwm
);
	reg [CODE_WIDTH-1:0] i;
	assign next_sample = i==CYCLES_PER_WINDOW-1 ? 1:0;
	assign pwm = i<=code && code!=0? 1: 0;
	always @(posedge clk) begin
		if (i==CYCLES_PER_WINDOW-1) begin
			i<=0;
		end
		i<=i+1;
	end
	


endmodule
