// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct 18 13:53:32 2022
// Host        : c111-7.eecs.berkeley.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -file post_synth.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (\edge_detect_pulse_reg[0] ,
    tx_fifo_empty_delayed_reg,
    tx_fifo_empty_delayed_reg_0,
    SR,
    \edge_detect_pulse_reg[0]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    BUTTONS_IBUF,
    tx_fifo_empty_delayed,
    \rx_shift_reg[0] ,
    Q,
    rdpnt02_out,
    rdpnt02_out_0);
  output \edge_detect_pulse_reg[0] ;
  output tx_fifo_empty_delayed_reg;
  output tx_fifo_empty_delayed_reg_0;
  output [0:0]SR;
  output [0:0]\edge_detect_pulse_reg[0]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]BUTTONS_IBUF;
  input tx_fifo_empty_delayed;
  input \rx_shift_reg[0] ;
  input [1:0]Q;
  input rdpnt02_out;
  input rdpnt02_out_0;

  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]Q;
  wire [0:0]SR;
  wire button_edge_detector_n_0;
  wire [0:0]debounced_signals;
  wire \edge_detect_pulse_reg[0] ;
  wire [0:0]\edge_detect_pulse_reg[0]_0 ;
  wire [0:0]p_6_out;
  wire rdpnt02_out;
  wire rdpnt02_out_0;
  wire \rx_shift_reg[0] ;
  wire [0:0]synchronized_signals;
  wire tx_fifo_empty_delayed;
  wire tx_fifo_empty_delayed_reg;
  wire tx_fifo_empty_delayed_reg_0;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .debounced_signals(debounced_signals),
        .\edge_detect_pulse_reg[0] (button_edge_detector_n_0),
        .p_6_out(p_6_out),
        .synchronized_signals(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(Q),
        .SR(SR),
        .debounced_signals(debounced_signals),
        .\edge_detect_pulse_reg[0]_0 (\edge_detect_pulse_reg[0] ),
        .\edge_detect_pulse_reg[0]_1 (\edge_detect_pulse_reg[0]_0 ),
        .p_6_out(p_6_out),
        .\q_reg[0]_0 (button_edge_detector_n_0),
        .rdpnt02_out(rdpnt02_out),
        .rdpnt02_out_0(rdpnt02_out_0),
        .\rx_shift_reg[0] (\rx_shift_reg[0] ),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed),
        .tx_fifo_empty_delayed_reg(tx_fifo_empty_delayed_reg),
        .tx_fifo_empty_delayed_reg_0(tx_fifo_empty_delayed_reg_0));
  synchronizer button_synchronizer
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .synchronized_signals(synchronized_signals));
endmodule

module debouncer
   (debounced_signals,
    p_6_out,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    synchronized_signals,
    \edge_detect_pulse_reg[0] );
  output [0:0]debounced_signals;
  output [0:0]p_6_out;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]synchronized_signals;
  input \edge_detect_pulse_reg[0] ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire \cycles[0]_i_2_n_0 ;
  wire [15:0]cycles_reg;
  wire \cycles_reg[0]_i_1_n_0 ;
  wire \cycles_reg[0]_i_1_n_1 ;
  wire \cycles_reg[0]_i_1_n_2 ;
  wire \cycles_reg[0]_i_1_n_3 ;
  wire \cycles_reg[0]_i_1_n_4 ;
  wire \cycles_reg[0]_i_1_n_5 ;
  wire \cycles_reg[0]_i_1_n_6 ;
  wire \cycles_reg[0]_i_1_n_7 ;
  wire \cycles_reg[12]_i_1_n_1 ;
  wire \cycles_reg[12]_i_1_n_2 ;
  wire \cycles_reg[12]_i_1_n_3 ;
  wire \cycles_reg[12]_i_1_n_4 ;
  wire \cycles_reg[12]_i_1_n_5 ;
  wire \cycles_reg[12]_i_1_n_6 ;
  wire \cycles_reg[12]_i_1_n_7 ;
  wire \cycles_reg[4]_i_1_n_0 ;
  wire \cycles_reg[4]_i_1_n_1 ;
  wire \cycles_reg[4]_i_1_n_2 ;
  wire \cycles_reg[4]_i_1_n_3 ;
  wire \cycles_reg[4]_i_1_n_4 ;
  wire \cycles_reg[4]_i_1_n_5 ;
  wire \cycles_reg[4]_i_1_n_6 ;
  wire \cycles_reg[4]_i_1_n_7 ;
  wire \cycles_reg[8]_i_1_n_0 ;
  wire \cycles_reg[8]_i_1_n_1 ;
  wire \cycles_reg[8]_i_1_n_2 ;
  wire \cycles_reg[8]_i_1_n_3 ;
  wire \cycles_reg[8]_i_1_n_4 ;
  wire \cycles_reg[8]_i_1_n_5 ;
  wire \cycles_reg[8]_i_1_n_6 ;
  wire \cycles_reg[8]_i_1_n_7 ;
  wire [0:0]debounced_signals;
  wire \edge_detect_pulse_reg[0] ;
  wire [8:0]p_0_in;
  wire [0:0]p_6_out;
  wire \q[0]_i_2_n_0 ;
  wire \sat_cnt[0][8]_i_10_n_0 ;
  wire \sat_cnt[0][8]_i_1_n_0 ;
  wire \sat_cnt[0][8]_i_2_n_0 ;
  wire \sat_cnt[0][8]_i_4_n_0 ;
  wire \sat_cnt[0][8]_i_5_n_0 ;
  wire \sat_cnt[0][8]_i_6_n_0 ;
  wire \sat_cnt[0][8]_i_7_n_0 ;
  wire \sat_cnt[0][8]_i_8_n_0 ;
  wire \sat_cnt[0][8]_i_9_n_0 ;
  wire [8:0]\sat_cnt_reg[0]_0 ;
  wire [0:0]synchronized_signals;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycles[0]_i_2 
       (.I0(cycles_reg[0]),
        .O(\cycles[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[0]_i_1_n_7 ),
        .Q(cycles_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\cycles_reg[0]_i_1_n_0 ,\cycles_reg[0]_i_1_n_1 ,\cycles_reg[0]_i_1_n_2 ,\cycles_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\cycles_reg[0]_i_1_n_4 ,\cycles_reg[0]_i_1_n_5 ,\cycles_reg[0]_i_1_n_6 ,\cycles_reg[0]_i_1_n_7 }),
        .S({cycles_reg[3:1],\cycles[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[8]_i_1_n_5 ),
        .Q(cycles_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[8]_i_1_n_4 ),
        .Q(cycles_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[12]_i_1_n_7 ),
        .Q(cycles_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[12]_i_1 
       (.CI(\cycles_reg[8]_i_1_n_0 ),
        .CO({\cycles_reg[12]_i_1_n_1 ,\cycles_reg[12]_i_1_n_2 ,\cycles_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_reg[12]_i_1_n_4 ,\cycles_reg[12]_i_1_n_5 ,\cycles_reg[12]_i_1_n_6 ,\cycles_reg[12]_i_1_n_7 }),
        .S(cycles_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[12]_i_1_n_6 ),
        .Q(cycles_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[12]_i_1_n_5 ),
        .Q(cycles_reg[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[12]_i_1_n_4 ),
        .Q(cycles_reg[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[0]_i_1_n_6 ),
        .Q(cycles_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[0]_i_1_n_5 ),
        .Q(cycles_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[0]_i_1_n_4 ),
        .Q(cycles_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[4]_i_1_n_7 ),
        .Q(cycles_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[4]_i_1 
       (.CI(\cycles_reg[0]_i_1_n_0 ),
        .CO({\cycles_reg[4]_i_1_n_0 ,\cycles_reg[4]_i_1_n_1 ,\cycles_reg[4]_i_1_n_2 ,\cycles_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_reg[4]_i_1_n_4 ,\cycles_reg[4]_i_1_n_5 ,\cycles_reg[4]_i_1_n_6 ,\cycles_reg[4]_i_1_n_7 }),
        .S(cycles_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[4]_i_1_n_6 ),
        .Q(cycles_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[4]_i_1_n_5 ),
        .Q(cycles_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[4]_i_1_n_4 ),
        .Q(cycles_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[8]_i_1_n_7 ),
        .Q(cycles_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[8]_i_1 
       (.CI(\cycles_reg[4]_i_1_n_0 ),
        .CO({\cycles_reg[8]_i_1_n_0 ,\cycles_reg[8]_i_1_n_1 ,\cycles_reg[8]_i_1_n_2 ,\cycles_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_reg[8]_i_1_n_4 ,\cycles_reg[8]_i_1_n_5 ,\cycles_reg[8]_i_1_n_6 ,\cycles_reg[8]_i_1_n_7 }),
        .S(cycles_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[8]_i_1_n_6 ),
        .Q(cycles_reg[9]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \edge_detect_pulse[0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [8]),
        .I1(\sat_cnt_reg[0]_0 [5]),
        .I2(\sat_cnt_reg[0]_0 [3]),
        .I3(\q[0]_i_2_n_0 ),
        .I4(\edge_detect_pulse_reg[0] ),
        .O(p_6_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \q[0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [8]),
        .I1(\sat_cnt_reg[0]_0 [5]),
        .I2(\sat_cnt_reg[0]_0 [3]),
        .I3(\q[0]_i_2_n_0 ),
        .O(debounced_signals));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \q[0]_i_2 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [4]),
        .I3(\sat_cnt_reg[0]_0 [2]),
        .I4(\sat_cnt_reg[0]_0 [7]),
        .I5(\sat_cnt_reg[0]_0 [6]),
        .O(\q[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[0][0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[0][1]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [1]),
        .I1(\sat_cnt_reg[0]_0 [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[0][2]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [2]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[0][3]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [3]),
        .I1(\sat_cnt_reg[0]_0 [0]),
        .I2(\sat_cnt_reg[0]_0 [1]),
        .I3(\sat_cnt_reg[0]_0 [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sat_cnt[0][4]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [2]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [0]),
        .I3(\sat_cnt_reg[0]_0 [3]),
        .I4(\sat_cnt_reg[0]_0 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[0][5]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [5]),
        .I1(\sat_cnt_reg[0]_0 [2]),
        .I2(\sat_cnt_reg[0]_0 [1]),
        .I3(\sat_cnt_reg[0]_0 [0]),
        .I4(\sat_cnt_reg[0]_0 [3]),
        .I5(\sat_cnt_reg[0]_0 [4]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[0][6]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [6]),
        .I1(\sat_cnt[0][8]_i_10_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[0][7]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [7]),
        .I1(\sat_cnt[0][8]_i_10_n_0 ),
        .I2(\sat_cnt_reg[0]_0 [6]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \sat_cnt[0][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(\sat_cnt[0][8]_i_5_n_0 ),
        .I2(\sat_cnt[0][8]_i_6_n_0 ),
        .I3(\sat_cnt[0][8]_i_7_n_0 ),
        .I4(synchronized_signals),
        .O(\sat_cnt[0][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sat_cnt[0][8]_i_10 
       (.I0(\sat_cnt_reg[0]_0 [5]),
        .I1(\sat_cnt_reg[0]_0 [2]),
        .I2(\sat_cnt_reg[0]_0 [1]),
        .I3(\sat_cnt_reg[0]_0 [0]),
        .I4(\sat_cnt_reg[0]_0 [3]),
        .I5(\sat_cnt_reg[0]_0 [4]),
        .O(\sat_cnt[0][8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFEF00000000)) 
    \sat_cnt[0][8]_i_2 
       (.I0(\sat_cnt_reg[0]_0 [8]),
        .I1(\sat_cnt_reg[0]_0 [5]),
        .I2(\sat_cnt_reg[0]_0 [3]),
        .I3(\q[0]_i_2_n_0 ),
        .I4(\sat_cnt[0][8]_i_8_n_0 ),
        .I5(\sat_cnt[0][8]_i_9_n_0 ),
        .O(\sat_cnt[0][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[0][8]_i_3 
       (.I0(\sat_cnt_reg[0]_0 [8]),
        .I1(\sat_cnt_reg[0]_0 [7]),
        .I2(\sat_cnt_reg[0]_0 [6]),
        .I3(\sat_cnt[0][8]_i_10_n_0 ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sat_cnt[0][8]_i_4 
       (.I0(cycles_reg[10]),
        .I1(cycles_reg[6]),
        .I2(cycles_reg[3]),
        .I3(cycles_reg[0]),
        .O(\sat_cnt[0][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \sat_cnt[0][8]_i_5 
       (.I0(cycles_reg[11]),
        .I1(cycles_reg[4]),
        .I2(cycles_reg[15]),
        .I3(cycles_reg[5]),
        .O(\sat_cnt[0][8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \sat_cnt[0][8]_i_6 
       (.I0(cycles_reg[9]),
        .I1(cycles_reg[14]),
        .I2(cycles_reg[8]),
        .I3(cycles_reg[1]),
        .O(\sat_cnt[0][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \sat_cnt[0][8]_i_7 
       (.I0(cycles_reg[13]),
        .I1(cycles_reg[7]),
        .I2(cycles_reg[12]),
        .I3(cycles_reg[2]),
        .O(\sat_cnt[0][8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \sat_cnt[0][8]_i_8 
       (.I0(cycles_reg[0]),
        .I1(cycles_reg[3]),
        .I2(cycles_reg[6]),
        .I3(cycles_reg[10]),
        .I4(\sat_cnt[0][8]_i_5_n_0 ),
        .O(\sat_cnt[0][8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \sat_cnt[0][8]_i_9 
       (.I0(cycles_reg[1]),
        .I1(cycles_reg[8]),
        .I2(cycles_reg[14]),
        .I3(cycles_reg[9]),
        .I4(\sat_cnt[0][8]_i_7_n_0 ),
        .O(\sat_cnt[0][8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sat_cnt_reg[0]_0 [0]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sat_cnt_reg[0]_0 [1]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sat_cnt_reg[0]_0 [2]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sat_cnt_reg[0]_0 [3]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sat_cnt_reg[0]_0 [4]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sat_cnt_reg[0]_0 [5]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sat_cnt_reg[0]_0 [6]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sat_cnt_reg[0]_0 [7]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[0][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[0][8]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(\sat_cnt_reg[0]_0 [8]),
        .R(\sat_cnt[0][8]_i_1_n_0 ));
endmodule

module edge_detector
   (\q_reg[0]_0 ,
    \edge_detect_pulse_reg[0]_0 ,
    tx_fifo_empty_delayed_reg,
    tx_fifo_empty_delayed_reg_0,
    SR,
    \edge_detect_pulse_reg[0]_1 ,
    debounced_signals,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    p_6_out,
    tx_fifo_empty_delayed,
    \rx_shift_reg[0] ,
    Q,
    rdpnt02_out,
    rdpnt02_out_0);
  output \q_reg[0]_0 ;
  output \edge_detect_pulse_reg[0]_0 ;
  output tx_fifo_empty_delayed_reg;
  output tx_fifo_empty_delayed_reg_0;
  output [0:0]SR;
  output [0:0]\edge_detect_pulse_reg[0]_1 ;
  input [0:0]debounced_signals;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]p_6_out;
  input tx_fifo_empty_delayed;
  input \rx_shift_reg[0] ;
  input [1:0]Q;
  input rdpnt02_out;
  input rdpnt02_out_0;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]debounced_signals;
  wire \edge_detect_pulse_reg[0]_0 ;
  wire [0:0]\edge_detect_pulse_reg[0]_1 ;
  wire [0:0]p_6_out;
  wire \q_reg[0]_0 ;
  wire rdpnt02_out;
  wire rdpnt02_out_0;
  wire \rx_shift_reg[0] ;
  wire tx_fifo_empty_delayed;
  wire tx_fifo_empty_delayed_reg;
  wire tx_fifo_empty_delayed_reg_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \edge_detect_pulse_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_6_out),
        .Q(\edge_detect_pulse_reg[0]_0 ),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[7]_i_1 
       (.I0(\edge_detect_pulse_reg[0]_0 ),
        .I1(rdpnt02_out),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[7]_i_1__0 
       (.I0(\edge_detect_pulse_reg[0]_0 ),
        .I1(rdpnt02_out_0),
        .O(\edge_detect_pulse_reg[0]_1 ));
  FDRE \q_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(debounced_signals),
        .Q(\q_reg[0]_0 ),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFECE)) 
    \rx_shift[0]_i_1 
       (.I0(tx_fifo_empty_delayed),
        .I1(\edge_detect_pulse_reg[0]_0 ),
        .I2(\rx_shift_reg[0] ),
        .I3(Q[0]),
        .O(tx_fifo_empty_delayed_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h3101)) 
    \rx_shift[9]_i_1 
       (.I0(tx_fifo_empty_delayed),
        .I1(\edge_detect_pulse_reg[0]_0 ),
        .I2(\rx_shift_reg[0] ),
        .I3(Q[1]),
        .O(tx_fifo_empty_delayed_reg));
endmodule

module fifo
   (rdpnt02_out,
    wrflipbit_reg_0,
    wrflipbit_reg_1,
    out,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \out_reg[7]_0 ,
    has_byte,
    \out_reg[7]_1 ,
    switches_sync,
    \rdpnt_reg[2]_0 ,
    SR);
  output rdpnt02_out;
  output wrflipbit_reg_0;
  output wrflipbit_reg_1;
  output [7:0]out;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [7:0]\out_reg[7]_0 ;
  input has_byte;
  input \out_reg[7]_1 ;
  input switches_sync;
  input \rdpnt_reg[2]_0 ;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]SR;
  wire has_byte;
  wire [7:0]out;
  wire [7:0]out0__0;
  wire \out[7]_i_3_n_0 ;
  wire [7:0]\out_reg[7]_0 ;
  wire \out_reg[7]_1 ;
  wire p_0_in3_out;
  wire rdflipbit_i_1_n_0;
  wire rdflipbit_reg_n_0;
  wire [2:0]rdpnt;
  wire rdpnt02_out;
  wire \rdpnt[0]_i_1_n_0 ;
  wire \rdpnt[1]_i_1_n_0 ;
  wire \rdpnt[2]_i_1_n_0 ;
  wire \rdpnt_reg[2]_0 ;
  wire switches_sync;
  wire wrflipbit_i_1_n_0;
  wire wrflipbit_reg_0;
  wire wrflipbit_reg_1;
  wire wrflipbit_reg_n_0;
  wire [2:0]wrpnt;
  wire \wrpnt[0]_i_1_n_0 ;
  wire \wrpnt[1]_i_1_n_0 ;
  wire \wrpnt[2]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \FSM_sequential_curr_state[2]_i_3 
       (.I0(\out[7]_i_3_n_0 ),
        .I1(wrflipbit_reg_n_0),
        .I2(rdflipbit_reg_n_0),
        .O(wrflipbit_reg_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M buffer_reg_0_7_0_5
       (.ADDRA({\<const0> ,\<const0> ,rdpnt}),
        .ADDRB({\<const0> ,\<const0> ,rdpnt}),
        .ADDRC({\<const0> ,\<const0> ,rdpnt}),
        .ADDRD({\<const0> ,\<const0> ,wrpnt}),
        .DIA(\out_reg[7]_0 [1:0]),
        .DIB(\out_reg[7]_0 [3:2]),
        .DIC(\out_reg[7]_0 [5:4]),
        .DID({\<const0> ,\<const0> }),
        .DOA(out0__0[1:0]),
        .DOB(out0__0[3:2]),
        .DOC(out0__0[5:4]),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in3_out));
  LUT5 #(
    .INIT(32'h00009F00)) 
    buffer_reg_0_7_0_5_i_1
       (.I0(rdflipbit_reg_n_0),
        .I1(wrflipbit_reg_n_0),
        .I2(\out[7]_i_3_n_0 ),
        .I3(has_byte),
        .I4(\out_reg[7]_1 ),
        .O(p_0_in3_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D buffer_reg_0_7_6_7
       (.A0(wrpnt[0]),
        .A1(wrpnt[1]),
        .A2(wrpnt[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\out_reg[7]_0 [6]),
        .DPO(out0__0[6]),
        .DPRA0(rdpnt[0]),
        .DPRA1(rdpnt[1]),
        .DPRA2(rdpnt[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in3_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D buffer_reg_0_7_6_7__0
       (.A0(wrpnt[0]),
        .A1(wrpnt[1]),
        .A2(wrpnt[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\out_reg[7]_0 [7]),
        .DPO(out0__0[7]),
        .DPRA0(rdpnt[0]),
        .DPRA1(rdpnt[1]),
        .DPRA2(rdpnt[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in3_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    has_byte_i_2
       (.I0(\out[7]_i_3_n_0 ),
        .I1(wrflipbit_reg_n_0),
        .I2(rdflipbit_reg_n_0),
        .O(wrflipbit_reg_1));
  LUT4 #(
    .INIT(16'h1455)) 
    \out[7]_i_2__0 
       (.I0(switches_sync),
        .I1(rdflipbit_reg_n_0),
        .I2(wrflipbit_reg_n_0),
        .I3(\out[7]_i_3_n_0 ),
        .O(rdpnt02_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \out[7]_i_3 
       (.I0(wrpnt[0]),
        .I1(rdpnt[0]),
        .I2(rdpnt[1]),
        .I3(wrpnt[1]),
        .I4(rdpnt[2]),
        .I5(wrpnt[2]),
        .O(\out[7]_i_3_n_0 ));
  FDRE \out_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0__0[0]),
        .Q(out[0]),
        .R(SR));
  FDRE \out_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0__0[1]),
        .Q(out[1]),
        .R(SR));
  FDRE \out_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0__0[2]),
        .Q(out[2]),
        .R(SR));
  FDRE \out_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0__0[3]),
        .Q(out[3]),
        .R(SR));
  FDRE \out_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0__0[4]),
        .Q(out[4]),
        .R(SR));
  FDRE \out_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0__0[5]),
        .Q(out[5]),
        .R(SR));
  FDRE \out_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0__0[6]),
        .Q(out[6]),
        .R(SR));
  FDRE \out_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0__0[7]),
        .Q(out[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h15555555C0000000)) 
    rdflipbit_i_1
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(rdpnt[2]),
        .I2(rdpnt[1]),
        .I3(rdpnt[0]),
        .I4(rdpnt02_out),
        .I5(rdflipbit_reg_n_0),
        .O(rdflipbit_i_1_n_0));
  FDRE rdflipbit_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rdflipbit_i_1_n_0),
        .Q(rdflipbit_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \rdpnt[0]_i_1 
       (.I0(rdpnt02_out),
        .I1(rdpnt[0]),
        .I2(\rdpnt_reg[2]_0 ),
        .O(\rdpnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2878)) 
    \rdpnt[1]_i_1 
       (.I0(rdpnt02_out),
        .I1(rdpnt[0]),
        .I2(rdpnt[1]),
        .I3(\rdpnt_reg[2]_0 ),
        .O(\rdpnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h2A807F80)) 
    \rdpnt[2]_i_1 
       (.I0(rdpnt02_out),
        .I1(rdpnt[0]),
        .I2(rdpnt[1]),
        .I3(rdpnt[2]),
        .I4(\rdpnt_reg[2]_0 ),
        .O(\rdpnt[2]_i_1_n_0 ));
  FDRE \rdpnt_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rdpnt[0]_i_1_n_0 ),
        .Q(rdpnt[0]),
        .R(\<const0> ));
  FDRE \rdpnt_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rdpnt[1]_i_1_n_0 ),
        .Q(rdpnt[1]),
        .R(\<const0> ));
  FDRE \rdpnt_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rdpnt[2]_i_1_n_0 ),
        .Q(rdpnt[2]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h15555555C0000000)) 
    wrflipbit_i_1
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(wrpnt[2]),
        .I2(wrpnt[1]),
        .I3(wrpnt[0]),
        .I4(p_0_in3_out),
        .I5(wrflipbit_reg_n_0),
        .O(wrflipbit_i_1_n_0));
  FDRE wrflipbit_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrflipbit_i_1_n_0),
        .Q(wrflipbit_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \wrpnt[0]_i_1 
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(p_0_in3_out),
        .I2(wrpnt[0]),
        .O(\wrpnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1DC0)) 
    \wrpnt[1]_i_1 
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(p_0_in3_out),
        .I2(wrpnt[0]),
        .I3(wrpnt[1]),
        .O(\wrpnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h1DDDC000)) 
    \wrpnt[2]_i_1 
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(p_0_in3_out),
        .I2(wrpnt[0]),
        .I3(wrpnt[1]),
        .I4(wrpnt[2]),
        .O(\wrpnt[2]_i_1_n_0 ));
  FDRE \wrpnt_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrpnt[0]_i_1_n_0 ),
        .Q(wrpnt[0]),
        .R(\<const0> ));
  FDRE \wrpnt_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrpnt[1]_i_1_n_0 ),
        .Q(wrpnt[1]),
        .R(\<const0> ));
  FDRE \wrpnt_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrpnt[2]_i_1_n_0 ),
        .Q(wrpnt[2]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module fifo_0
   (wrflipbit_reg_0,
    rdflipbit_reg_0,
    rdpnt02_out,
    \rdpnt_reg[0]_0 ,
    tx_fifo_empty,
    out,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \out_reg[6]_0 ,
    \out_reg[7]_0 ,
    \out_reg[7]_1 ,
    mem_tx_wr_en,
    switches_sync,
    \rdpnt_reg[2]_0 ,
    SR,
    din);
  output wrflipbit_reg_0;
  output rdflipbit_reg_0;
  output rdpnt02_out;
  output \rdpnt_reg[0]_0 ;
  output tx_fifo_empty;
  output [7:0]out;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \out_reg[6]_0 ;
  input \out_reg[7]_0 ;
  input \out_reg[7]_1 ;
  input mem_tx_wr_en;
  input switches_sync;
  input \rdpnt_reg[2]_0 ;
  input [0:0]SR;
  input [5:0]din;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]SR;
  wire [5:0]din;
  wire mem_tx_wr_en;
  wire [7:0]out;
  wire [7:0]out0;
  wire \out_reg[6]_0 ;
  wire \out_reg[7]_0 ;
  wire \out_reg[7]_1 ;
  wire p_0_in3_out;
  wire rdflipbit_i_1__0_n_0;
  wire rdflipbit_reg_0;
  wire [2:0]rdpnt;
  wire rdpnt02_out;
  wire \rdpnt[0]_i_1__0_n_0 ;
  wire \rdpnt[1]_i_1__0_n_0 ;
  wire \rdpnt[2]_i_1__0_n_0 ;
  wire \rdpnt_reg[0]_0 ;
  wire \rdpnt_reg[2]_0 ;
  wire switches_sync;
  wire tx_fifo_empty;
  wire wrflipbit_i_1__0_n_0;
  wire wrflipbit_reg_0;
  wire [2:0]wrpnt;
  wire \wrpnt[0]_i_1__0_n_0 ;
  wire \wrpnt[1]_i_1__0_n_0 ;
  wire \wrpnt[2]_i_1__0_n_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M buffer_reg_0_7_0_5
       (.ADDRA({\<const0> ,\<const0> ,rdpnt}),
        .ADDRB({\<const0> ,\<const0> ,rdpnt}),
        .ADDRC({\<const0> ,\<const0> ,rdpnt}),
        .ADDRD({\<const0> ,\<const0> ,wrpnt}),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({\<const0> ,\<const0> }),
        .DOA(out0[1:0]),
        .DOB(out0[3:2]),
        .DOC(out0[5:4]),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in3_out));
  LUT5 #(
    .INIT(32'h0000D700)) 
    buffer_reg_0_7_0_5_i_1__0
       (.I0(\rdpnt_reg[0]_0 ),
        .I1(wrflipbit_reg_0),
        .I2(rdflipbit_reg_0),
        .I3(mem_tx_wr_en),
        .I4(switches_sync),
        .O(p_0_in3_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D buffer_reg_0_7_6_7
       (.A0(wrpnt[0]),
        .A1(wrpnt[1]),
        .A2(wrpnt[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\out_reg[6]_0 ),
        .DPO(out0[6]),
        .DPRA0(rdpnt[0]),
        .DPRA1(rdpnt[1]),
        .DPRA2(rdpnt[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in3_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D buffer_reg_0_7_6_7__0
       (.A0(wrpnt[0]),
        .A1(wrpnt[1]),
        .A2(wrpnt[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\out_reg[7]_0 ),
        .DPO(out0[7]),
        .DPRA0(rdpnt[0]),
        .DPRA1(rdpnt[1]),
        .DPRA2(rdpnt[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in3_out));
  LUT4 #(
    .INIT(16'h1455)) 
    \out[7]_i_2 
       (.I0(\out_reg[7]_1 ),
        .I1(wrflipbit_reg_0),
        .I2(rdflipbit_reg_0),
        .I3(\rdpnt_reg[0]_0 ),
        .O(rdpnt02_out));
  FDRE \out_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0[0]),
        .Q(out[0]),
        .R(SR));
  FDRE \out_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0[1]),
        .Q(out[1]),
        .R(SR));
  FDRE \out_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0[2]),
        .Q(out[2]),
        .R(SR));
  FDRE \out_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0[3]),
        .Q(out[3]),
        .R(SR));
  FDRE \out_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0[4]),
        .Q(out[4]),
        .R(SR));
  FDRE \out_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0[5]),
        .Q(out[5]),
        .R(SR));
  FDRE \out_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0[6]),
        .Q(out[6]),
        .R(SR));
  FDRE \out_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdpnt02_out),
        .D(out0[7]),
        .Q(out[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h15555555C0000000)) 
    rdflipbit_i_1__0
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(rdpnt[2]),
        .I2(rdpnt[0]),
        .I3(rdpnt[1]),
        .I4(rdpnt02_out),
        .I5(rdflipbit_reg_0),
        .O(rdflipbit_i_1__0_n_0));
  FDRE rdflipbit_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rdflipbit_i_1__0_n_0),
        .Q(rdflipbit_reg_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \rdpnt[0]_i_1__0 
       (.I0(rdpnt02_out),
        .I1(rdpnt[0]),
        .I2(\rdpnt_reg[2]_0 ),
        .O(\rdpnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h286C)) 
    \rdpnt[1]_i_1__0 
       (.I0(rdpnt02_out),
        .I1(rdpnt[1]),
        .I2(rdpnt[0]),
        .I3(\rdpnt_reg[2]_0 ),
        .O(\rdpnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h2A807F80)) 
    \rdpnt[2]_i_1__0 
       (.I0(rdpnt02_out),
        .I1(rdpnt[1]),
        .I2(rdpnt[0]),
        .I3(rdpnt[2]),
        .I4(\rdpnt_reg[2]_0 ),
        .O(\rdpnt[2]_i_1__0_n_0 ));
  FDRE \rdpnt_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rdpnt[0]_i_1__0_n_0 ),
        .Q(rdpnt[0]),
        .R(\<const0> ));
  FDRE \rdpnt_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rdpnt[1]_i_1__0_n_0 ),
        .Q(rdpnt[1]),
        .R(\<const0> ));
  FDRE \rdpnt_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rdpnt[2]_i_1__0_n_0 ),
        .Q(rdpnt[2]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h82)) 
    tx_fifo_empty_delayed_i_1
       (.I0(\rdpnt_reg[0]_0 ),
        .I1(rdflipbit_reg_0),
        .I2(wrflipbit_reg_0),
        .O(tx_fifo_empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_fifo_wr_en_reg_i_3
       (.I0(rdpnt[0]),
        .I1(wrpnt[0]),
        .I2(rdpnt[2]),
        .I3(wrpnt[2]),
        .I4(wrpnt[1]),
        .I5(rdpnt[1]),
        .O(\rdpnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h15555555C0000000)) 
    wrflipbit_i_1__0
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(wrpnt[2]),
        .I2(wrpnt[0]),
        .I3(wrpnt[1]),
        .I4(p_0_in3_out),
        .I5(wrflipbit_reg_0),
        .O(wrflipbit_i_1__0_n_0));
  FDRE wrflipbit_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrflipbit_i_1__0_n_0),
        .Q(wrflipbit_reg_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \wrpnt[0]_i_1__0 
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(p_0_in3_out),
        .I2(wrpnt[0]),
        .O(\wrpnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1CD0)) 
    \wrpnt[1]_i_1__0 
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(p_0_in3_out),
        .I2(wrpnt[1]),
        .I3(wrpnt[0]),
        .O(\wrpnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h1DDDC000)) 
    \wrpnt[2]_i_1__0 
       (.I0(\rdpnt_reg[2]_0 ),
        .I1(p_0_in3_out),
        .I2(wrpnt[1]),
        .I3(wrpnt[0]),
        .I4(wrpnt[2]),
        .O(\wrpnt[2]_i_1__0_n_0 ));
  FDRE \wrpnt_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrpnt[0]_i_1__0_n_0 ),
        .Q(wrpnt[0]),
        .R(\<const0> ));
  FDRE \wrpnt_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrpnt[1]_i_1__0_n_0 ),
        .Q(wrpnt[1]),
        .R(\<const0> ));
  FDRE \wrpnt_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrpnt[2]_i_1__0_n_0 ),
        .Q(wrpnt[2]),
        .R(\<const0> ));
endmodule

module mem_controller
   (mem_tx_wr_en,
    mem_reg,
    mem_reg_0,
    din,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    cmddone_reg_0,
    \FSM_sequential_curr_state_reg[0]_0 ,
    tx_fifo_wr_en_reg_0,
    tx_fifo_wr_en_reg_1,
    tx_fifo_wr_en_reg_2,
    switches_sync,
    Q);
  output mem_tx_wr_en;
  output mem_reg;
  output mem_reg_0;
  output [5:0]din;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input cmddone_reg_0;
  input \FSM_sequential_curr_state_reg[0]_0 ;
  input tx_fifo_wr_en_reg_0;
  input tx_fifo_wr_en_reg_1;
  input tx_fifo_wr_en_reg_2;
  input switches_sync;
  input [7:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire \FSM_sequential_curr_state[0]_i_2_n_0 ;
  wire \FSM_sequential_curr_state[0]_i_3_n_0 ;
  wire \FSM_sequential_curr_state[2]_i_2_n_0 ;
  wire \FSM_sequential_curr_state[2]_i_4_n_0 ;
  wire \FSM_sequential_curr_state_reg[0]_0 ;
  wire GND_2;
  wire [7:0]Q;
  wire VCC_2;
  wire addrdone_i_1_n_0;
  wire addrdone_reg_n_0;
  wire cmddone_i_1_n_0;
  wire cmddone_reg_0;
  wire cmddone_reg_n_0;
  wire [2:0]curr_state;
  wire [5:0]din;
  wire \mem_addr[7]_i_1_n_0 ;
  wire \mem_addr_reg_n_0_[0] ;
  wire \mem_addr_reg_n_0_[1] ;
  wire \mem_addr_reg_n_0_[2] ;
  wire \mem_addr_reg_n_0_[3] ;
  wire \mem_addr_reg_n_0_[4] ;
  wire \mem_addr_reg_n_0_[5] ;
  wire \mem_addr_reg_n_0_[6] ;
  wire \mem_addr_reg_n_0_[7] ;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_tx_wr_en;
  wire mem_we;
  wire mem_we__0;
  wire \mem_we_reg[0]_i_1_n_0 ;
  wire [2:0]next_state;
  wire rdwr;
  wire \rdwr[7]_i_1_n_0 ;
  wire \rdwr_reg_n_0_[0] ;
  wire \rdwr_reg_n_0_[1] ;
  wire \rdwr_reg_n_0_[2] ;
  wire \rdwr_reg_n_0_[3] ;
  wire \rdwr_reg_n_0_[4] ;
  wire \rdwr_reg_n_0_[5] ;
  wire \rdwr_reg_n_0_[6] ;
  wire \rdwr_reg_n_0_[7] ;
  wire switches_sync;
  wire tx_fifo_wr_en_reg_0;
  wire tx_fifo_wr_en_reg_1;
  wire tx_fifo_wr_en_reg_2;
  wire tx_fifo_wr_en_reg_i_1_n_0;
  wire tx_fifo_wr_en_reg_i_2_n_0;
  wire wrdata;
  wire \wrdata_reg_n_0_[0] ;
  wire \wrdata_reg_n_0_[1] ;
  wire \wrdata_reg_n_0_[2] ;
  wire \wrdata_reg_n_0_[3] ;
  wire \wrdata_reg_n_0_[4] ;
  wire \wrdata_reg_n_0_[5] ;
  wire \wrdata_reg_n_0_[6] ;
  wire \wrdata_reg_n_0_[7] ;

  LUT6 #(
    .INIT(64'h000C0F0C000E000F)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(\FSM_sequential_curr_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_curr_state[0]_i_2_n_0 ),
        .I2(curr_state[2]),
        .I3(curr_state[0]),
        .I4(curr_state[1]),
        .I5(cmddone_reg_0),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_curr_state[0]_i_2 
       (.I0(\FSM_sequential_curr_state[2]_i_4_n_0 ),
        .I1(\rdwr_reg_n_0_[7] ),
        .I2(\rdwr_reg_n_0_[1] ),
        .I3(\rdwr_reg_n_0_[3] ),
        .I4(\FSM_sequential_curr_state[0]_i_3_n_0 ),
        .I5(\rdwr_reg_n_0_[0] ),
        .O(\FSM_sequential_curr_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_curr_state[0]_i_3 
       (.I0(curr_state[1]),
        .I1(addrdone_reg_n_0),
        .O(\FSM_sequential_curr_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h300C3034)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(\FSM_sequential_curr_state[2]_i_2_n_0 ),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .I3(curr_state[2]),
        .I4(cmddone_reg_0),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0FF00200)) 
    \FSM_sequential_curr_state[2]_i_1 
       (.I0(\FSM_sequential_curr_state[2]_i_2_n_0 ),
        .I1(cmddone_reg_0),
        .I2(curr_state[2]),
        .I3(curr_state[1]),
        .I4(curr_state[0]),
        .O(next_state[2]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_curr_state[2]_i_2 
       (.I0(\rdwr_reg_n_0_[0] ),
        .I1(\FSM_sequential_curr_state[2]_i_4_n_0 ),
        .I2(\rdwr_reg_n_0_[7] ),
        .I3(\rdwr_reg_n_0_[1] ),
        .I4(\rdwr_reg_n_0_[3] ),
        .O(\FSM_sequential_curr_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_curr_state[2]_i_4 
       (.I0(\rdwr_reg_n_0_[4] ),
        .I1(\rdwr_reg_n_0_[6] ),
        .I2(\rdwr_reg_n_0_[5] ),
        .I3(\rdwr_reg_n_0_[2] ),
        .O(\FSM_sequential_curr_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE_MEM_VAL:110,ECHO_VAL:100,IDLE:000,READ_CMD:001,READ_MEM_VAL:011,READ_ADDR:010,READ_DATA:101" *) 
  FDRE \FSM_sequential_curr_state_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_state[0]),
        .Q(curr_state[0]),
        .R(\FSM_sequential_curr_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "WRITE_MEM_VAL:110,ECHO_VAL:100,IDLE:000,READ_CMD:001,READ_MEM_VAL:011,READ_ADDR:010,READ_DATA:101" *) 
  FDRE \FSM_sequential_curr_state_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_state[1]),
        .Q(curr_state[1]),
        .R(\FSM_sequential_curr_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "WRITE_MEM_VAL:110,ECHO_VAL:100,IDLE:000,READ_CMD:001,READ_MEM_VAL:011,READ_ADDR:010,READ_DATA:101" *) 
  FDRE \FSM_sequential_curr_state_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_state[2]),
        .Q(curr_state[2]),
        .R(\FSM_sequential_curr_state_reg[0]_0 ));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h5050504C)) 
    addrdone_i_1
       (.I0(\FSM_sequential_curr_state_reg[0]_0 ),
        .I1(curr_state[1]),
        .I2(addrdone_reg_n_0),
        .I3(curr_state[2]),
        .I4(curr_state[0]),
        .O(addrdone_i_1_n_0));
  FDRE addrdone_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(addrdone_i_1_n_0),
        .Q(addrdone_reg_n_0),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0C0C0C1D0C0C0C00)) 
    cmddone_i_1
       (.I0(cmddone_reg_0),
        .I1(cmddone_reg_n_0),
        .I2(\FSM_sequential_curr_state_reg[0]_0 ),
        .I3(curr_state[1]),
        .I4(curr_state[2]),
        .I5(curr_state[0]),
        .O(cmddone_i_1_n_0));
  FDRE cmddone_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cmddone_i_1_n_0),
        .Q(cmddone_reg_n_0),
        .R(\<const0> ));
  memory mem
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q({\mem_addr_reg_n_0_[7] ,\mem_addr_reg_n_0_[6] ,\mem_addr_reg_n_0_[5] ,\mem_addr_reg_n_0_[4] ,\mem_addr_reg_n_0_[3] ,\mem_addr_reg_n_0_[2] ,\mem_addr_reg_n_0_[1] ,\mem_addr_reg_n_0_[0] }),
        .WEA(mem_we),
        .din(din),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_0),
        .mem_reg_2({\wrdata_reg_n_0_[7] ,\wrdata_reg_n_0_[6] ,\wrdata_reg_n_0_[5] ,\wrdata_reg_n_0_[4] ,\wrdata_reg_n_0_[3] ,\wrdata_reg_n_0_[2] ,\wrdata_reg_n_0_[1] ,\wrdata_reg_n_0_[0] }),
        .switches_sync(switches_sync));
  LUT4 #(
    .INIT(16'h0004)) 
    \mem_addr[7]_i_1 
       (.I0(curr_state[2]),
        .I1(curr_state[1]),
        .I2(addrdone_reg_n_0),
        .I3(curr_state[0]),
        .O(\mem_addr[7]_i_1_n_0 ));
  FDRE \mem_addr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\mem_addr[7]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\mem_addr_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \mem_addr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\mem_addr[7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\mem_addr_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE \mem_addr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\mem_addr[7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\mem_addr_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE \mem_addr_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\mem_addr[7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\mem_addr_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE \mem_addr_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\mem_addr[7]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\mem_addr_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE \mem_addr_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\mem_addr[7]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\mem_addr_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE \mem_addr_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\mem_addr[7]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\mem_addr_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE \mem_addr_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\mem_addr[7]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\mem_addr_reg_n_0_[7] ),
        .R(\<const0> ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \mem_we_reg[0] 
       (.CLR(GND_2),
        .D(\mem_we_reg[0]_i_1_n_0 ),
        .G(mem_we__0),
        .GE(VCC_2),
        .Q(mem_we));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_we_reg[0]_i_1 
       (.I0(curr_state[2]),
        .I1(curr_state[0]),
        .O(\mem_we_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \mem_we_reg[0]_i_2 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(curr_state[2]),
        .O(mem_we__0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \rdwr[7]_i_1 
       (.I0(\FSM_sequential_curr_state_reg[0]_0 ),
        .I1(cmddone_reg_n_0),
        .I2(curr_state[1]),
        .I3(curr_state[0]),
        .I4(curr_state[2]),
        .I5(cmddone_reg_0),
        .O(\rdwr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \rdwr[7]_i_2 
       (.I0(\FSM_sequential_curr_state_reg[0]_0 ),
        .I1(cmddone_reg_n_0),
        .I2(curr_state[1]),
        .I3(curr_state[0]),
        .I4(curr_state[2]),
        .I5(cmddone_reg_0),
        .O(rdwr));
  FDRE \rdwr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdwr),
        .D(Q[0]),
        .Q(\rdwr_reg_n_0_[0] ),
        .R(\rdwr[7]_i_1_n_0 ));
  FDRE \rdwr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdwr),
        .D(Q[1]),
        .Q(\rdwr_reg_n_0_[1] ),
        .R(\rdwr[7]_i_1_n_0 ));
  FDRE \rdwr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdwr),
        .D(Q[2]),
        .Q(\rdwr_reg_n_0_[2] ),
        .R(\rdwr[7]_i_1_n_0 ));
  FDRE \rdwr_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdwr),
        .D(Q[3]),
        .Q(\rdwr_reg_n_0_[3] ),
        .R(\rdwr[7]_i_1_n_0 ));
  FDRE \rdwr_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdwr),
        .D(Q[4]),
        .Q(\rdwr_reg_n_0_[4] ),
        .R(\rdwr[7]_i_1_n_0 ));
  FDRE \rdwr_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdwr),
        .D(Q[5]),
        .Q(\rdwr_reg_n_0_[5] ),
        .R(\rdwr[7]_i_1_n_0 ));
  FDRE \rdwr_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdwr),
        .D(Q[6]),
        .Q(\rdwr_reg_n_0_[6] ),
        .R(\rdwr[7]_i_1_n_0 ));
  FDRE \rdwr_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rdwr),
        .D(Q[7]),
        .Q(\rdwr_reg_n_0_[7] ),
        .R(\rdwr[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    tx_fifo_wr_en_reg
       (.CLR(GND_2),
        .D(tx_fifo_wr_en_reg_i_1_n_0),
        .G(tx_fifo_wr_en_reg_i_2_n_0),
        .GE(VCC_2),
        .Q(mem_tx_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    tx_fifo_wr_en_reg_i_1
       (.I0(curr_state[2]),
        .I1(curr_state[1]),
        .O(tx_fifo_wr_en_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h1001111111111111)) 
    tx_fifo_wr_en_reg_i_2
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(tx_fifo_wr_en_reg_0),
        .I3(tx_fifo_wr_en_reg_1),
        .I4(tx_fifo_wr_en_reg_2),
        .I5(curr_state[2]),
        .O(tx_fifo_wr_en_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    \wrdata[7]_i_1 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(curr_state[2]),
        .O(wrdata));
  FDRE \wrdata_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(wrdata),
        .D(Q[0]),
        .Q(\wrdata_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \wrdata_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(wrdata),
        .D(Q[1]),
        .Q(\wrdata_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE \wrdata_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(wrdata),
        .D(Q[2]),
        .Q(\wrdata_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE \wrdata_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(wrdata),
        .D(Q[3]),
        .Q(\wrdata_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE \wrdata_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(wrdata),
        .D(Q[4]),
        .Q(\wrdata_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE \wrdata_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(wrdata),
        .D(Q[5]),
        .Q(\wrdata_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE \wrdata_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(wrdata),
        .D(Q[6]),
        .Q(\wrdata_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE \wrdata_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(wrdata),
        .D(Q[7]),
        .Q(\wrdata_reg_n_0_[7] ),
        .R(\<const0> ));
endmodule

module memory
   (mem_reg_0,
    mem_reg_1,
    din,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    Q,
    mem_reg_2,
    WEA,
    switches_sync);
  output mem_reg_0;
  output mem_reg_1;
  output [5:0]din;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [7:0]Q;
  input [7:0]mem_reg_2;
  input [0:0]WEA;
  input switches_sync;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [5:0]din;
  wire [7:0]mem_din;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [7:0]mem_reg_2;
  wire switches_sync;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_0_7_0_5_i_2
       (.I0(mem_din[1]),
        .I1(switches_sync),
        .O(din[1]));
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_0_7_0_5_i_3
       (.I0(mem_din[0]),
        .I1(switches_sync),
        .O(din[0]));
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_0_7_0_5_i_4
       (.I0(mem_din[3]),
        .I1(switches_sync),
        .O(din[3]));
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_0_7_0_5_i_5
       (.I0(mem_din[2]),
        .I1(switches_sync),
        .O(din[2]));
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_0_7_0_5_i_6
       (.I0(mem_din[5]),
        .I1(switches_sync),
        .O(din[5]));
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_0_7_0_5_i_7
       (.I0(mem_din[4]),
        .I1(switches_sync),
        .O(din[4]));
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_0_7_6_7__0_i_1
       (.I0(mem_din[7]),
        .I1(switches_sync),
        .O(mem_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_0_7_6_7_i_1
       (.I0(mem_din[6]),
        .I1(switches_sync),
        .O(mem_reg_1));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem_ctrl/mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,Q,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,mem_reg_2}),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO(mem_din),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
endmodule

module synchronizer
   (synchronized_signals,
    BUTTONS_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]synchronized_signals;
  input [0:0]BUTTONS_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire \genblk1[0].q_reg_n_0_[0] ;
  wire [0:0]synchronized_signals;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \genblk1[0].q_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF),
        .Q(\genblk1[0].q_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \genblk1[0].sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[0].q_reg_n_0_[0] ),
        .Q(synchronized_signals),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (switches_sync,
    SWITCHES_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output switches_sync;
  input [0:0]SWITCHES_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]SWITCHES_IBUF;
  wire \genblk1[0].q_reg_n_0_[0] ;
  wire switches_sync;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \genblk1[0].q_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SWITCHES_IBUF),
        .Q(\genblk1[0].q_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \genblk1[0].sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[0].q_reg_n_0_[0] ),
        .Q(switches_sync),
        .R(\<const0> ));
endmodule

module uart
   (Q,
    FPGA_SERIAL_TX_OBUF,
    has_byte,
    \bit_counter_reg[3] ,
    \bit_counter_reg[0] ,
    \rx_shift_reg[8] ,
    \rx_shift_reg[8]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \rx_shift_reg[9] ,
    \rx_shift_reg[0] ,
    \bit_counter_reg[1] ,
    FPGA_SERIAL_RX_IBUF,
    tx_fifo_empty_delayed,
    has_byte_reg);
  output [1:0]Q;
  output FPGA_SERIAL_TX_OBUF;
  output has_byte;
  output \bit_counter_reg[3] ;
  output \bit_counter_reg[0] ;
  output [7:0]\rx_shift_reg[8] ;
  input [7:0]\rx_shift_reg[8]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \rx_shift_reg[9] ;
  input \rx_shift_reg[0] ;
  input \bit_counter_reg[1] ;
  input FPGA_SERIAL_RX_IBUF;
  input tx_fifo_empty_delayed;
  input has_byte_reg;

  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire FPGA_SERIAL_RX_IBUF;
  wire FPGA_SERIAL_TX_OBUF;
  wire [1:0]Q;
  wire \bit_counter_reg[0] ;
  wire \bit_counter_reg[1] ;
  wire \bit_counter_reg[3] ;
  wire has_byte;
  wire has_byte_reg;
  wire \rx_shift_reg[0] ;
  wire [7:0]\rx_shift_reg[8] ;
  wire [7:0]\rx_shift_reg[8]_0 ;
  wire \rx_shift_reg[9] ;
  wire serial_in_reg;
  wire tx_fifo_empty_delayed;

  VCC VCC
       (.P(\<const1> ));
  FDSE serial_in_reg_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(FPGA_SERIAL_RX_IBUF),
        .Q(serial_in_reg),
        .S(\bit_counter_reg[1] ));
  FDSE serial_out_reg_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(Q[0]),
        .Q(FPGA_SERIAL_TX_OBUF),
        .S(\bit_counter_reg[1] ));
  uart_receiver uareceive
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\bit_counter_reg[0]_0 (\bit_counter_reg[0] ),
        .has_byte(has_byte),
        .has_byte_reg_0(\bit_counter_reg[1] ),
        .has_byte_reg_1(has_byte_reg),
        .\rx_shift_reg[8]_0 (\rx_shift_reg[8] ),
        .serial_in_reg(serial_in_reg));
  uart_transmitter uatransmit
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(Q),
        .\bit_counter_reg[1]_0 (\bit_counter_reg[1] ),
        .\bit_counter_reg[3]_0 (\bit_counter_reg[3] ),
        .\rx_shift_reg[0]_0 (\rx_shift_reg[0] ),
        .\rx_shift_reg[8]_0 (\rx_shift_reg[8]_0 ),
        .\rx_shift_reg[9]_0 (\rx_shift_reg[9] ),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed));
endmodule

module uart_receiver
   (has_byte,
    \bit_counter_reg[0]_0 ,
    \rx_shift_reg[8]_0 ,
    has_byte_reg_0,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    serial_in_reg,
    has_byte_reg_1);
  output has_byte;
  output \bit_counter_reg[0]_0 ;
  output [7:0]\rx_shift_reg[8]_0 ;
  input has_byte_reg_0;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input serial_in_reg;
  input has_byte_reg_1;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]bit_counter;
  wire bit_counter0;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[3]_i_2_n_0 ;
  wire \bit_counter[3]_i_3_n_0 ;
  wire \bit_counter_reg[0]_0 ;
  wire \clock_counter[10]_i_1_n_0 ;
  wire \clock_counter[10]_i_3_n_0 ;
  wire \clock_counter[4]_i_1_n_0 ;
  wire [10:0]clock_counter_reg;
  wire has_byte;
  wire has_byte_i_1_n_0;
  wire has_byte_i_3_n_0;
  wire has_byte_reg_0;
  wire has_byte_reg_1;
  wire [10:0]p_0_in__0;
  wire rx_shift0;
  wire \rx_shift[9]_i_2__0_n_0 ;
  wire \rx_shift[9]_i_3_n_0 ;
  wire [7:0]\rx_shift_reg[8]_0 ;
  wire \rx_shift_reg_n_0_[9] ;
  wire serial_in_reg;
  wire start;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h000066A0)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter[0]),
        .I1(\bit_counter[3]_i_2_n_0 ),
        .I2(serial_in_reg),
        .I3(\bit_counter_reg[0]_0 ),
        .I4(has_byte_reg_0),
        .O(\bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[0]_i_2 
       (.I0(bit_counter[0]),
        .I1(bit_counter[1]),
        .I2(bit_counter[2]),
        .I3(bit_counter[3]),
        .O(\bit_counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hD2D2D2D0D2D2D2D3)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter[3]_i_2_n_0 ),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(bit_counter[2]),
        .I4(bit_counter[3]),
        .I5(serial_in_reg),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAA6)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter[2]),
        .I1(bit_counter0),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(start),
        .I5(has_byte_reg_0),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \bit_counter[2]_i_2__0 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[9]),
        .I3(clock_counter_reg[10]),
        .I4(\bit_counter[3]_i_3_n_0 ),
        .I5(\rx_shift[9]_i_3_n_0 ),
        .O(bit_counter0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \bit_counter[2]_i_3 
       (.I0(serial_in_reg),
        .I1(bit_counter[3]),
        .I2(bit_counter[2]),
        .I3(bit_counter[1]),
        .I4(bit_counter[0]),
        .O(start));
  LUT6 #(
    .INIT(64'hFFFD0000FFFD0003)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter[3]_i_2_n_0 ),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(bit_counter[2]),
        .I4(bit_counter[3]),
        .I5(serial_in_reg),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bit_counter[3]_i_2 
       (.I0(\rx_shift[9]_i_3_n_0 ),
        .I1(\bit_counter[3]_i_3_n_0 ),
        .I2(clock_counter_reg[10]),
        .I3(clock_counter_reg[9]),
        .I4(clock_counter_reg[4]),
        .O(\bit_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \bit_counter[3]_i_3 
       (.I0(clock_counter_reg[0]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[5]),
        .I3(clock_counter_reg[6]),
        .O(\bit_counter[3]_i_3_n_0 ));
  FDRE \bit_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter[0]),
        .R(\<const0> ));
  FDRE \bit_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter[1]),
        .R(has_byte_reg_0));
  FDRE \bit_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter[2]),
        .R(\<const0> ));
  FDRE \bit_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(bit_counter[3]),
        .R(has_byte_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1__0 
       (.I0(clock_counter_reg[0]),
        .O(p_0_in__0[0]));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \clock_counter[10]_i_1 
       (.I0(serial_in_reg),
        .I1(\bit_counter_reg[0]_0 ),
        .I2(has_byte_reg_0),
        .I3(\bit_counter[3]_i_2_n_0 ),
        .O(\clock_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clock_counter[10]_i_2 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[8]),
        .I2(clock_counter_reg[6]),
        .I3(\clock_counter[10]_i_3_n_0 ),
        .I4(clock_counter_reg[7]),
        .I5(clock_counter_reg[9]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clock_counter[10]_i_3 
       (.I0(clock_counter_reg[5]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[2]),
        .I3(clock_counter_reg[3]),
        .I4(clock_counter_reg[0]),
        .I5(clock_counter_reg[1]),
        .O(\clock_counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1 
       (.I0(clock_counter_reg[1]),
        .I1(clock_counter_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clock_counter[2]_i_1 
       (.I0(clock_counter_reg[1]),
        .I1(clock_counter_reg[0]),
        .I2(clock_counter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_counter[3]_i_1 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clock_counter[4]_i_1 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[3]),
        .I4(clock_counter_reg[2]),
        .O(\clock_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clock_counter[5]_i_1 
       (.I0(clock_counter_reg[1]),
        .I1(clock_counter_reg[0]),
        .I2(clock_counter_reg[3]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[4]),
        .I5(clock_counter_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[6]_i_1 
       (.I0(clock_counter_reg[6]),
        .I1(\clock_counter[10]_i_3_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clock_counter[7]_i_1 
       (.I0(clock_counter_reg[7]),
        .I1(\clock_counter[10]_i_3_n_0 ),
        .I2(clock_counter_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_counter[8]_i_1 
       (.I0(clock_counter_reg[8]),
        .I1(clock_counter_reg[6]),
        .I2(\clock_counter[10]_i_3_n_0 ),
        .I3(clock_counter_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clock_counter[9]_i_1 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[7]),
        .I2(\clock_counter[10]_i_3_n_0 ),
        .I3(clock_counter_reg[6]),
        .I4(clock_counter_reg[8]),
        .O(p_0_in__0[9]));
  FDRE \clock_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[0]),
        .Q(clock_counter_reg[0]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[10]),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[1]),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[2]),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[3]),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter[4]_i_1_n_0 ),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[5]),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[6]),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[7]),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[8]),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE \clock_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[9]),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5575555500300000)) 
    has_byte_i_1
       (.I0(has_byte_reg_1),
        .I1(has_byte_i_3_n_0),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(\bit_counter[3]_i_2_n_0 ),
        .I5(has_byte),
        .O(has_byte_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    has_byte_i_3
       (.I0(bit_counter[3]),
        .I1(bit_counter[2]),
        .O(has_byte_i_3_n_0));
  FDRE has_byte_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(has_byte_i_1_n_0),
        .Q(has_byte),
        .R(has_byte_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \rx_shift[9]_i_1__0 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[10]),
        .I3(clock_counter_reg[1]),
        .I4(\rx_shift[9]_i_2__0_n_0 ),
        .I5(\rx_shift[9]_i_3_n_0 ),
        .O(rx_shift0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rx_shift[9]_i_2__0 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[6]),
        .I2(clock_counter_reg[5]),
        .I3(clock_counter_reg[0]),
        .O(\rx_shift[9]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \rx_shift[9]_i_3 
       (.I0(clock_counter_reg[2]),
        .I1(clock_counter_reg[3]),
        .I2(clock_counter_reg[7]),
        .I3(clock_counter_reg[8]),
        .O(\rx_shift[9]_i_3_n_0 ));
  FDRE \rx_shift_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [1]),
        .Q(\rx_shift_reg[8]_0 [0]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [2]),
        .Q(\rx_shift_reg[8]_0 [1]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [3]),
        .Q(\rx_shift_reg[8]_0 [2]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [4]),
        .Q(\rx_shift_reg[8]_0 [3]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [5]),
        .Q(\rx_shift_reg[8]_0 [4]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [6]),
        .Q(\rx_shift_reg[8]_0 [5]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [7]),
        .Q(\rx_shift_reg[8]_0 [6]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg_n_0_[9] ),
        .Q(\rx_shift_reg[8]_0 [7]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(serial_in_reg),
        .Q(\rx_shift_reg_n_0_[9] ),
        .R(\<const0> ));
endmodule

module uart_transmitter
   (Q,
    \bit_counter_reg[3]_0 ,
    \rx_shift_reg[8]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \rx_shift_reg[9]_0 ,
    \rx_shift_reg[0]_0 ,
    \bit_counter_reg[1]_0 ,
    tx_fifo_empty_delayed);
  output [1:0]Q;
  output \bit_counter_reg[3]_0 ;
  input [7:0]\rx_shift_reg[8]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \rx_shift_reg[9]_0 ;
  input \rx_shift_reg[0]_0 ;
  input \bit_counter_reg[1]_0 ;
  input tx_fifo_empty_delayed;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]Q;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter_reg[1]_0 ;
  wire \bit_counter_reg[3]_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \clock_counter[0]_i_1_n_0 ;
  wire \clock_counter[0]_i_3_n_0 ;
  wire \clock_counter[0]_i_4_n_0 ;
  wire [12:0]clock_counter_reg;
  wire \clock_counter_reg[0]_i_2_n_0 ;
  wire \clock_counter_reg[0]_i_2_n_1 ;
  wire \clock_counter_reg[0]_i_2_n_2 ;
  wire \clock_counter_reg[0]_i_2_n_3 ;
  wire \clock_counter_reg[0]_i_2_n_4 ;
  wire \clock_counter_reg[0]_i_2_n_5 ;
  wire \clock_counter_reg[0]_i_2_n_6 ;
  wire \clock_counter_reg[0]_i_2_n_7 ;
  wire \clock_counter_reg[12]_i_1_n_7 ;
  wire \clock_counter_reg[4]_i_1_n_0 ;
  wire \clock_counter_reg[4]_i_1_n_1 ;
  wire \clock_counter_reg[4]_i_1_n_2 ;
  wire \clock_counter_reg[4]_i_1_n_3 ;
  wire \clock_counter_reg[4]_i_1_n_4 ;
  wire \clock_counter_reg[4]_i_1_n_5 ;
  wire \clock_counter_reg[4]_i_1_n_6 ;
  wire \clock_counter_reg[4]_i_1_n_7 ;
  wire \clock_counter_reg[8]_i_1_n_0 ;
  wire \clock_counter_reg[8]_i_1_n_1 ;
  wire \clock_counter_reg[8]_i_1_n_2 ;
  wire \clock_counter_reg[8]_i_1_n_3 ;
  wire \clock_counter_reg[8]_i_1_n_4 ;
  wire \clock_counter_reg[8]_i_1_n_5 ;
  wire \clock_counter_reg[8]_i_1_n_6 ;
  wire \clock_counter_reg[8]_i_1_n_7 ;
  wire [8:1]rx_shift;
  wire rx_shift1;
  wire \rx_shift[8]_i_1_n_0 ;
  wire \rx_shift[8]_i_2_n_0 ;
  wire \rx_shift[9]__0_i_2_n_0 ;
  wire \rx_shift[9]__0_i_3_n_0 ;
  wire \rx_shift_reg[0]_0 ;
  wire [7:0]\rx_shift_reg[8]_0 ;
  wire \rx_shift_reg[9]_0 ;
  wire start;
  wire tx_fifo_empty_delayed;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0006)) 
    \bit_counter[0]_i_1 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(rx_shift1),
        .I2(start),
        .I3(\bit_counter_reg[1]_0 ),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF05AF05AF05AF05B)) 
    \bit_counter[1]_i_1 
       (.I0(rx_shift1),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(tx_fifo_empty_delayed),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAA6)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(rx_shift1),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(start),
        .I5(\bit_counter_reg[1]_0 ),
        .O(\bit_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \bit_counter[2]_i_2 
       (.I0(tx_fifo_empty_delayed),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .O(start));
  LUT6 #(
    .INIT(64'hCCCCCCC6CCCCCCC7)) 
    \bit_counter[3]_i_1 
       (.I0(rx_shift1),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(tx_fifo_empty_delayed),
        .O(\bit_counter[3]_i_1_n_0 ));
  FDRE \bit_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \bit_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(\bit_counter_reg[1]_0 ));
  FDRE \bit_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE \bit_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ),
        .R(\bit_counter_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \clock_counter[0]_i_1 
       (.I0(start),
        .I1(\bit_counter_reg[1]_0 ),
        .I2(\clock_counter[0]_i_3_n_0 ),
        .O(\clock_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \clock_counter[0]_i_3 
       (.I0(\rx_shift[9]__0_i_3_n_0 ),
        .I1(\rx_shift[9]__0_i_2_n_0 ),
        .I2(clock_counter_reg[11]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[5]),
        .O(\clock_counter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_4 
       (.I0(clock_counter_reg[0]),
        .O(\clock_counter[0]_i_4_n_0 ));
  FDRE \clock_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[0]_i_2_n_7 ),
        .Q(clock_counter_reg[0]),
        .R(\clock_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clock_counter_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\clock_counter_reg[0]_i_2_n_0 ,\clock_counter_reg[0]_i_2_n_1 ,\clock_counter_reg[0]_i_2_n_2 ,\clock_counter_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\clock_counter_reg[0]_i_2_n_4 ,\clock_counter_reg[0]_i_2_n_5 ,\clock_counter_reg[0]_i_2_n_6 ,\clock_counter_reg[0]_i_2_n_7 }),
        .S({clock_counter_reg[3:1],\clock_counter[0]_i_4_n_0 }));
  FDRE \clock_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[8]_i_1_n_5 ),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE \clock_counter_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[8]_i_1_n_4 ),
        .Q(clock_counter_reg[11]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE \clock_counter_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[12]_i_1_n_7 ),
        .Q(clock_counter_reg[12]),
        .R(\clock_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clock_counter_reg[12]_i_1 
       (.CI(\clock_counter_reg[8]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\clock_counter_reg[12]_i_1_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,clock_counter_reg[12]}));
  FDRE \clock_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[0]_i_2_n_6 ),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE \clock_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[0]_i_2_n_5 ),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE \clock_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[0]_i_2_n_4 ),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE \clock_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[4]_i_1_n_7 ),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clock_counter_reg[4]_i_1 
       (.CI(\clock_counter_reg[0]_i_2_n_0 ),
        .CO({\clock_counter_reg[4]_i_1_n_0 ,\clock_counter_reg[4]_i_1_n_1 ,\clock_counter_reg[4]_i_1_n_2 ,\clock_counter_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clock_counter_reg[4]_i_1_n_4 ,\clock_counter_reg[4]_i_1_n_5 ,\clock_counter_reg[4]_i_1_n_6 ,\clock_counter_reg[4]_i_1_n_7 }),
        .S(clock_counter_reg[7:4]));
  FDRE \clock_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[4]_i_1_n_6 ),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE \clock_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[4]_i_1_n_5 ),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE \clock_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[4]_i_1_n_4 ),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE \clock_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[8]_i_1_n_7 ),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clock_counter_reg[8]_i_1 
       (.CI(\clock_counter_reg[4]_i_1_n_0 ),
        .CO({\clock_counter_reg[8]_i_1_n_0 ,\clock_counter_reg[8]_i_1_n_1 ,\clock_counter_reg[8]_i_1_n_2 ,\clock_counter_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clock_counter_reg[8]_i_1_n_4 ,\clock_counter_reg[8]_i_1_n_5 ,\clock_counter_reg[8]_i_1_n_6 ,\clock_counter_reg[8]_i_1_n_7 }),
        .S(clock_counter_reg[11:8]));
  FDRE \clock_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clock_counter_reg[8]_i_1_n_6 ),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    \rx_shift[8]_i_1 
       (.I0(\bit_counter_reg[1]_0 ),
        .I1(tx_fifo_empty_delayed),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(\bit_counter_reg_n_0_[3] ),
        .O(\rx_shift[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_shift[8]_i_2 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .O(\rx_shift[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \rx_shift[9]__0_i_1 
       (.I0(\bit_counter_reg[3]_0 ),
        .I1(clock_counter_reg[5]),
        .I2(clock_counter_reg[2]),
        .I3(clock_counter_reg[11]),
        .I4(\rx_shift[9]__0_i_2_n_0 ),
        .I5(\rx_shift[9]__0_i_3_n_0 ),
        .O(rx_shift1));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rx_shift[9]__0_i_2 
       (.I0(clock_counter_reg[8]),
        .I1(clock_counter_reg[6]),
        .I2(clock_counter_reg[10]),
        .I3(clock_counter_reg[7]),
        .O(\rx_shift[9]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \rx_shift[9]__0_i_3 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[3]),
        .I2(clock_counter_reg[9]),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[1]),
        .I5(clock_counter_reg[12]),
        .O(\rx_shift[9]__0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_shift[9]_i_2 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter_reg[3]_0 ));
  FDRE \rx_shift_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_shift_reg[0]_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[0]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(rx_shift[1]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\rx_shift[8]_i_2_n_0 ),
        .D(\rx_shift_reg[8]_0 [0]),
        .Q(rx_shift[1]),
        .R(\rx_shift[8]_i_1_n_0 ));
  FDRE \rx_shift_reg[1]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(rx_shift[2]),
        .Q(rx_shift[1]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\rx_shift[8]_i_2_n_0 ),
        .D(\rx_shift_reg[8]_0 [1]),
        .Q(rx_shift[2]),
        .R(\rx_shift[8]_i_1_n_0 ));
  FDRE \rx_shift_reg[2]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(rx_shift[3]),
        .Q(rx_shift[2]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\rx_shift[8]_i_2_n_0 ),
        .D(\rx_shift_reg[8]_0 [2]),
        .Q(rx_shift[3]),
        .R(\rx_shift[8]_i_1_n_0 ));
  FDRE \rx_shift_reg[3]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(rx_shift[4]),
        .Q(rx_shift[3]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\rx_shift[8]_i_2_n_0 ),
        .D(\rx_shift_reg[8]_0 [3]),
        .Q(rx_shift[4]),
        .R(\rx_shift[8]_i_1_n_0 ));
  FDRE \rx_shift_reg[4]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(rx_shift[5]),
        .Q(rx_shift[4]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\rx_shift[8]_i_2_n_0 ),
        .D(\rx_shift_reg[8]_0 [4]),
        .Q(rx_shift[5]),
        .R(\rx_shift[8]_i_1_n_0 ));
  FDRE \rx_shift_reg[5]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(rx_shift[6]),
        .Q(rx_shift[5]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\rx_shift[8]_i_2_n_0 ),
        .D(\rx_shift_reg[8]_0 [5]),
        .Q(rx_shift[6]),
        .R(\rx_shift[8]_i_1_n_0 ));
  FDRE \rx_shift_reg[6]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(rx_shift[7]),
        .Q(rx_shift[6]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\rx_shift[8]_i_2_n_0 ),
        .D(\rx_shift_reg[8]_0 [6]),
        .Q(rx_shift[7]),
        .R(\rx_shift[8]_i_1_n_0 ));
  FDRE \rx_shift_reg[7]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(rx_shift[8]),
        .Q(rx_shift[7]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\rx_shift[8]_i_2_n_0 ),
        .D(\rx_shift_reg[8]_0 [7]),
        .Q(rx_shift[8]),
        .R(\rx_shift[8]_i_1_n_0 ));
  FDRE \rx_shift_reg[8]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(Q[1]),
        .Q(rx_shift[8]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_shift_reg[9]_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \rx_shift_reg[9]__0 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift1),
        .D(\<const0> ),
        .Q(Q[1]),
        .R(\<const0> ));
endmodule

(* BAUD_RATE = "115200" *) (* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) 
(* CLOCK_FREQ = "125000000" *) (* CYCLES_PER_SECOND = "125000000" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS,
    AUD_PWM,
    AUD_SD,
    FPGA_SERIAL_RX,
    FPGA_SERIAL_TX);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;
  output AUD_PWM;
  output AUD_SD;
  input FPGA_SERIAL_RX;
  output FPGA_SERIAL_TX;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_SD;
  wire [3:0]BUTTONS;
  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire FPGA_SERIAL_RX;
  wire FPGA_SERIAL_RX_IBUF;
  wire FPGA_SERIAL_TX;
  wire FPGA_SERIAL_TX_OBUF;
  wire [5:0]LEDS;
  wire [1:0]SWITCHES;
  wire [0:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire bp_n_1;
  wire bp_n_2;
  wire [7:0]din;
  wire mem_ctrl_n_1;
  wire mem_ctrl_n_2;
  wire mem_ctrl_n_3;
  wire mem_ctrl_n_4;
  wire mem_ctrl_n_5;
  wire mem_ctrl_n_6;
  wire mem_ctrl_n_7;
  wire mem_ctrl_n_8;
  wire mem_tx_wr_en;
  wire on_chip_uart_n_4;
  wire on_chip_uart_n_5;
  wire out;
  wire out_0;
  wire rdpnt02_out;
  wire rdpnt02_out_1;
  wire rx_fifo_n_1;
  wire rx_fifo_n_10;
  wire rx_fifo_n_2;
  wire rx_fifo_n_3;
  wire rx_fifo_n_4;
  wire rx_fifo_n_5;
  wire rx_fifo_n_6;
  wire rx_fifo_n_7;
  wire rx_fifo_n_8;
  wire rx_fifo_n_9;
  wire serial_out_tx;
  wire switches_sync;
  wire tx_fifo_empty;
  wire tx_fifo_empty_delayed;
  wire tx_fifo_n_0;
  wire tx_fifo_n_1;
  wire tx_fifo_n_10;
  wire tx_fifo_n_11;
  wire tx_fifo_n_12;
  wire tx_fifo_n_3;
  wire tx_fifo_n_5;
  wire tx_fifo_n_6;
  wire tx_fifo_n_7;
  wire tx_fifo_n_8;
  wire tx_fifo_n_9;
  wire \uareceive/has_byte ;
  wire [9:9]\uatransmit/rx_shift ;

  OBUFT AUD_PWM_OBUF_inst
       (.I(\<const0> ),
        .O(AUD_PWM),
        .T(\<const1> ));
  OBUFT AUD_SD_OBUF_inst
       (.I(\<const0> ),
        .O(AUD_SD),
        .T(\<const1> ));
  IBUF \BUTTONS_IBUF[0]_inst 
       (.I(BUTTONS[0]),
        .O(BUTTONS_IBUF));
  BUFG CLK_125MHZ_FPGA_IBUF_BUFG_inst
       (.I(CLK_125MHZ_FPGA_IBUF),
        .O(CLK_125MHZ_FPGA_IBUF_BUFG));
  IBUF CLK_125MHZ_FPGA_IBUF_inst
       (.I(CLK_125MHZ_FPGA),
        .O(CLK_125MHZ_FPGA_IBUF));
  IBUF FPGA_SERIAL_RX_IBUF_inst
       (.I(FPGA_SERIAL_RX),
        .O(FPGA_SERIAL_RX_IBUF));
  OBUF FPGA_SERIAL_TX_OBUF_inst
       (.I(FPGA_SERIAL_TX_OBUF),
        .O(FPGA_SERIAL_TX));
  GND GND
       (.G(\<const0> ));
  OBUF \LEDS_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(LEDS[0]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(LEDS[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(LEDS[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q({\uatransmit/rx_shift ,serial_out_tx}),
        .SR(out_0),
        .\edge_detect_pulse_reg[0] (bp_n_0),
        .\edge_detect_pulse_reg[0]_0 (out),
        .rdpnt02_out(rdpnt02_out_1),
        .rdpnt02_out_0(rdpnt02_out),
        .\rx_shift_reg[0] (on_chip_uart_n_4),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed),
        .tx_fifo_empty_delayed_reg(bp_n_1),
        .tx_fifo_empty_delayed_reg_0(bp_n_2));
  mem_controller mem_ctrl
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\FSM_sequential_curr_state_reg[0]_0 (bp_n_0),
        .Q({rx_fifo_n_3,rx_fifo_n_4,rx_fifo_n_5,rx_fifo_n_6,rx_fifo_n_7,rx_fifo_n_8,rx_fifo_n_9,rx_fifo_n_10}),
        .cmddone_reg_0(rx_fifo_n_1),
        .din({mem_ctrl_n_3,mem_ctrl_n_4,mem_ctrl_n_5,mem_ctrl_n_6,mem_ctrl_n_7,mem_ctrl_n_8}),
        .mem_reg(mem_ctrl_n_1),
        .mem_reg_0(mem_ctrl_n_2),
        .mem_tx_wr_en(mem_tx_wr_en),
        .switches_sync(switches_sync),
        .tx_fifo_wr_en_reg_0(tx_fifo_n_1),
        .tx_fifo_wr_en_reg_1(tx_fifo_n_0),
        .tx_fifo_wr_en_reg_2(tx_fifo_n_3));
  uart on_chip_uart
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .FPGA_SERIAL_RX_IBUF(FPGA_SERIAL_RX_IBUF),
        .FPGA_SERIAL_TX_OBUF(FPGA_SERIAL_TX_OBUF),
        .Q({\uatransmit/rx_shift ,serial_out_tx}),
        .\bit_counter_reg[0] (on_chip_uart_n_5),
        .\bit_counter_reg[1] (bp_n_0),
        .\bit_counter_reg[3] (on_chip_uart_n_4),
        .has_byte(\uareceive/has_byte ),
        .has_byte_reg(rx_fifo_n_2),
        .\rx_shift_reg[0] (bp_n_2),
        .\rx_shift_reg[8] (din),
        .\rx_shift_reg[8]_0 ({tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10,tx_fifo_n_11,tx_fifo_n_12}),
        .\rx_shift_reg[9] (bp_n_1),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed));
  fifo rx_fifo
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .SR(out),
        .has_byte(\uareceive/has_byte ),
        .out({rx_fifo_n_3,rx_fifo_n_4,rx_fifo_n_5,rx_fifo_n_6,rx_fifo_n_7,rx_fifo_n_8,rx_fifo_n_9,rx_fifo_n_10}),
        .\out_reg[7]_0 (din),
        .\out_reg[7]_1 (on_chip_uart_n_5),
        .rdpnt02_out(rdpnt02_out),
        .\rdpnt_reg[2]_0 (bp_n_0),
        .switches_sync(switches_sync),
        .wrflipbit_reg_0(rx_fifo_n_1),
        .wrflipbit_reg_1(rx_fifo_n_2));
  synchronizer__parameterized0 switch_sync
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .SWITCHES_IBUF(SWITCHES_IBUF),
        .switches_sync(switches_sync));
  fifo_0 tx_fifo
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .SR(out_0),
        .din({mem_ctrl_n_3,mem_ctrl_n_4,mem_ctrl_n_5,mem_ctrl_n_6,mem_ctrl_n_7,mem_ctrl_n_8}),
        .mem_tx_wr_en(mem_tx_wr_en),
        .out({tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10,tx_fifo_n_11,tx_fifo_n_12}),
        .\out_reg[6]_0 (mem_ctrl_n_2),
        .\out_reg[7]_0 (mem_ctrl_n_1),
        .\out_reg[7]_1 (on_chip_uart_n_4),
        .rdflipbit_reg_0(tx_fifo_n_1),
        .rdpnt02_out(rdpnt02_out_1),
        .\rdpnt_reg[0]_0 (tx_fifo_n_3),
        .\rdpnt_reg[2]_0 (bp_n_0),
        .switches_sync(switches_sync),
        .tx_fifo_empty(tx_fifo_empty),
        .wrflipbit_reg_0(tx_fifo_n_0));
  FDRE tx_fifo_empty_delayed_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_fifo_empty),
        .Q(tx_fifo_empty_delayed),
        .R(\<const0> ));
endmodule
