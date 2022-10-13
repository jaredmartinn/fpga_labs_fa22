module uart_transmitter #(
    parameter CLOCK_FREQ = 125_000_000,
    parameter BAUD_RATE = 115_200)
(
    input clk,
    input reset,

    input [7:0] data_in,
    input data_in_valid,    //checks if still in idle
    output data_in_ready,

    output serial_out
);
    // See diagram in the lab guide
    localparam  SYMBOL_EDGE_TIME    =   CLOCK_FREQ / BAUD_RATE;
    localparam  CLOCK_COUNTER_WIDTH =   $clog2(SYMBOL_EDGE_TIME);

    reg [CLOCK_COUNTER_WIDTH+1:0] cycles;
    reg ready;
    reg [3:0] i;
    reg out;
    assign data_in_ready = ready;
    assign serial_out = out;
    always @(posedge clk) begin
        if(reset) begin
            cycles<=0;
            i<=0;
            out<=1;
        end
        else if (i==0) begin
            out<=0;
        end
        else if (i==9)
            out<=1;
        else
            out<=data_in[i-1];
        if(!reset) begin
            ready<=0;
            cycles<=cycles+1;
        end
        if (cycles==SYMBOL_EDGE_TIME-2) begin
            // if(i>=1 && i<9)
            //     $display(data_in[i-1]);
            cycles<=0;
            if (i==9) begin
                //$display(4);
                ready<=1;
                i<=0;
            end
            i<=i+1;
        end
    end
endmodule
