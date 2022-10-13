module structural_adder (
    input [13:0] a,
    input [13:0] b,
    output [14:0] sum
);
	wire[14:0] c;
	assign c[0]=0;  
    genvar i;
    generate
        for (i = 0; i < 14 ; i = i + 1) begin:nameofthisloop
            full_adder a0 (.sum(sum[i]), .carry_out(c[i+1]), .a(a[i]), .b(b[i]), .carry_in(c[i]));
        end
    endgenerate
	assign sum[14]=c[14];
endmodule
