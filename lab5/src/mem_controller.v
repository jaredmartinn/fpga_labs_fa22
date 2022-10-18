module mem_controller #(
  parameter FIFO_WIDTH = 8
) (
  input clk,
  input rst,
  input rx_fifo_empty,
  input tx_fifo_full,
  input [FIFO_WIDTH-1:0] din,

  output reg rx_fifo_rd_en,
  output reg tx_fifo_wr_en,
  output [FIFO_WIDTH-1:0] dout,
  output [5:0] state_leds
);

  localparam MEM_WIDTH = 8;   /* Width of each mem entry (word) */
  localparam MEM_DEPTH = 256; /* Number of entries */
  localparam NUM_BYTES_PER_WORD = MEM_WIDTH/8;
  localparam MEM_ADDR_WIDTH = $clog2(MEM_DEPTH); 

  reg [NUM_BYTES_PER_WORD-1:0] mem_we = 0;
  reg [MEM_ADDR_WIDTH-1:0] mem_addr;
  wire [MEM_WIDTH-1:0] mem_din;
  wire [MEM_WIDTH-1:0] mem_dout;

  reg [FIFO_WIDTH-1:0] wrdata;  //data to be written

  assign dout = mem_dout;
  assign mem_din = wrdata;

  memory #(
    .MEM_WIDTH(MEM_WIDTH),
    .DEPTH(MEM_DEPTH)
  ) mem(
    .clk(clk),
    .en(1'b1),
    .we(mem_we),
    .addr(mem_addr),
    .din(mem_din),
    .dout(mem_dout)
  );

  localparam 
    IDLE = 3'd0,
    READ_CMD = 3'd1,
    READ_ADDR = 3'd2,
    READ_DATA = 3'd3,
    READ_MEM_VAL = 3'd4,
    ECHO_VAL = 3'd5,
    WRITE_MEM_VAL = 3'd6;

  reg [2:0] curr_state;
  reg [2:0] next_state;
  reg [MEM_WIDTH-1:0] rdwr; //for if read or write
  
  reg cmddone;
  reg addrdone;
  reg datadone;
  reg [100:0] buffer;
  reg beendone = 0;
  

  always @(posedge clk) begin

    /* state reg update */
    if(rst) begin
      curr_state<=IDLE;
    end
    else
      curr_state<=next_state;

  end

  reg [2:0] pkt_rd_cnt;
  reg [MEM_WIDTH-1:0] cmd;
  reg [MEM_WIDTH-1:0] addr;
  reg [MEM_WIDTH-1:0] data;
  reg handshake;

  reg echofinished;
  reg writefinished;


  always @(*) begin
    /* initial values to avoid latch synthesis */
    case (curr_state)
      /* next state logic */
      IDLE: begin
        if(!rx_fifo_empty) begin
          next_state = READ_CMD;
        end
        else begin
          next_state = IDLE;
        end
      end
      READ_CMD: begin
        if(!rx_fifo_empty) begin
          next_state = READ_ADDR;
        end
        else begin
          next_state = READ_CMD;
        end
      end
      READ_ADDR: begin
        if(rdwr == 8'd48 && addrdone) begin
          next_state = READ_MEM_VAL;
        end
        else if (rdwr == 8'd49 && !rx_fifo_empty) begin
          next_state = READ_DATA;
        end
        else begin
          next_state = READ_ADDR;
        end
      end
      READ_DATA: begin
        next_state = WRITE_MEM_VAL;
      end
      READ_MEM_VAL: begin
        next_state = ECHO_VAL;
      end
      WRITE_MEM_VAL: begin
        next_state = IDLE;
      end
      ECHO_VAL: begin
        next_state = IDLE;
      end
      default: begin
        next_state = IDLE;
      end
    endcase
  end

  always @(*) begin
    
    /* initial values to avoid latch synthesis */
    
    case (curr_state)
      /* output and mem signal logic */
      IDLE: begin
        echofinished = 0;
        writefinished = 0;
        //if(!rx_fifo_empty)
          rx_fifo_rd_en = 1;
        //else
          //rx_fifo_rd_en = 0;
          tx_fifo_wr_en = 0;
          mem_we = 0;
      end
      READ_CMD: begin
      end
      READ_ADDR: begin
      end
      READ_MEM_VAL: begin
      end
      ECHO_VAL: begin
        if(!tx_fifo_full) begin
          tx_fifo_wr_en = 1;
          echofinished = 1;
        end
      end
      READ_DATA: begin
      end
      WRITE_MEM_VAL: begin
        mem_we = 1;
        writefinished = 1;
      end
      default: begin
      end
    endcase

  end
  
  always @(posedge clk) begin
    if(rst) begin
      cmddone<=0;
      addrdone<=0;
      datadone<=0;
      rdwr<=0;
    end
      case (curr_state)
        IDLE: begin
          cmddone<=0;
          addrdone<=0;
          datadone<=0;
        end
        READ_CMD: begin
          if(!rx_fifo_empty && !cmddone) begin
              cmddone <= 1;
              rdwr <= din;
            end
        end
        READ_ADDR: begin
          if(!addrdone) begin
            mem_addr <= din;
            addrdone<=1;
          end
        end
        READ_DATA: begin
            wrdata <= din;
            datadone<=1;
        end
        ECHO_VAL: begin
          
        end
        default: begin
        end
      endcase
    end
    /* byte reading and packet counting */

  /* TODO: MODIFY THIS */
  assign state_leds = 'd0;

endmodule
