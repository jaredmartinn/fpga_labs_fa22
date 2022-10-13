module edge_detector #(
    parameter WIDTH = 1
)(
    input clk,
    input [WIDTH-1:0] signal_in,
    output reg [WIDTH-1:0] edge_detect_pulse
);
    // TODO: implement a multi-bit edge detector that detects a rising edge of 'signal_in[x]'
    // and outputs a one-cycle pulse 'edge_detect_pulse[x]' at the next clock edge
    // Feel free to use as many number of registers you like

    // Remove this line once you create your edge detector
    reg [WIDTH-1:0] q;
	//genvar i;
	integer i;
	always @(posedge clk) begin
	    for(i=0; i<WIDTH; i=i+1) begin
			if (q[i]==0 && signal_in[i]==1) begin
				edge_detect_pulse[i]=1;
			end else begin
				edge_detect_pulse[i]=0;
			end
		end
	q<=signal_in;
	end
endmodule
