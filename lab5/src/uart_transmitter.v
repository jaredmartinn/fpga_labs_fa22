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


    reg [CLOCK_COUNTER_WIDTH+1:0] clock_counter;
    reg [9:0] rx_shift;
    wire rx_running;
    wire start;
    reg [3:0] bit_counter;
    
    wire symbol_edge;
    assign symbol_edge = clock_counter == (SYMBOL_EDGE_TIME - 1);

    assign rx_running = bit_counter != 4'd0;
    assign start = data_in_valid && !rx_running;

    //Output
    assign data_in_ready = !rx_running;
    assign serial_out = rx_shift[0];


    always @ (posedge clk) begin
        clock_counter <= (start || reset || symbol_edge) ? 0 : clock_counter + 1;
    end

    always @(posedge clk) begin
        if (symbol_edge && rx_running) begin 
            rx_shift <= {0, rx_shift[9:1]};
        end
    end

    always @ (posedge clk) begin
        if (reset) begin
            bit_counter <= 0;
            rx_shift<=10'b1;
        end else if (start) begin
            rx_shift<={1, data_in[7:0], 1'b0};
            bit_counter <= 10;
        end else if (symbol_edge && rx_running) begin
            bit_counter <= bit_counter - 1;
        end else if (bit_counter==0) begin
            rx_shift<=10'b1;
        end
    end
endmodule
