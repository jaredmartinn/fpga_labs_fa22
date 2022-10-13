// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Sep 19 16:36:32 2022
// Host        : c111-10.eecs.berkeley.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -file post_synth.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (SR,
    Q,
    \edge_detect_pulse_reg[3] ,
    \edge_detect_pulse_reg[1] ,
    BUTTONS_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    count_reg);
  output [0:0]SR;
  output [3:0]Q;
  output \edge_detect_pulse_reg[3] ;
  output \edge_detect_pulse_reg[1] ;
  input [3:0]BUTTONS_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input count_reg;

  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]Q;
  wire [0:0]SR;
  wire button_edge_detector_n_10;
  wire button_edge_detector_n_7;
  wire count_reg;
  wire [3:0]debounced_signals;
  wire \edge_detect_pulse_reg[1] ;
  wire \edge_detect_pulse_reg[3] ;
  wire p_1_in;
  wire p_2_in;
  wire [3:0]p_6_out;
  wire [3:0]synchronized_signals;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q({button_edge_detector_n_7,p_2_in,p_1_in,button_edge_detector_n_10}),
        .\sat_cnt_reg[3][5]_0 (p_6_out),
        .synchronized_signals(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(Q),
        .SR(SR),
        .count_reg(count_reg),
        .\edge_detect_pulse_reg[1]_0 (\edge_detect_pulse_reg[1] ),
        .\edge_detect_pulse_reg[3]_0 (\edge_detect_pulse_reg[3] ),
        .\edge_detect_pulse_reg[3]_1 (p_6_out),
        .\q_reg[3]_0 ({button_edge_detector_n_7,p_2_in,p_1_in,button_edge_detector_n_10}));
  synchronizer button_synchronizer
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .synchronized_signals(synchronized_signals));
endmodule

module counter
   (count_reg_0,
    Q,
    count_reg_1,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \cycles_reg[0]_0 ,
    \cycles_reg[26]_0 ,
    SR);
  output count_reg_0;
  output [3:0]Q;
  input count_reg_1;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]\cycles_reg[0]_0 ;
  input \cycles_reg[26]_0 ;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]Q;
  wire [0:0]SR;
  wire count_reg_0;
  wire count_reg_1;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire [26:0]cycles;
  wire cycles0_carry__0_n_0;
  wire cycles0_carry__0_n_1;
  wire cycles0_carry__0_n_2;
  wire cycles0_carry__0_n_3;
  wire cycles0_carry__1_n_0;
  wire cycles0_carry__1_n_1;
  wire cycles0_carry__1_n_2;
  wire cycles0_carry__1_n_3;
  wire cycles0_carry__2_n_0;
  wire cycles0_carry__2_n_1;
  wire cycles0_carry__2_n_2;
  wire cycles0_carry__2_n_3;
  wire cycles0_carry__3_n_0;
  wire cycles0_carry__3_n_1;
  wire cycles0_carry__3_n_2;
  wire cycles0_carry__3_n_3;
  wire cycles0_carry__4_n_0;
  wire cycles0_carry__4_n_1;
  wire cycles0_carry__4_n_2;
  wire cycles0_carry__4_n_3;
  wire cycles0_carry__5_n_3;
  wire cycles0_carry_n_0;
  wire cycles0_carry_n_1;
  wire cycles0_carry_n_2;
  wire cycles0_carry_n_3;
  wire \cycles[0]_i_1_n_0 ;
  wire \cycles[26]_i_1_n_0 ;
  wire \cycles[26]_i_3_n_0 ;
  wire \cycles[26]_i_4_n_0 ;
  wire \cycles[26]_i_5_n_0 ;
  wire \cycles[26]_i_6_n_0 ;
  wire \cycles[26]_i_7_n_0 ;
  wire \cycles[26]_i_8_n_0 ;
  wire [3:0]\cycles_reg[0]_0 ;
  wire \cycles_reg[26]_0 ;
  wire [26:1]data0;
  wire [3:0]p_0_in__3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    count_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(count_reg_1),
        .Q(count_reg_0),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h59A6)) 
    \counter[1]_i_1 
       (.I0(Q[0]),
        .I1(\cycles_reg[0]_0 [1]),
        .I2(\cycles_reg[0]_0 [0]),
        .I3(Q[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h77E78818)) 
    \counter[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\cycles_reg[0]_0 [1]),
        .I3(\cycles_reg[0]_0 [0]),
        .I4(Q[2]),
        .O(p_0_in__3[2]));
  LUT5 #(
    .INIT(32'hEEEFEEEE)) 
    \counter[3]_i_2 
       (.I0(\cycles_reg[0]_0 [0]),
        .I1(\cycles_reg[0]_0 [1]),
        .I2(\cycles[26]_i_3_n_0 ),
        .I3(\counter[3]_i_4_n_0 ),
        .I4(\cycles[26]_i_5_n_0 ),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFE7F80800180)) 
    \counter[3]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\cycles_reg[0]_0 [1]),
        .I4(\cycles_reg[0]_0 [0]),
        .I5(Q[3]),
        .O(p_0_in__3[3]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \counter[3]_i_4 
       (.I0(\cycles[26]_i_4_n_0 ),
        .I1(cycles[8]),
        .I2(\cycles_reg[0]_0 [2]),
        .I3(count_reg_0),
        .O(\counter[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[3]),
        .Q(Q[3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry
       (.CI(\<const0> ),
        .CO({cycles0_carry_n_0,cycles0_carry_n_1,cycles0_carry_n_2,cycles0_carry_n_3}),
        .CYINIT(cycles[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S(cycles[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__0
       (.CI(cycles0_carry_n_0),
        .CO({cycles0_carry__0_n_0,cycles0_carry__0_n_1,cycles0_carry__0_n_2,cycles0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S(cycles[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__1
       (.CI(cycles0_carry__0_n_0),
        .CO({cycles0_carry__1_n_0,cycles0_carry__1_n_1,cycles0_carry__1_n_2,cycles0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S(cycles[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__2
       (.CI(cycles0_carry__1_n_0),
        .CO({cycles0_carry__2_n_0,cycles0_carry__2_n_1,cycles0_carry__2_n_2,cycles0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S(cycles[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__3
       (.CI(cycles0_carry__2_n_0),
        .CO({cycles0_carry__3_n_0,cycles0_carry__3_n_1,cycles0_carry__3_n_2,cycles0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S(cycles[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__4
       (.CI(cycles0_carry__3_n_0),
        .CO({cycles0_carry__4_n_0,cycles0_carry__4_n_1,cycles0_carry__4_n_2,cycles0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S(cycles[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__5
       (.CI(cycles0_carry__4_n_0),
        .CO(cycles0_carry__5_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[26:25]),
        .S({\<const0> ,\<const0> ,cycles[26:25]}));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    \cycles[0]_i_1 
       (.I0(\cycles_reg[0]_0 [2]),
        .I1(\cycles_reg[0]_0 [0]),
        .I2(\cycles_reg[0]_0 [1]),
        .I3(count_reg_0),
        .I4(\cycles_reg[0]_0 [3]),
        .I5(cycles[0]),
        .O(\cycles[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \cycles[26]_i_1 
       (.I0(\cycles[26]_i_3_n_0 ),
        .I1(cycles[8]),
        .I2(\cycles[26]_i_4_n_0 ),
        .I3(\cycles[26]_i_5_n_0 ),
        .I4(\cycles_reg[26]_0 ),
        .O(\cycles[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \cycles[26]_i_3 
       (.I0(cycles[13]),
        .I1(cycles[26]),
        .I2(cycles[10]),
        .I3(\cycles[26]_i_6_n_0 ),
        .O(\cycles[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \cycles[26]_i_4 
       (.I0(cycles[24]),
        .I1(cycles[14]),
        .I2(cycles[9]),
        .I3(cycles[17]),
        .I4(cycles[3]),
        .I5(cycles[20]),
        .O(\cycles[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \cycles[26]_i_5 
       (.I0(\cycles[26]_i_7_n_0 ),
        .I1(\cycles[26]_i_8_n_0 ),
        .I2(cycles[1]),
        .I3(cycles[6]),
        .I4(cycles[22]),
        .O(\cycles[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cycles[26]_i_6 
       (.I0(cycles[4]),
        .I1(cycles[5]),
        .I2(cycles[2]),
        .I3(cycles[25]),
        .O(\cycles[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \cycles[26]_i_7 
       (.I0(cycles[23]),
        .I1(cycles[12]),
        .I2(cycles[0]),
        .I3(cycles[21]),
        .I4(cycles[7]),
        .I5(cycles[18]),
        .O(\cycles[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cycles[26]_i_8 
       (.I0(cycles[16]),
        .I1(cycles[15]),
        .I2(cycles[11]),
        .I3(cycles[19]),
        .O(\cycles[26]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles[0]_i_1_n_0 ),
        .Q(cycles[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[10]),
        .Q(cycles[10]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[11]),
        .Q(cycles[11]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[12]),
        .Q(cycles[12]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[13]),
        .Q(cycles[13]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[14]),
        .Q(cycles[14]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[15]),
        .Q(cycles[15]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[16]),
        .Q(cycles[16]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[17]),
        .Q(cycles[17]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[18]),
        .Q(cycles[18]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[19]),
        .Q(cycles[19]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[1]),
        .Q(cycles[1]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[20]),
        .Q(cycles[20]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[21]),
        .Q(cycles[21]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[22]),
        .Q(cycles[22]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[23]),
        .Q(cycles[23]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[24] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[24]),
        .Q(cycles[24]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[25] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[25]),
        .Q(cycles[25]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[26] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[26]),
        .Q(cycles[26]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[2]),
        .Q(cycles[2]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[3]),
        .Q(cycles[3]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[4]),
        .Q(cycles[4]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[5]),
        .Q(cycles[5]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[6]),
        .Q(cycles[6]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[7]),
        .Q(cycles[7]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[8]),
        .Q(cycles[8]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles_reg[26]_0 ),
        .D(data0[9]),
        .Q(cycles[9]),
        .R(\cycles[26]_i_1_n_0 ));
endmodule

module dac
   (CO,
    next_sample,
    FSM_sequential_code_reg,
    \i_reg[8]_0 ,
    code__0,
    \cycles_reg[7] ,
    \cycles_reg[7]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]CO;
  output next_sample;
  output FSM_sequential_code_reg;
  output \i_reg[8]_0 ;
  input code__0;
  input \cycles_reg[7] ;
  input \cycles_reg[7]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire FSM_sequential_code_reg;
  wire code__0;
  wire \cycles[6]_i_3_n_0 ;
  wire \cycles[7]_i_3_n_0 ;
  wire \cycles_reg[7] ;
  wire \cycles_reg[7]_0 ;
  wire \i[0]_i_1_n_0 ;
  wire \i[9]_i_1_n_0 ;
  wire [9:0]i_reg;
  wire \i_reg[8]_0 ;
  wire next_sample;
  wire [8:1]p_0_in__4;
  wire pwm0_carry__0_i_1_n_0;
  wire pwm0_carry__0_i_2_n_0;
  wire pwm0_carry_i_1_n_0;
  wire pwm0_carry_i_2_n_0;
  wire pwm0_carry_i_3_n_0;
  wire pwm0_carry_i_4_n_0;
  wire pwm0_carry_i_5_n_0;
  wire pwm0_carry_i_6_n_0;
  wire pwm0_carry_i_7_n_0;
  wire pwm0_carry_i_8_n_0;
  wire pwm0_carry_n_0;
  wire pwm0_carry_n_1;
  wire pwm0_carry_n_2;
  wire pwm0_carry_n_3;

  LUT2 #(
    .INIT(4'h6)) 
    FSM_sequential_code_i_1
       (.I0(\i_reg[8]_0 ),
        .I1(code__0),
        .O(FSM_sequential_code_reg));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cycles[6]_i_1 
       (.I0(i_reg[9]),
        .I1(\cycles[6]_i_3_n_0 ),
        .I2(i_reg[7]),
        .I3(i_reg[6]),
        .I4(i_reg[8]),
        .O(next_sample));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cycles[6]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(i_reg[5]),
        .I5(i_reg[4]),
        .O(\cycles[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \cycles[7]_i_1 
       (.I0(i_reg[8]),
        .I1(\cycles[7]_i_3_n_0 ),
        .I2(\cycles[6]_i_3_n_0 ),
        .I3(i_reg[9]),
        .I4(\cycles_reg[7] ),
        .I5(\cycles_reg[7]_0 ),
        .O(\i_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cycles[7]_i_3 
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(\cycles[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i_reg[0]),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[1]_i_1 
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i[2]_i_1 
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .I2(i_reg[2]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i[3]_i_1 
       (.I0(i_reg[3]),
        .I1(i_reg[1]),
        .I2(i_reg[0]),
        .I3(i_reg[2]),
        .O(p_0_in__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i[4]_i_1 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(i_reg[4]),
        .O(p_0_in__4[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i[5]_i_1 
       (.I0(i_reg[5]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .I3(i_reg[3]),
        .I4(i_reg[2]),
        .I5(i_reg[4]),
        .O(p_0_in__4[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[6]_i_1 
       (.I0(i_reg[6]),
        .I1(\cycles[6]_i_3_n_0 ),
        .O(p_0_in__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i[7]_i_1 
       (.I0(i_reg[7]),
        .I1(\cycles[6]_i_3_n_0 ),
        .I2(i_reg[6]),
        .O(p_0_in__4[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i[8]_i_1 
       (.I0(i_reg[8]),
        .I1(i_reg[6]),
        .I2(i_reg[7]),
        .I3(\cycles[6]_i_3_n_0 ),
        .O(p_0_in__4[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i[9]_i_1 
       (.I0(i_reg[9]),
        .I1(\cycles[6]_i_3_n_0 ),
        .I2(i_reg[7]),
        .I3(i_reg[6]),
        .I4(i_reg[8]),
        .O(\i[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\i[0]_i_1_n_0 ),
        .Q(i_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[1]),
        .Q(i_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[2]),
        .Q(i_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[3]),
        .Q(i_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[4]),
        .Q(i_reg[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[5]),
        .Q(i_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[6]),
        .Q(i_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[7]),
        .Q(i_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__4[8]),
        .Q(i_reg[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\i[9]_i_1_n_0 ),
        .Q(i_reg[9]),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry
       (.CI(\<const0> ),
        .CO({pwm0_carry_n_0,pwm0_carry_n_1,pwm0_carry_n_2,pwm0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({pwm0_carry_i_1_n_0,pwm0_carry_i_2_n_0,pwm0_carry_i_3_n_0,pwm0_carry_i_4_n_0}),
        .S({pwm0_carry_i_5_n_0,pwm0_carry_i_6_n_0,pwm0_carry_i_7_n_0,pwm0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry__0
       (.CI(pwm0_carry_n_0),
        .CO(CO),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,pwm0_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,\<const0> ,pwm0_carry__0_i_2_n_0}));
  LUT3 #(
    .INIT(8'h45)) 
    pwm0_carry__0_i_1
       (.I0(i_reg[9]),
        .I1(code__0),
        .I2(i_reg[8]),
        .O(pwm0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    pwm0_carry__0_i_2
       (.I0(i_reg[8]),
        .I1(code__0),
        .I2(i_reg[9]),
        .O(pwm0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h07)) 
    pwm0_carry_i_1
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .I2(code__0),
        .O(pwm0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    pwm0_carry_i_2
       (.I0(i_reg[5]),
        .I1(i_reg[4]),
        .I2(code__0),
        .O(pwm0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    pwm0_carry_i_3
       (.I0(code__0),
        .I1(i_reg[3]),
        .I2(i_reg[2]),
        .O(pwm0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm0_carry_i_4
       (.I0(i_reg[1]),
        .O(pwm0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h24)) 
    pwm0_carry_i_5
       (.I0(i_reg[7]),
        .I1(code__0),
        .I2(i_reg[6]),
        .O(pwm0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry_i_6
       (.I0(i_reg[5]),
        .I1(code__0),
        .I2(i_reg[4]),
        .O(pwm0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h24)) 
    pwm0_carry_i_7
       (.I0(i_reg[3]),
        .I1(code__0),
        .I2(i_reg[2]),
        .O(pwm0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm0_carry_i_8
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(pwm0_carry_i_8_n_0));
endmodule

module debouncer
   (D,
    \sat_cnt_reg[3][5]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    synchronized_signals,
    Q);
  output [3:0]D;
  output [3:0]\sat_cnt_reg[3][5]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]synchronized_signals;
  input [3:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [3:0]Q;
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
  wire [8:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire [8:0]p_0_in__2;
  wire \q[0]_i_2_n_0 ;
  wire \q[1]_i_2_n_0 ;
  wire \q[2]_i_2_n_0 ;
  wire \q[3]_i_2_n_0 ;
  wire sat_cnt;
  wire \sat_cnt[0][2]_i_1_n_0 ;
  wire \sat_cnt[0][8]_i_10_n_0 ;
  wire \sat_cnt[0][8]_i_1_n_0 ;
  wire \sat_cnt[0][8]_i_2_n_0 ;
  wire \sat_cnt[0][8]_i_4_n_0 ;
  wire \sat_cnt[0][8]_i_5_n_0 ;
  wire \sat_cnt[0][8]_i_6_n_0 ;
  wire \sat_cnt[0][8]_i_7_n_0 ;
  wire \sat_cnt[0][8]_i_8_n_0 ;
  wire \sat_cnt[0][8]_i_9_n_0 ;
  wire \sat_cnt[1][2]_i_1_n_0 ;
  wire \sat_cnt[1][8]_i_1_n_0 ;
  wire \sat_cnt[1][8]_i_2_n_0 ;
  wire \sat_cnt[1][8]_i_4_n_0 ;
  wire \sat_cnt[2][2]_i_1_n_0 ;
  wire \sat_cnt[2][8]_i_1_n_0 ;
  wire \sat_cnt[2][8]_i_2_n_0 ;
  wire \sat_cnt[2][8]_i_4_n_0 ;
  wire \sat_cnt[3][2]_i_1_n_0 ;
  wire \sat_cnt[3][8]_i_1_n_0 ;
  wire \sat_cnt[3][8]_i_4_n_0 ;
  wire [8:0]\sat_cnt_reg[0]_0 ;
  wire [8:0]\sat_cnt_reg[1]_1 ;
  wire [8:0]\sat_cnt_reg[2]_2 ;
  wire [3:0]\sat_cnt_reg[3][5]_0 ;
  wire [8:0]\sat_cnt_reg[3]_3 ;
  wire [3:0]synchronized_signals;

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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \edge_detect_pulse[0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [5]),
        .I1(\sat_cnt_reg[0]_0 [6]),
        .I2(\sat_cnt_reg[0]_0 [2]),
        .I3(\q[0]_i_2_n_0 ),
        .I4(Q[0]),
        .O(\sat_cnt_reg[3][5]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \edge_detect_pulse[1]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [5]),
        .I1(\sat_cnt_reg[1]_1 [6]),
        .I2(\sat_cnt_reg[1]_1 [2]),
        .I3(\q[1]_i_2_n_0 ),
        .I4(Q[1]),
        .O(\sat_cnt_reg[3][5]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \edge_detect_pulse[2]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [5]),
        .I1(\sat_cnt_reg[2]_2 [6]),
        .I2(\sat_cnt_reg[2]_2 [2]),
        .I3(\q[2]_i_2_n_0 ),
        .I4(Q[2]),
        .O(\sat_cnt_reg[3][5]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \edge_detect_pulse[3]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [5]),
        .I1(\sat_cnt_reg[3]_3 [6]),
        .I2(\sat_cnt_reg[3]_3 [2]),
        .I3(\q[3]_i_2_n_0 ),
        .I4(Q[3]),
        .O(\sat_cnt_reg[3][5]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \q[0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [5]),
        .I1(\sat_cnt_reg[0]_0 [6]),
        .I2(\sat_cnt_reg[0]_0 [2]),
        .I3(\q[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \q[0]_i_2 
       (.I0(\sat_cnt_reg[0]_0 [7]),
        .I1(\sat_cnt_reg[0]_0 [3]),
        .I2(\sat_cnt_reg[0]_0 [4]),
        .I3(\sat_cnt_reg[0]_0 [8]),
        .I4(\sat_cnt_reg[0]_0 [0]),
        .I5(\sat_cnt_reg[0]_0 [1]),
        .O(\q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \q[1]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [5]),
        .I1(\sat_cnt_reg[1]_1 [6]),
        .I2(\sat_cnt_reg[1]_1 [2]),
        .I3(\q[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \q[1]_i_2 
       (.I0(\sat_cnt_reg[1]_1 [7]),
        .I1(\sat_cnt_reg[1]_1 [3]),
        .I2(\sat_cnt_reg[1]_1 [4]),
        .I3(\sat_cnt_reg[1]_1 [8]),
        .I4(\sat_cnt_reg[1]_1 [0]),
        .I5(\sat_cnt_reg[1]_1 [1]),
        .O(\q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \q[2]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [5]),
        .I1(\sat_cnt_reg[2]_2 [6]),
        .I2(\sat_cnt_reg[2]_2 [2]),
        .I3(\q[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \q[2]_i_2 
       (.I0(\sat_cnt_reg[2]_2 [7]),
        .I1(\sat_cnt_reg[2]_2 [3]),
        .I2(\sat_cnt_reg[2]_2 [4]),
        .I3(\sat_cnt_reg[2]_2 [8]),
        .I4(\sat_cnt_reg[2]_2 [0]),
        .I5(\sat_cnt_reg[2]_2 [1]),
        .O(\q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \q[3]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [5]),
        .I1(\sat_cnt_reg[3]_3 [6]),
        .I2(\sat_cnt_reg[3]_3 [2]),
        .I3(\q[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \q[3]_i_2 
       (.I0(\sat_cnt_reg[3]_3 [7]),
        .I1(\sat_cnt_reg[3]_3 [3]),
        .I2(\sat_cnt_reg[3]_3 [4]),
        .I3(\sat_cnt_reg[3]_3 [8]),
        .I4(\sat_cnt_reg[3]_3 [0]),
        .I5(\sat_cnt_reg[3]_3 [1]),
        .O(\q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[0][0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[0][1]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[0][2]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [2]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [0]),
        .O(\sat_cnt[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sat_cnt[0][3]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [1]),
        .I1(\sat_cnt_reg[0]_0 [0]),
        .I2(\sat_cnt_reg[0]_0 [2]),
        .I3(\sat_cnt_reg[0]_0 [3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[0][4]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [4]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [0]),
        .I3(\sat_cnt_reg[0]_0 [2]),
        .I4(\sat_cnt_reg[0]_0 [3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[0][5]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [5]),
        .I1(\sat_cnt_reg[0]_0 [3]),
        .I2(\sat_cnt_reg[0]_0 [2]),
        .I3(\sat_cnt_reg[0]_0 [0]),
        .I4(\sat_cnt_reg[0]_0 [1]),
        .I5(\sat_cnt_reg[0]_0 [4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[0][6]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [6]),
        .I1(\sat_cnt_reg[0]_0 [4]),
        .I2(\sat_cnt[0][8]_i_10_n_0 ),
        .I3(\sat_cnt_reg[0]_0 [5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[0][7]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [7]),
        .I1(\sat_cnt_reg[0]_0 [5]),
        .I2(\sat_cnt[0][8]_i_10_n_0 ),
        .I3(\sat_cnt_reg[0]_0 [4]),
        .I4(\sat_cnt_reg[0]_0 [6]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \sat_cnt[0][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(\sat_cnt[0][8]_i_5_n_0 ),
        .I2(\sat_cnt[0][8]_i_6_n_0 ),
        .I3(\sat_cnt[0][8]_i_7_n_0 ),
        .I4(synchronized_signals[0]),
        .O(\sat_cnt[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sat_cnt[0][8]_i_10 
       (.I0(\sat_cnt_reg[0]_0 [3]),
        .I1(\sat_cnt_reg[0]_0 [2]),
        .I2(\sat_cnt_reg[0]_0 [0]),
        .I3(\sat_cnt_reg[0]_0 [1]),
        .O(\sat_cnt[0][8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFB00000000)) 
    \sat_cnt[0][8]_i_2 
       (.I0(\sat_cnt_reg[0]_0 [5]),
        .I1(\sat_cnt_reg[0]_0 [6]),
        .I2(\sat_cnt_reg[0]_0 [2]),
        .I3(\q[0]_i_2_n_0 ),
        .I4(\sat_cnt[0][8]_i_8_n_0 ),
        .I5(\sat_cnt[0][8]_i_9_n_0 ),
        .O(\sat_cnt[0][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[0][8]_i_3 
       (.I0(\sat_cnt_reg[0]_0 [8]),
        .I1(\sat_cnt_reg[0]_0 [6]),
        .I2(\sat_cnt_reg[0]_0 [4]),
        .I3(\sat_cnt[0][8]_i_10_n_0 ),
        .I4(\sat_cnt_reg[0]_0 [5]),
        .I5(\sat_cnt_reg[0]_0 [7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \sat_cnt[0][8]_i_4 
       (.I0(cycles_reg[2]),
        .I1(cycles_reg[13]),
        .I2(cycles_reg[10]),
        .I3(cycles_reg[1]),
        .O(\sat_cnt[0][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sat_cnt[0][8]_i_5 
       (.I0(cycles_reg[4]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[14]),
        .I3(cycles_reg[7]),
        .O(\sat_cnt[0][8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \sat_cnt[0][8]_i_6 
       (.I0(cycles_reg[6]),
        .I1(cycles_reg[15]),
        .I2(cycles_reg[12]),
        .I3(cycles_reg[9]),
        .O(\sat_cnt[0][8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sat_cnt[0][8]_i_7 
       (.I0(cycles_reg[8]),
        .I1(cycles_reg[3]),
        .I2(cycles_reg[5]),
        .I3(cycles_reg[11]),
        .O(\sat_cnt[0][8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \sat_cnt[0][8]_i_8 
       (.I0(cycles_reg[1]),
        .I1(cycles_reg[10]),
        .I2(cycles_reg[13]),
        .I3(cycles_reg[2]),
        .I4(\sat_cnt[0][8]_i_5_n_0 ),
        .O(\sat_cnt[0][8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \sat_cnt[0][8]_i_9 
       (.I0(cycles_reg[9]),
        .I1(cycles_reg[12]),
        .I2(cycles_reg[15]),
        .I3(cycles_reg[6]),
        .I4(\sat_cnt[0][8]_i_7_n_0 ),
        .O(\sat_cnt[0][8]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[1][0]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[1][1]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [0]),
        .I1(\sat_cnt_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[1][2]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [2]),
        .I1(\sat_cnt_reg[1]_1 [1]),
        .I2(\sat_cnt_reg[1]_1 [0]),
        .O(\sat_cnt[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sat_cnt[1][3]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [1]),
        .I1(\sat_cnt_reg[1]_1 [0]),
        .I2(\sat_cnt_reg[1]_1 [2]),
        .I3(\sat_cnt_reg[1]_1 [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[1][4]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [4]),
        .I1(\sat_cnt_reg[1]_1 [1]),
        .I2(\sat_cnt_reg[1]_1 [0]),
        .I3(\sat_cnt_reg[1]_1 [2]),
        .I4(\sat_cnt_reg[1]_1 [3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[1][5]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [5]),
        .I1(\sat_cnt_reg[1]_1 [3]),
        .I2(\sat_cnt_reg[1]_1 [2]),
        .I3(\sat_cnt_reg[1]_1 [0]),
        .I4(\sat_cnt_reg[1]_1 [1]),
        .I5(\sat_cnt_reg[1]_1 [4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[1][6]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [6]),
        .I1(\sat_cnt_reg[1]_1 [4]),
        .I2(\sat_cnt[1][8]_i_4_n_0 ),
        .I3(\sat_cnt_reg[1]_1 [5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[1][7]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [7]),
        .I1(\sat_cnt_reg[1]_1 [5]),
        .I2(\sat_cnt[1][8]_i_4_n_0 ),
        .I3(\sat_cnt_reg[1]_1 [4]),
        .I4(\sat_cnt_reg[1]_1 [6]),
        .O(p_0_in__0[7]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \sat_cnt[1][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(\sat_cnt[0][8]_i_5_n_0 ),
        .I2(\sat_cnt[0][8]_i_6_n_0 ),
        .I3(\sat_cnt[0][8]_i_7_n_0 ),
        .I4(synchronized_signals[1]),
        .O(\sat_cnt[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFB00000000)) 
    \sat_cnt[1][8]_i_2 
       (.I0(\sat_cnt_reg[1]_1 [5]),
        .I1(\sat_cnt_reg[1]_1 [6]),
        .I2(\sat_cnt_reg[1]_1 [2]),
        .I3(\q[1]_i_2_n_0 ),
        .I4(\sat_cnt[0][8]_i_8_n_0 ),
        .I5(\sat_cnt[0][8]_i_9_n_0 ),
        .O(\sat_cnt[1][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[1][8]_i_3 
       (.I0(\sat_cnt_reg[1]_1 [8]),
        .I1(\sat_cnt_reg[1]_1 [6]),
        .I2(\sat_cnt_reg[1]_1 [4]),
        .I3(\sat_cnt[1][8]_i_4_n_0 ),
        .I4(\sat_cnt_reg[1]_1 [5]),
        .I5(\sat_cnt_reg[1]_1 [7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sat_cnt[1][8]_i_4 
       (.I0(\sat_cnt_reg[1]_1 [3]),
        .I1(\sat_cnt_reg[1]_1 [2]),
        .I2(\sat_cnt_reg[1]_1 [0]),
        .I3(\sat_cnt_reg[1]_1 [1]),
        .O(\sat_cnt[1][8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[2][0]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[2][1]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [0]),
        .I1(\sat_cnt_reg[2]_2 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[2][2]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [2]),
        .I1(\sat_cnt_reg[2]_2 [1]),
        .I2(\sat_cnt_reg[2]_2 [0]),
        .O(\sat_cnt[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sat_cnt[2][3]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [1]),
        .I1(\sat_cnt_reg[2]_2 [0]),
        .I2(\sat_cnt_reg[2]_2 [2]),
        .I3(\sat_cnt_reg[2]_2 [3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[2][4]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [4]),
        .I1(\sat_cnt_reg[2]_2 [1]),
        .I2(\sat_cnt_reg[2]_2 [0]),
        .I3(\sat_cnt_reg[2]_2 [2]),
        .I4(\sat_cnt_reg[2]_2 [3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[2][5]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [5]),
        .I1(\sat_cnt_reg[2]_2 [3]),
        .I2(\sat_cnt_reg[2]_2 [2]),
        .I3(\sat_cnt_reg[2]_2 [0]),
        .I4(\sat_cnt_reg[2]_2 [1]),
        .I5(\sat_cnt_reg[2]_2 [4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[2][6]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [6]),
        .I1(\sat_cnt_reg[2]_2 [4]),
        .I2(\sat_cnt[2][8]_i_4_n_0 ),
        .I3(\sat_cnt_reg[2]_2 [5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[2][7]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [7]),
        .I1(\sat_cnt_reg[2]_2 [5]),
        .I2(\sat_cnt[2][8]_i_4_n_0 ),
        .I3(\sat_cnt_reg[2]_2 [4]),
        .I4(\sat_cnt_reg[2]_2 [6]),
        .O(p_0_in__1[7]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \sat_cnt[2][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(\sat_cnt[0][8]_i_5_n_0 ),
        .I2(\sat_cnt[0][8]_i_6_n_0 ),
        .I3(\sat_cnt[0][8]_i_7_n_0 ),
        .I4(synchronized_signals[2]),
        .O(\sat_cnt[2][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFB00000000)) 
    \sat_cnt[2][8]_i_2 
       (.I0(\sat_cnt_reg[2]_2 [5]),
        .I1(\sat_cnt_reg[2]_2 [6]),
        .I2(\sat_cnt_reg[2]_2 [2]),
        .I3(\q[2]_i_2_n_0 ),
        .I4(\sat_cnt[0][8]_i_8_n_0 ),
        .I5(\sat_cnt[0][8]_i_9_n_0 ),
        .O(\sat_cnt[2][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[2][8]_i_3 
       (.I0(\sat_cnt_reg[2]_2 [8]),
        .I1(\sat_cnt_reg[2]_2 [6]),
        .I2(\sat_cnt_reg[2]_2 [4]),
        .I3(\sat_cnt[2][8]_i_4_n_0 ),
        .I4(\sat_cnt_reg[2]_2 [5]),
        .I5(\sat_cnt_reg[2]_2 [7]),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sat_cnt[2][8]_i_4 
       (.I0(\sat_cnt_reg[2]_2 [3]),
        .I1(\sat_cnt_reg[2]_2 [2]),
        .I2(\sat_cnt_reg[2]_2 [0]),
        .I3(\sat_cnt_reg[2]_2 [1]),
        .O(\sat_cnt[2][8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[3][0]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[3][1]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [0]),
        .I1(\sat_cnt_reg[3]_3 [1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[3][2]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [2]),
        .I1(\sat_cnt_reg[3]_3 [1]),
        .I2(\sat_cnt_reg[3]_3 [0]),
        .O(\sat_cnt[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sat_cnt[3][3]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [1]),
        .I1(\sat_cnt_reg[3]_3 [0]),
        .I2(\sat_cnt_reg[3]_3 [2]),
        .I3(\sat_cnt_reg[3]_3 [3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[3][4]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [4]),
        .I1(\sat_cnt_reg[3]_3 [1]),
        .I2(\sat_cnt_reg[3]_3 [0]),
        .I3(\sat_cnt_reg[3]_3 [2]),
        .I4(\sat_cnt_reg[3]_3 [3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[3][5]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [5]),
        .I1(\sat_cnt_reg[3]_3 [3]),
        .I2(\sat_cnt_reg[3]_3 [2]),
        .I3(\sat_cnt_reg[3]_3 [0]),
        .I4(\sat_cnt_reg[3]_3 [1]),
        .I5(\sat_cnt_reg[3]_3 [4]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[3][6]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [6]),
        .I1(\sat_cnt_reg[3]_3 [4]),
        .I2(\sat_cnt[3][8]_i_4_n_0 ),
        .I3(\sat_cnt_reg[3]_3 [5]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[3][7]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [7]),
        .I1(\sat_cnt_reg[3]_3 [5]),
        .I2(\sat_cnt[3][8]_i_4_n_0 ),
        .I3(\sat_cnt_reg[3]_3 [4]),
        .I4(\sat_cnt_reg[3]_3 [6]),
        .O(p_0_in__2[7]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \sat_cnt[3][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(\sat_cnt[0][8]_i_5_n_0 ),
        .I2(\sat_cnt[0][8]_i_6_n_0 ),
        .I3(\sat_cnt[0][8]_i_7_n_0 ),
        .I4(synchronized_signals[3]),
        .O(\sat_cnt[3][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFB00000000)) 
    \sat_cnt[3][8]_i_2 
       (.I0(\sat_cnt_reg[3]_3 [5]),
        .I1(\sat_cnt_reg[3]_3 [6]),
        .I2(\sat_cnt_reg[3]_3 [2]),
        .I3(\q[3]_i_2_n_0 ),
        .I4(\sat_cnt[0][8]_i_8_n_0 ),
        .I5(\sat_cnt[0][8]_i_9_n_0 ),
        .O(sat_cnt));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[3][8]_i_3 
       (.I0(\sat_cnt_reg[3]_3 [8]),
        .I1(\sat_cnt_reg[3]_3 [6]),
        .I2(\sat_cnt_reg[3]_3 [4]),
        .I3(\sat_cnt[3][8]_i_4_n_0 ),
        .I4(\sat_cnt_reg[3]_3 [5]),
        .I5(\sat_cnt_reg[3]_3 [7]),
        .O(p_0_in__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sat_cnt[3][8]_i_4 
       (.I0(\sat_cnt_reg[3]_3 [3]),
        .I1(\sat_cnt_reg[3]_3 [2]),
        .I2(\sat_cnt_reg[3]_3 [0]),
        .I3(\sat_cnt_reg[3]_3 [1]),
        .O(\sat_cnt[3][8]_i_4_n_0 ));
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
        .D(\sat_cnt[0][2]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\sat_cnt_reg[1]_1 [0]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\sat_cnt_reg[1]_1 [1]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(\sat_cnt[1][2]_i_1_n_0 ),
        .Q(\sat_cnt_reg[1]_1 [2]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\sat_cnt_reg[1]_1 [3]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\sat_cnt_reg[1]_1 [4]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\sat_cnt_reg[1]_1 [5]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\sat_cnt_reg[1]_1 [6]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\sat_cnt_reg[1]_1 [7]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[1][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[1][8]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(\sat_cnt_reg[1]_1 [8]),
        .R(\sat_cnt[1][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(\sat_cnt_reg[2]_2 [0]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(\sat_cnt_reg[2]_2 [1]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(\sat_cnt[2][2]_i_1_n_0 ),
        .Q(\sat_cnt_reg[2]_2 [2]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(\sat_cnt_reg[2]_2 [3]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(\sat_cnt_reg[2]_2 [4]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(\sat_cnt_reg[2]_2 [5]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(\sat_cnt_reg[2]_2 [6]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(\sat_cnt_reg[2]_2 [7]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[2][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\sat_cnt[2][8]_i_2_n_0 ),
        .D(p_0_in__1[8]),
        .Q(\sat_cnt_reg[2]_2 [8]),
        .R(\sat_cnt[2][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(p_0_in__2[0]),
        .Q(\sat_cnt_reg[3]_3 [0]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(p_0_in__2[1]),
        .Q(\sat_cnt_reg[3]_3 [1]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(\sat_cnt[3][2]_i_1_n_0 ),
        .Q(\sat_cnt_reg[3]_3 [2]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(p_0_in__2[3]),
        .Q(\sat_cnt_reg[3]_3 [3]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(p_0_in__2[4]),
        .Q(\sat_cnt_reg[3]_3 [4]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(p_0_in__2[5]),
        .Q(\sat_cnt_reg[3]_3 [5]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(p_0_in__2[6]),
        .Q(\sat_cnt_reg[3]_3 [6]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(p_0_in__2[7]),
        .Q(\sat_cnt_reg[3]_3 [7]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sat_cnt_reg[3][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(sat_cnt),
        .D(p_0_in__2[8]),
        .Q(\sat_cnt_reg[3]_3 [8]),
        .R(\sat_cnt[3][8]_i_1_n_0 ));
endmodule

module edge_detector
   (SR,
    Q,
    \edge_detect_pulse_reg[3]_0 ,
    \edge_detect_pulse_reg[1]_0 ,
    \q_reg[3]_0 ,
    count_reg,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \edge_detect_pulse_reg[3]_1 );
  output [0:0]SR;
  output [3:0]Q;
  output \edge_detect_pulse_reg[3]_0 ;
  output \edge_detect_pulse_reg[1]_0 ;
  output [3:0]\q_reg[3]_0 ;
  input count_reg;
  input [3:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]\edge_detect_pulse_reg[3]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire count_reg;
  wire \edge_detect_pulse_reg[1]_0 ;
  wire \edge_detect_pulse_reg[3]_0 ;
  wire [3:0]\edge_detect_pulse_reg[3]_1 ;
  wire [3:0]\q_reg[3]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hEF10)) 
    count_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(count_reg),
        .O(\edge_detect_pulse_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \cycles[26]_i_2 
       (.I0(Q[3]),
        .I1(count_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\edge_detect_pulse_reg[3]_0 ));
  FDRE \edge_detect_pulse_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[3]_1 [0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \edge_detect_pulse_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[3]_1 [1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \edge_detect_pulse_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[3]_1 [2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \edge_detect_pulse_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[3]_1 [3]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE \q_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(\q_reg[3]_0 [0]),
        .R(\<const0> ));
  FDRE \q_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(\q_reg[3]_0 [1]),
        .R(\<const0> ));
  FDRE \q_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(\q_reg[3]_0 [2]),
        .R(\<const0> ));
  FDRE \q_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(\q_reg[3]_0 [3]),
        .R(\<const0> ));
endmodule

module sq_wave_gen
   (code__0,
    \cycles_reg[1]_0 ,
    \cycles_reg[7]_0 ,
    FSM_sequential_code_reg_0,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    next_sample,
    \cycles_reg[7]_1 );
  output code__0;
  output \cycles_reg[1]_0 ;
  output \cycles_reg[7]_0 ;
  input FSM_sequential_code_reg_0;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input next_sample;
  input \cycles_reg[7]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire FSM_sequential_code_reg_0;
  wire code__0;
  wire [6:2]cycles;
  wire \cycles[0]_i_1_n_0 ;
  wire \cycles[1]_i_1_n_0 ;
  wire \cycles[3]_i_1_n_0 ;
  wire \cycles[6]_i_4_n_0 ;
  wire \cycles[7]_i_2_n_0 ;
  wire \cycles_reg[1]_0 ;
  wire \cycles_reg[7]_0 ;
  wire \cycles_reg[7]_1 ;
  wire \cycles_reg_n_0_[0] ;
  wire \cycles_reg_n_0_[1] ;
  wire \cycles_reg_n_0_[2] ;
  wire \cycles_reg_n_0_[3] ;
  wire \cycles_reg_n_0_[4] ;
  wire \cycles_reg_n_0_[5] ;
  wire \cycles_reg_n_0_[6] ;
  wire \cycles_reg_n_0_[7] ;
  wire next_sample;

  (* FSM_ENCODED_STATES = "iSTATE:1,iSTATE0:0," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_code_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(FSM_sequential_code_reg_0),
        .Q(code__0),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycles[0]_i_1 
       (.I0(\cycles_reg_n_0_[0] ),
        .O(\cycles[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cycles[1]_i_1 
       (.I0(\cycles_reg_n_0_[1] ),
        .I1(\cycles_reg_n_0_[0] ),
        .O(\cycles[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cycles[2]_i_1 
       (.I0(\cycles_reg_n_0_[2] ),
        .I1(\cycles_reg_n_0_[1] ),
        .I2(\cycles_reg_n_0_[0] ),
        .O(cycles[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cycles[3]_i_1 
       (.I0(\cycles_reg_n_0_[3] ),
        .I1(\cycles_reg_n_0_[2] ),
        .I2(\cycles_reg_n_0_[1] ),
        .I3(\cycles_reg_n_0_[0] ),
        .O(\cycles[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cycles[4]_i_1 
       (.I0(\cycles_reg_n_0_[4] ),
        .I1(\cycles_reg_n_0_[0] ),
        .I2(\cycles_reg_n_0_[1] ),
        .I3(\cycles_reg_n_0_[2] ),
        .I4(\cycles_reg_n_0_[3] ),
        .O(cycles[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cycles[5]_i_1 
       (.I0(\cycles_reg_n_0_[5] ),
        .I1(\cycles_reg_n_0_[3] ),
        .I2(\cycles_reg_n_0_[2] ),
        .I3(\cycles_reg_n_0_[1] ),
        .I4(\cycles_reg_n_0_[0] ),
        .I5(\cycles_reg_n_0_[4] ),
        .O(cycles[5]));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \cycles[6]_i_2 
       (.I0(\cycles_reg_n_0_[6] ),
        .I1(\cycles_reg_n_0_[4] ),
        .I2(\cycles[6]_i_4_n_0 ),
        .I3(\cycles_reg_n_0_[3] ),
        .I4(\cycles_reg_n_0_[5] ),
        .O(cycles[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cycles[6]_i_4 
       (.I0(\cycles_reg_n_0_[0] ),
        .I1(\cycles_reg_n_0_[1] ),
        .I2(\cycles_reg_n_0_[2] ),
        .O(\cycles[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \cycles[7]_i_2 
       (.I0(\cycles_reg_n_0_[7] ),
        .I1(\cycles_reg_n_0_[5] ),
        .I2(\cycles_reg_n_0_[3] ),
        .I3(\cycles[6]_i_4_n_0 ),
        .I4(\cycles_reg_n_0_[4] ),
        .I5(\cycles_reg_n_0_[6] ),
        .O(\cycles[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \cycles[7]_i_4 
       (.I0(\cycles_reg_n_0_[1] ),
        .I1(\cycles_reg_n_0_[3] ),
        .I2(\cycles_reg_n_0_[5] ),
        .I3(\cycles_reg_n_0_[2] ),
        .O(\cycles_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cycles[7]_i_5 
       (.I0(\cycles_reg_n_0_[7] ),
        .I1(\cycles_reg_n_0_[4] ),
        .I2(\cycles_reg_n_0_[6] ),
        .I3(\cycles_reg_n_0_[0] ),
        .O(\cycles_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\cycles[0]_i_1_n_0 ),
        .Q(\cycles_reg_n_0_[0] ),
        .R(\cycles_reg[7]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\cycles[1]_i_1_n_0 ),
        .Q(\cycles_reg_n_0_[1] ),
        .R(\cycles_reg[7]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(cycles[2]),
        .Q(\cycles_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\cycles[3]_i_1_n_0 ),
        .Q(\cycles_reg_n_0_[3] ),
        .R(\cycles_reg[7]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(cycles[4]),
        .Q(\cycles_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(cycles[5]),
        .Q(\cycles_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(cycles[6]),
        .Q(\cycles_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\cycles[7]_i_2_n_0 ),
        .Q(\cycles_reg_n_0_[7] ),
        .R(\cycles_reg[7]_1 ));
endmodule

module synchronizer
   (synchronized_signals,
    BUTTONS_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [3:0]synchronized_signals;
  input [3:0]BUTTONS_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire \genblk1[0].q_reg_n_0_[0] ;
  wire \genblk1[1].q_reg ;
  wire \genblk1[2].q_reg ;
  wire \genblk1[3].q_reg ;
  wire [3:0]synchronized_signals;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \genblk1[0].q_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF[0]),
        .Q(\genblk1[0].q_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \genblk1[0].sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[0].q_reg_n_0_[0] ),
        .Q(synchronized_signals[0]),
        .R(\<const0> ));
  FDRE \genblk1[1].q_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF[1]),
        .Q(\genblk1[1].q_reg ),
        .R(\<const0> ));
  FDRE \genblk1[1].sync_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[1].q_reg ),
        .Q(synchronized_signals[1]),
        .R(\<const0> ));
  FDRE \genblk1[2].q_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF[2]),
        .Q(\genblk1[2].q_reg ),
        .R(\<const0> ));
  FDRE \genblk1[2].sync_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[2].q_reg ),
        .Q(synchronized_signals[2]),
        .R(\<const0> ));
  FDRE \genblk1[3].q_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF[3]),
        .Q(\genblk1[3].q_reg ),
        .R(\<const0> ));
  FDRE \genblk1[3].sync_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[3].q_reg ),
        .Q(synchronized_signals[3]),
        .R(\<const0> ));
endmodule

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS,
    AUD_PWM,
    AUD_SD);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;
  output AUD_PWM;
  output AUD_SD;

  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_PWM_OBUF;
  wire AUD_SD;
  wire AUD_SD_OBUF;
  wire [3:0]BUTTONS;
  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [5:0]LEDS;
  wire [3:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire bp_n_0;
  wire bp_n_5;
  wire bp_n_6;
  wire [3:0]buttons_pressed;
  wire code__0;
  wire count_n_0;
  wire dac_n_2;
  wire dac_n_3;
  wire gen_n_1;
  wire gen_n_2;
  wire next_sample;

  OBUF AUD_PWM_OBUF_inst
       (.I(AUD_PWM_OBUF),
        .O(AUD_PWM));
  OBUF AUD_SD_OBUF_inst
       (.I(AUD_SD_OBUF),
        .O(AUD_SD));
  IBUF \BUTTONS_IBUF[0]_inst 
       (.I(BUTTONS[0]),
        .O(BUTTONS_IBUF[0]));
  IBUF \BUTTONS_IBUF[1]_inst 
       (.I(BUTTONS[1]),
        .O(BUTTONS_IBUF[1]));
  IBUF \BUTTONS_IBUF[2]_inst 
       (.I(BUTTONS[2]),
        .O(BUTTONS_IBUF[2]));
  IBUF \BUTTONS_IBUF[3]_inst 
       (.I(BUTTONS[3]),
        .O(BUTTONS_IBUF[3]));
  BUFG CLK_125MHZ_FPGA_IBUF_BUFG_inst
       (.I(CLK_125MHZ_FPGA_IBUF),
        .O(CLK_125MHZ_FPGA_IBUF_BUFG));
  IBUF CLK_125MHZ_FPGA_IBUF_inst
       (.I(CLK_125MHZ_FPGA),
        .O(CLK_125MHZ_FPGA_IBUF));
  OBUF \LEDS_OBUF[0]_inst 
       (.I(LEDS_OBUF[0]),
        .O(LEDS[0]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(LEDS_OBUF[1]),
        .O(LEDS[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(LEDS_OBUF[2]),
        .O(LEDS[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(LEDS_OBUF[3]),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(\<const1> ),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(\<const1> ),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(AUD_SD_OBUF));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(buttons_pressed),
        .SR(bp_n_0),
        .count_reg(count_n_0),
        .\edge_detect_pulse_reg[1] (bp_n_6),
        .\edge_detect_pulse_reg[3] (bp_n_5));
  counter count
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(LEDS_OBUF),
        .SR(bp_n_0),
        .count_reg_0(count_n_0),
        .count_reg_1(bp_n_6),
        .\cycles_reg[0]_0 (buttons_pressed),
        .\cycles_reg[26]_0 (bp_n_5));
  dac dac
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(AUD_PWM_OBUF),
        .FSM_sequential_code_reg(dac_n_2),
        .code__0(code__0),
        .\cycles_reg[7] (gen_n_1),
        .\cycles_reg[7]_0 (gen_n_2),
        .\i_reg[8]_0 (dac_n_3),
        .next_sample(next_sample));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .FSM_sequential_code_reg_0(dac_n_2),
        .code__0(code__0),
        .\cycles_reg[1]_0 (gen_n_1),
        .\cycles_reg[7]_0 (gen_n_2),
        .\cycles_reg[7]_1 (dac_n_3),
        .next_sample(next_sample));
endmodule
