module synchronizer #(parameter WIDTH = 1) (
    input [WIDTH-1:0] async_signal,
    input clk,
    output reg [WIDTH-1:0] sync_signal
);
    // TODO: Create your 2 flip-flop synchronizer here
    // This module takes in a vector of WIDTH-bit asynchronous
    // (from different clock domain or not clocked, such as button press) signals
    // and should output a vector of WIDTH-bit synchronous signals
    // that are synchronized to the input clk

    // Remove this line once you create your synchronizer
    genvar i;
    reg [WIDTH-1:0] q;
    generate 
        for(i=0; i<WIDTH; i=i+1) begin
            always @(posedge clk) begin
                q[i]<=async_signal[i];
            end
            always @(posedge clk) begin
                sync_signal[i]<=q[i];
            end
        end
    endgenerate
endmodule
