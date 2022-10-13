module sq_wave_gen (
    input clk,
    input next_sample,
    output reg [9:0] code = 462
);
	reg [7:0] cycles=0;
	always @(posedge clk) begin
		if(next_sample==1) begin
			cycles<=cycles+1;
			if(cycles==138) begin
				cycles<=0;
				if(code==462)
					code<=562;
				else
					code<=462;
			end
		end
	end
endmodule