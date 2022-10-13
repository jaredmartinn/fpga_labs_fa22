module nco(
    input clk,
    input rst,
    input [23:0] fcw,
    input next_sample,
    output [9:0] code
);
    reg [23:0] i;
    reg [9:0] sine_lut [0:255];
    initial begin
        $readmemb("sine.bin", sine_lut);
    end
    assign code = sine_lut[i[23:16]];
    always @(posedge clk) begin
        if (rst)
            i<=0;
        if (next_sample) begin
            i<=i+fcw;
        end
    end

endmodule