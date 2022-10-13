module fsm #(
    parameter CYCLES_PER_SECOND = 125_000_000,
    parameter WIDTH = $clog2(CYCLES_PER_SECOND)
)(
    input clk,
    input rst,
    input [2:0] buttons,
    output reg [3:0] leds,
    output reg [23:0] fcw,
    output [1:0] leds_state
);

    //stuff I made
    reg [23:0] next_fcw;
    //assign fcw = fcwval;
    reg [1:0] curr_state, next_state, adder, next_adder;
    reg [3:0] next_leds;
    parameter REG_PLAY = 2'b00;
    parameter PAUSE = 2'b01;
    parameter REV_PLAY = 2'b10;
    parameter EDIT = 2'b11; 
    //assign leds = adder;
    assign leds_state = curr_state;

    wire [1:0] addr;
    wire wr_en, rd_en;
    wire [23:0] d_in, d_out;

    reg wren, rden;
    assign wr_en = wren;
    assign rd_en = rden;
    //assign fcw = d_out;

    //reg [1:0] adder = 0;
    assign addr=adder;

    fcw_ram notes (
        .clk(clk),
        .rst(rst),
        .rd_en(rd_en),
        .wr_en(wr_en),
        .addr(addr),
        .d_in(d_in),
        .d_out(d_out)
    );

    reg [WIDTH:0] cycles1;
    reg notpaused;
    reg cyclerst;
    reg increase;
    reg editincrease, editdecrease;


    always @(posedge clk) begin
        if(rst) begin
            curr_state<=REG_PLAY;
            adder<=0;
            notpaused<=1;
            cyclerst<=0;
            leds<=1;
            cycles1<=0;
            wren<=0;
            rden<=1;
        end
        else begin
            if(notpaused) begin
                if(cyclerst) begin
                    cycles1<=0;
                    cyclerst<=0;
                end
                else
                    cycles1<=cycles1+1;
            end
            curr_state<=next_state;
            adder<=next_adder;
            leds<=next_leds;
            fcw<=next_fcw;
        end
    end

    always @(*) begin
        case(curr_state)
            REG_PLAY: begin
                //$display(leds);
                increase=1;
                notpaused=1;
                next_fcw=d_out;
                next_adder=adder;
                next_leds=leds;
                if(cycles1==CYCLES_PER_SECOND-1) begin
                    //$display("here");
                    cyclerst=1;
                    if (leds==8)
                        next_leds=1;
                    else
                        next_leds=leds<<1;
                    next_adder=adder+1;
                end
                if(buttons[0]) begin
                    next_state=PAUSE;
                end
                else if(buttons[1])
                    next_state=REV_PLAY;
                else
                    next_state=REG_PLAY;
            end
            PAUSE: begin
                notpaused=0;
                //$display("paused");
                next_fcw=0;
                next_adder=adder;
                next_leds=leds;
                if(buttons[0])
                    next_state=REG_PLAY;
                else if(buttons[2])
                    next_state=EDIT;
                else
                    next_state=PAUSE;
            end
            REV_PLAY: begin
                increase=0;
                notpaused=1;
                next_fcw=d_out;
                next_adder=adder;
                next_leds=leds;
                if(cycles1==CYCLES_PER_SECOND-1) begin
                    cyclerst=1;
                    if (leds==1)
                        next_leds=8;
                    else
                        next_leds=leds>>1;
                    next_adder=adder-1;
                end
                if(buttons[0])
                    next_state=PAUSE;
                else if(buttons[1])
                    next_state=REG_PLAY;
                else
                    next_state=REV_PLAY;
            end
            EDIT: begin
                next_adder=adder;
                next_leds=leds;
                if (fcw==0)
                    next_fcw=d_out;
                else
                    next_fcw=fcw;
                if(buttons[0]) begin
                    next_fcw=next_fcw-1000;
                end
                else if(buttons[1]) begin
                    next_fcw=next_fcw+1000;
                end
                if (buttons[2])
                    next_state=PAUSE;
                else
                    next_state=EDIT;
            end
        endcase
    end
endmodule
