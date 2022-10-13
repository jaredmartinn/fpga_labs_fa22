module sq_wave_gen #(
    parameter STEP = 10
)(
    input clk,
    input rst,
    input next_sample,
    input [2:0] buttons,
    output reg [9:0] code,
    output [3:0] leds
);
    //assign leds = 0;
	reg [3:0] light;
	assign leds=light;
	reg [7:0] cycles;
	reg [13:0] frequency;
	reg [13:0] period;
	always @(posedge clk) begin
		if (rst) begin
			cycles<=0;	
			code<=462;
			light<=0;
			frequency<=440;
			period<=138;
		end
		if(buttons[0]) begin
			if(leds==1)
				period<=period>>1;
			else
				period<=period-STEP;
		end
		if(buttons[1]) begin
			if(leds==1)
				period<=period<<1;
			else
				period<=period+STEP;
		end
		if(buttons[2]) begin
			if (light==1)
				light<=0;
			else
				light<=1;
		end
		if(next_sample==1) begin
			cycles<=cycles+1;
			if(cycles==period) begin
				cycles<=0;
				if(code==462)
					code<=562;
				else
					code<=462;
			end
		end
	end
endmodule
