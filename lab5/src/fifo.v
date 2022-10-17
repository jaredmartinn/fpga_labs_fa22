module fifo #(
    parameter WIDTH = 8,        //bits per entry
    parameter DEPTH = 32,   //numentries
    parameter POINTER_WIDTH = $clog2(DEPTH)
) (
    input clk, rst,

    // Write side
    input wr_en,
    input [WIDTH-1:0] din,
    output full,

    // Read side
    input rd_en,
    output [WIDTH-1:0] dout,
    output empty
);
    reg [WIDTH-1:0] buffer [DEPTH-1:0];
    reg [POINTER_WIDTH-1:0] wrpnt;
    reg [POINTER_WIDTH-1:0] rdpnt;
    reg [WIDTH-1:0] out;
    reg wrflipbit;
    reg rdflipbit;
    assign full = wrpnt==rdpnt && wrflipbit!=rdflipbit;
    assign empty = rdpnt==wrpnt && wrflipbit==rdflipbit;
    assign dout = out;
    always @(posedge clk) begin
        if(rst) begin
            wrpnt<=0;
            rdpnt<=0;
            wrflipbit<=0;
            rdflipbit<=0;
            out<=0;
        end
        if(wr_en && !full) begin
            buffer[wrpnt] <= din;
            if (wrpnt+1==DEPTH) begin
                wrpnt<=0;
                wrflipbit<=!wrflipbit;
            end
            else
                wrpnt<=wrpnt+1;
        end
        if(rd_en && !empty) begin
            if (rdpnt+1==DEPTH) begin
                rdpnt<=0;
                rdflipbit<=!rdflipbit;
            end
            else
                rdpnt<=rdpnt+1;
            out<=buffer[rdpnt];
        end
    end
endmodule
