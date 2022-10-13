module counter #(
    parameter CYCLES_PER_SECOND = 125_000_000
)(
    input clk,
    input [3:0] buttons,
    output [3:0] leds
);
    reg [3:0] counter = 0;
    assign leds = counter;
	reg count = 0;
	reg [26:0] cycles = 27'd0;
    always @(posedge clk) begin
        if (buttons[0])
            counter <= counter + 4'd1;
        else if (buttons[1])
            counter <= counter - 4'd1;
		else if (buttons[2])
			count<=~count;
        else if (buttons[3])
            counter <= 4'd0;
        else
			if(count==1) begin
		        cycles<=cycles+27'd1;
		        if(cycles==CYCLES_PER_SECOND-1) begin
		            cycles <= 0;
					counter <= counter + 4'd1;
		        end
        	end else
            	counter <= counter;
    end
endmodule

