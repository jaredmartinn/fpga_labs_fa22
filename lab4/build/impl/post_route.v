// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct  4 12:07:13 2022
// Host        : c111-7.eecs.berkeley.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force post_route.v
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
    \FSM_onehot_light_reg[1] ,
    \edge_detect_pulse_reg[3] ,
    \edge_detect_pulse_reg[3]_0 ,
    D,
    \edge_detect_pulse_reg[1] ,
    S,
    E,
    \edge_detect_pulse_reg[3]_1 ,
    BUTTONS_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    switches_sync,
    sq_wave_leds,
    \cycles_reg[0] ,
    CO,
    \FSM_sequential_curr_state_reg[0] ,
    DI);
  output [0:0]SR;
  output [2:0]Q;
  output \FSM_onehot_light_reg[1] ;
  output [0:0]\edge_detect_pulse_reg[3] ;
  output \edge_detect_pulse_reg[3]_0 ;
  output [0:0]D;
  output \edge_detect_pulse_reg[1] ;
  output [0:0]S;
  output [0:0]E;
  output \edge_detect_pulse_reg[3]_1 ;
  input [3:0]BUTTONS_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]switches_sync;
  input [0:0]sq_wave_leds;
  input \cycles_reg[0] ;
  input [0:0]CO;
  input [1:0]\FSM_sequential_curr_state_reg[0] ;
  input [0:0]DI;

  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_light_reg[1] ;
  wire [1:0]\FSM_sequential_curr_state_reg[0] ;
  wire [2:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire button_edge_detector_n_12;
  wire button_edge_detector_n_15;
  wire \cycles_reg[0] ;
  wire [3:0]debounced_signals;
  wire \edge_detect_pulse_reg[1] ;
  wire [0:0]\edge_detect_pulse_reg[3] ;
  wire \edge_detect_pulse_reg[3]_0 ;
  wire \edge_detect_pulse_reg[3]_1 ;
  wire p_1_in;
  wire p_2_in;
  wire [3:0]p_6_out;
  wire [0:0]sq_wave_leds;
  wire [0:0]switches_sync;
  wire [3:0]synchronized_signals;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q({button_edge_detector_n_12,p_2_in,p_1_in,button_edge_detector_n_15}),
        .\sat_cnt_reg[3][8]_0 (p_6_out),
        .synchronized_signals(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(CO),
        .D(D),
        .DI(DI),
        .E(E),
        .\FSM_onehot_light_reg[1] (\FSM_onehot_light_reg[1] ),
        .\FSM_sequential_curr_state_reg[0] (\FSM_sequential_curr_state_reg[0] ),
        .Q(Q),
        .S(S),
        .SR(SR),
        .\cycles_reg[0] (\cycles_reg[0] ),
        .\edge_detect_pulse_reg[1]_0 (\edge_detect_pulse_reg[1] ),
        .\edge_detect_pulse_reg[3]_0 (\edge_detect_pulse_reg[3] ),
        .\edge_detect_pulse_reg[3]_1 (\edge_detect_pulse_reg[3]_0 ),
        .\edge_detect_pulse_reg[3]_2 (\edge_detect_pulse_reg[3]_1 ),
        .\edge_detect_pulse_reg[3]_3 (p_6_out),
        .\q_reg[3]_0 ({button_edge_detector_n_12,p_2_in,p_1_in,button_edge_detector_n_15}),
        .\q_reg[3]_1 (debounced_signals),
        .sq_wave_leds(sq_wave_leds),
        .switches_sync(switches_sync));
  synchronizer button_synchronizer
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .synchronized_signals(synchronized_signals));
endmodule

module dac
   (CO,
    next_sample,
    Q,
    \i_reg[5]_0 ,
    \edge_detect_pulse_reg[3] ,
    ADDRARDADDR,
    DI,
    pwm0_carry_0,
    switches_sync,
    DOADO,
    pwm0_carry__0_0,
    pwm0_carry__0_1,
    \i_reg[0]_0 ,
    sel__0,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]CO;
  output next_sample;
  output [1:0]Q;
  output \i_reg[5]_0 ;
  output \edge_detect_pulse_reg[3] ;
  output [7:0]ADDRARDADDR;
  input [0:0]DI;
  input pwm0_carry_0;
  input [0:0]switches_sync;
  input [8:0]DOADO;
  input pwm0_carry__0_0;
  input pwm0_carry__0_1;
  input [0:0]\i_reg[0]_0 ;
  input [7:0]sel__0;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRARDADDR;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [8:0]DOADO;
  wire [1:0]Q;
  wire \edge_detect_pulse_reg[3] ;
  wire \i[0]_i_1_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[7]_i_1_n_0 ;
  wire \i[9]_i_2_n_0 ;
  wire [7:0]i_reg;
  wire [0:0]\i_reg[0]_0 ;
  wire \i_reg[5]_0 ;
  wire next_sample;
  wire [9:1]p_0_in__3;
  wire pwm0_carry_0;
  wire pwm0_carry__0_0;
  wire pwm0_carry__0_1;
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
  wire [7:0]sel__0;
  wire [0:0]switches_sync;
  wire [3:0]NLW_pwm0_carry_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \code[4]_i_2 
       (.I0(i_reg[5]),
        .I1(\i[9]_i_2_n_0 ),
        .I2(i_reg[6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(i_reg[7]),
        .O(\i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \cycles[7]_i_2 
       (.I0(i_reg[7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(i_reg[6]),
        .I4(\i[9]_i_2_n_0 ),
        .I5(i_reg[5]),
        .O(next_sample));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i_reg[0]),
        .O(\i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_1__0 
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .O(\edge_detect_pulse_reg[3] ));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[1]_i_1 
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(p_0_in__3[1]));
  (* \PinAttr:I2:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i[2]_i_1 
       (.I0(i_reg[2]),
        .I1(i_reg[1]),
        .I2(i_reg[0]),
        .O(p_0_in__3[2]));
  (* \PinAttr:I3:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i[3]_i_1 
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .O(\i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i[4]_i_1 
       (.I0(i_reg[4]),
        .I1(i_reg[2]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(i_reg[3]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i[5]_i_1 
       (.I0(i_reg[5]),
        .I1(i_reg[4]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(i_reg[0]),
        .I5(i_reg[3]),
        .O(\i[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \i[6]_i_1 
       (.I0(i_reg[6]),
        .I1(\i[9]_i_2_n_0 ),
        .I2(i_reg[5]),
        .O(p_0_in__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \i[7]_i_1 
       (.I0(i_reg[7]),
        .I1(i_reg[5]),
        .I2(\i[9]_i_2_n_0 ),
        .I3(i_reg[6]),
        .O(\i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \i[8]_i_1 
       (.I0(Q[0]),
        .I1(i_reg[6]),
        .I2(\i[9]_i_2_n_0 ),
        .I3(i_reg[5]),
        .I4(i_reg[7]),
        .O(p_0_in__3[8]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \i[9]_i_1 
       (.I0(Q[1]),
        .I1(i_reg[7]),
        .I2(i_reg[5]),
        .I3(\i[9]_i_2_n_0 ),
        .I4(i_reg[6]),
        .I5(Q[0]),
        .O(p_0_in__3[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i[9]_i_2 
       (.I0(i_reg[3]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .I3(i_reg[2]),
        .I4(i_reg[4]),
        .O(\i[9]_i_2_n_0 ));
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
        .D(p_0_in__3[1]),
        .Q(i_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__3[2]),
        .Q(i_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\i[3]_i_1_n_0 ),
        .Q(i_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__3[4]),
        .Q(i_reg[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\i[5]_i_1_n_0 ),
        .Q(i_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__3[6]),
        .Q(i_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\i[7]_i_1_n_0 ),
        .Q(i_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__3[8]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__3[9]),
        .Q(Q[1]),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pwm0_carry
       (.CI(\<const0> ),
        .CO({pwm0_carry_n_0,NLW_pwm0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({pwm0_carry_i_1_n_0,pwm0_carry_i_2_n_0,pwm0_carry_i_3_n_0,pwm0_carry_i_4_n_0}),
        .S({pwm0_carry_i_5_n_0,pwm0_carry_i_6_n_0,pwm0_carry_i_7_n_0,pwm0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry__0
       (.CI(pwm0_carry_n_0),
        .CO(CO),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,\<const0> ,pwm0_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h9090900909099009)) 
    pwm0_carry__0_i_2
       (.I0(Q[0]),
        .I1(pwm0_carry__0_1),
        .I2(Q[1]),
        .I3(pwm0_carry__0_0),
        .I4(switches_sync),
        .I5(DOADO[8]),
        .O(pwm0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h00E2EEEE002222E2)) 
    pwm0_carry_i_1
       (.I0(pwm0_carry_0),
        .I1(switches_sync),
        .I2(DOADO[6]),
        .I3(i_reg[6]),
        .I4(i_reg[7]),
        .I5(DOADO[7]),
        .O(pwm0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E2EEEE002222E2)) 
    pwm0_carry_i_2
       (.I0(pwm0_carry__0_0),
        .I1(switches_sync),
        .I2(DOADO[4]),
        .I3(i_reg[4]),
        .I4(i_reg[5]),
        .I5(DOADO[5]),
        .O(pwm0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00E2EEEE002222E2)) 
    pwm0_carry_i_3
       (.I0(pwm0_carry_0),
        .I1(switches_sync),
        .I2(DOADO[2]),
        .I3(i_reg[2]),
        .I4(i_reg[3]),
        .I5(DOADO[3]),
        .O(pwm0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h5151D551)) 
    pwm0_carry_i_4
       (.I0(i_reg[1]),
        .I1(switches_sync),
        .I2(DOADO[1]),
        .I3(DOADO[0]),
        .I4(i_reg[0]),
        .O(pwm0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA85801010808A151)) 
    pwm0_carry_i_5
       (.I0(i_reg[6]),
        .I1(pwm0_carry_0),
        .I2(switches_sync),
        .I3(DOADO[6]),
        .I4(i_reg[7]),
        .I5(DOADO[7]),
        .O(pwm0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hA85801010808A151)) 
    pwm0_carry_i_6
       (.I0(i_reg[4]),
        .I1(pwm0_carry__0_0),
        .I2(switches_sync),
        .I3(DOADO[4]),
        .I4(i_reg[5]),
        .I5(DOADO[5]),
        .O(pwm0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hA85801010808A151)) 
    pwm0_carry_i_7
       (.I0(i_reg[2]),
        .I1(pwm0_carry_0),
        .I2(switches_sync),
        .I3(DOADO[2]),
        .I4(i_reg[3]),
        .I5(DOADO[3]),
        .O(pwm0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h90330900)) 
    pwm0_carry_i_8
       (.I0(DOADO[0]),
        .I1(i_reg[0]),
        .I2(DOADO[1]),
        .I3(switches_sync),
        .I4(i_reg[1]),
        .O(pwm0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    sel_i_2
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(sel__0[7]),
        .O(ADDRARDADDR[7]));
  LUT3 #(
    .INIT(8'h70)) 
    sel_i_3
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(sel__0[6]),
        .O(ADDRARDADDR[6]));
  LUT3 #(
    .INIT(8'h70)) 
    sel_i_4
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(sel__0[5]),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'h70)) 
    sel_i_5
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(sel__0[4]),
        .O(ADDRARDADDR[4]));
  LUT3 #(
    .INIT(8'h70)) 
    sel_i_6
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(sel__0[3]),
        .O(ADDRARDADDR[3]));
  LUT3 #(
    .INIT(8'h70)) 
    sel_i_7
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(sel__0[2]),
        .O(ADDRARDADDR[2]));
  LUT3 #(
    .INIT(8'h70)) 
    sel_i_8
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(sel__0[1]),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'h70)) 
    sel_i_9
       (.I0(\i_reg[5]_0 ),
        .I1(\i_reg[0]_0 ),
        .I2(sel__0[0]),
        .O(ADDRARDADDR[0]));
endmodule

module debouncer
   (D,
    \sat_cnt_reg[3][8]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    synchronized_signals,
    Q);
  output [3:0]D;
  output [3:0]\sat_cnt_reg[3][8]_0 ;
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
  wire \cycles_reg[0]_i_1_n_4 ;
  wire \cycles_reg[0]_i_1_n_5 ;
  wire \cycles_reg[0]_i_1_n_6 ;
  wire \cycles_reg[0]_i_1_n_7 ;
  wire \cycles_reg[12]_i_1_n_4 ;
  wire \cycles_reg[12]_i_1_n_5 ;
  wire \cycles_reg[12]_i_1_n_6 ;
  wire \cycles_reg[12]_i_1_n_7 ;
  wire \cycles_reg[4]_i_1_n_0 ;
  wire \cycles_reg[4]_i_1_n_4 ;
  wire \cycles_reg[4]_i_1_n_5 ;
  wire \cycles_reg[4]_i_1_n_6 ;
  wire \cycles_reg[4]_i_1_n_7 ;
  wire \cycles_reg[8]_i_1_n_0 ;
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
  wire \sat_cnt[0][8]_i_1_n_0 ;
  wire \sat_cnt[0][8]_i_2_n_0 ;
  wire \sat_cnt[0][8]_i_4_n_0 ;
  wire \sat_cnt[0][8]_i_5_n_0 ;
  wire \sat_cnt[0][8]_i_6_n_0 ;
  wire \sat_cnt[0][8]_i_7_n_0 ;
  wire \sat_cnt[0][8]_i_8_n_0 ;
  wire \sat_cnt[1][4]_i_1_n_0 ;
  wire \sat_cnt[1][8]_i_1_n_0 ;
  wire \sat_cnt[1][8]_i_2_n_0 ;
  wire \sat_cnt[1][8]_i_4_n_0 ;
  wire \sat_cnt[2][8]_i_1_n_0 ;
  wire \sat_cnt[2][8]_i_2_n_0 ;
  wire \sat_cnt[2][8]_i_4_n_0 ;
  wire \sat_cnt[3][8]_i_1_n_0 ;
  wire \sat_cnt[3][8]_i_4_n_0 ;
  wire [8:0]\sat_cnt_reg[0]_0 ;
  wire [8:0]\sat_cnt_reg[1]_1 ;
  wire [8:0]\sat_cnt_reg[2]_2 ;
  wire [3:0]\sat_cnt_reg[3][8]_0 ;
  wire [8:0]\sat_cnt_reg[3]_3 ;
  wire [3:0]synchronized_signals;
  wire [3:0]\NLW_cycles_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles_reg[8]_i_1_CO_UNCONNECTED ;

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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\cycles_reg[0]_i_1_n_0 ,\NLW_cycles_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_reg[12]_i_1 
       (.CI(\cycles_reg[8]_i_1_n_0 ),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_reg[4]_i_1 
       (.CI(\cycles_reg[0]_i_1_n_0 ),
        .CO({\cycles_reg[4]_i_1_n_0 ,\NLW_cycles_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles_reg[8]_i_1 
       (.CI(\cycles_reg[4]_i_1_n_0 ),
        .CO({\cycles_reg[8]_i_1_n_0 ,\NLW_cycles_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
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
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \edge_detect_pulse[0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [3]),
        .I3(\sat_cnt_reg[0]_0 [4]),
        .I4(\q[0]_i_2_n_0 ),
        .I5(Q[0]),
        .O(\sat_cnt_reg[3][8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \edge_detect_pulse[1]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [2]),
        .I1(\sat_cnt_reg[1]_1 [3]),
        .I2(\sat_cnt_reg[1]_1 [4]),
        .I3(\q[1]_i_2_n_0 ),
        .I4(Q[1]),
        .O(\sat_cnt_reg[3][8]_0 [1]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \edge_detect_pulse[2]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [0]),
        .I1(\sat_cnt_reg[2]_2 [1]),
        .I2(\sat_cnt_reg[2]_2 [3]),
        .I3(\sat_cnt_reg[2]_2 [4]),
        .I4(\q[2]_i_2_n_0 ),
        .I5(Q[2]),
        .O(\sat_cnt_reg[3][8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \edge_detect_pulse[3]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [8]),
        .I1(\sat_cnt_reg[3]_3 [5]),
        .I2(\sat_cnt_reg[3]_3 [3]),
        .I3(\q[3]_i_2_n_0 ),
        .I4(Q[3]),
        .O(\sat_cnt_reg[3][8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \q[0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [3]),
        .I3(\sat_cnt_reg[0]_0 [4]),
        .I4(\q[0]_i_2_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \q[0]_i_2 
       (.I0(\sat_cnt_reg[0]_0 [6]),
        .I1(\sat_cnt_reg[0]_0 [7]),
        .I2(\sat_cnt_reg[0]_0 [8]),
        .I3(\sat_cnt_reg[0]_0 [5]),
        .I4(\sat_cnt_reg[0]_0 [2]),
        .O(\q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \q[1]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [2]),
        .I1(\sat_cnt_reg[1]_1 [3]),
        .I2(\sat_cnt_reg[1]_1 [4]),
        .I3(\q[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \q[1]_i_2 
       (.I0(\sat_cnt_reg[1]_1 [1]),
        .I1(\sat_cnt_reg[1]_1 [0]),
        .I2(\sat_cnt_reg[1]_1 [8]),
        .I3(\sat_cnt_reg[1]_1 [5]),
        .I4(\sat_cnt_reg[1]_1 [6]),
        .I5(\sat_cnt_reg[1]_1 [7]),
        .O(\q[1]_i_2_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \q[2]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [0]),
        .I1(\sat_cnt_reg[2]_2 [1]),
        .I2(\sat_cnt_reg[2]_2 [3]),
        .I3(\sat_cnt_reg[2]_2 [4]),
        .I4(\q[2]_i_2_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \q[2]_i_2 
       (.I0(\sat_cnt_reg[2]_2 [6]),
        .I1(\sat_cnt_reg[2]_2 [7]),
        .I2(\sat_cnt_reg[2]_2 [8]),
        .I3(\sat_cnt_reg[2]_2 [5]),
        .I4(\sat_cnt_reg[2]_2 [2]),
        .O(\q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \q[3]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [8]),
        .I1(\sat_cnt_reg[3]_3 [5]),
        .I2(\sat_cnt_reg[3]_3 [3]),
        .I3(\q[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \q[3]_i_2 
       (.I0(\sat_cnt_reg[3]_3 [1]),
        .I1(\sat_cnt_reg[3]_3 [0]),
        .I2(\sat_cnt_reg[3]_3 [2]),
        .I3(\sat_cnt_reg[3]_3 [4]),
        .I4(\sat_cnt_reg[3]_3 [6]),
        .I5(\sat_cnt_reg[3]_3 [7]),
        .O(\q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[0][0]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[0][1]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[0][2]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [2]),
        .I1(\sat_cnt_reg[0]_0 [0]),
        .I2(\sat_cnt_reg[0]_0 [1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[0][3]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [3]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [0]),
        .I3(\sat_cnt_reg[0]_0 [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sat_cnt[0][4]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [2]),
        .I1(\sat_cnt_reg[0]_0 [0]),
        .I2(\sat_cnt_reg[0]_0 [1]),
        .I3(\sat_cnt_reg[0]_0 [3]),
        .I4(\sat_cnt_reg[0]_0 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[0][5]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [5]),
        .I1(\sat_cnt_reg[0]_0 [2]),
        .I2(\sat_cnt_reg[0]_0 [0]),
        .I3(\sat_cnt_reg[0]_0 [1]),
        .I4(\sat_cnt_reg[0]_0 [3]),
        .I5(\sat_cnt_reg[0]_0 [4]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[0][6]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [6]),
        .I1(\sat_cnt[0][8]_i_5_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[0][7]_i_1 
       (.I0(\sat_cnt_reg[0]_0 [7]),
        .I1(\sat_cnt[0][8]_i_5_n_0 ),
        .I2(\sat_cnt_reg[0]_0 [6]),
        .O(p_0_in[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \sat_cnt[0][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(synchronized_signals[0]),
        .O(\sat_cnt[0][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \sat_cnt[0][8]_i_2 
       (.I0(\sat_cnt_reg[0]_0 [0]),
        .I1(\sat_cnt_reg[0]_0 [1]),
        .I2(\sat_cnt_reg[0]_0 [3]),
        .I3(\sat_cnt_reg[0]_0 [4]),
        .I4(\q[0]_i_2_n_0 ),
        .I5(\sat_cnt[0][8]_i_4_n_0 ),
        .O(\sat_cnt[0][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[0][8]_i_3 
       (.I0(\sat_cnt_reg[0]_0 [8]),
        .I1(\sat_cnt_reg[0]_0 [6]),
        .I2(\sat_cnt_reg[0]_0 [7]),
        .I3(\sat_cnt[0][8]_i_5_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \sat_cnt[0][8]_i_4 
       (.I0(\sat_cnt[0][8]_i_6_n_0 ),
        .I1(cycles_reg[5]),
        .I2(cycles_reg[10]),
        .I3(cycles_reg[12]),
        .I4(cycles_reg[3]),
        .I5(\sat_cnt[0][8]_i_7_n_0 ),
        .O(\sat_cnt[0][8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sat_cnt[0][8]_i_5 
       (.I0(\sat_cnt_reg[0]_0 [5]),
        .I1(\sat_cnt_reg[0]_0 [2]),
        .I2(\sat_cnt_reg[0]_0 [0]),
        .I3(\sat_cnt_reg[0]_0 [1]),
        .I4(\sat_cnt_reg[0]_0 [3]),
        .I5(\sat_cnt_reg[0]_0 [4]),
        .O(\sat_cnt[0][8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \sat_cnt[0][8]_i_6 
       (.I0(cycles_reg[0]),
        .I1(cycles_reg[7]),
        .I2(cycles_reg[15]),
        .I3(cycles_reg[1]),
        .O(\sat_cnt[0][8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sat_cnt[0][8]_i_7 
       (.I0(cycles_reg[9]),
        .I1(cycles_reg[6]),
        .I2(cycles_reg[8]),
        .I3(cycles_reg[4]),
        .I4(\sat_cnt[0][8]_i_8_n_0 ),
        .O(\sat_cnt[0][8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \sat_cnt[0][8]_i_8 
       (.I0(cycles_reg[13]),
        .I1(cycles_reg[11]),
        .I2(cycles_reg[2]),
        .I3(cycles_reg[14]),
        .O(\sat_cnt[0][8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[1][0]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[1][1]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [0]),
        .I1(\sat_cnt_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[1][2]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [2]),
        .I1(\sat_cnt_reg[1]_1 [0]),
        .I2(\sat_cnt_reg[1]_1 [1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[1][3]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [3]),
        .I1(\sat_cnt_reg[1]_1 [1]),
        .I2(\sat_cnt_reg[1]_1 [0]),
        .I3(\sat_cnt_reg[1]_1 [2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sat_cnt[1][4]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [4]),
        .I1(\sat_cnt_reg[1]_1 [3]),
        .I2(\sat_cnt_reg[1]_1 [1]),
        .I3(\sat_cnt_reg[1]_1 [0]),
        .I4(\sat_cnt_reg[1]_1 [2]),
        .O(\sat_cnt[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[1][5]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [5]),
        .I1(\sat_cnt_reg[1]_1 [2]),
        .I2(\sat_cnt_reg[1]_1 [0]),
        .I3(\sat_cnt_reg[1]_1 [1]),
        .I4(\sat_cnt_reg[1]_1 [3]),
        .I5(\sat_cnt_reg[1]_1 [4]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[1][6]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [6]),
        .I1(\sat_cnt[1][8]_i_4_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[1][7]_i_1 
       (.I0(\sat_cnt_reg[1]_1 [7]),
        .I1(\sat_cnt[1][8]_i_4_n_0 ),
        .I2(\sat_cnt_reg[1]_1 [6]),
        .O(p_0_in__0[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \sat_cnt[1][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(synchronized_signals[1]),
        .O(\sat_cnt[1][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \sat_cnt[1][8]_i_2 
       (.I0(\sat_cnt_reg[1]_1 [2]),
        .I1(\sat_cnt_reg[1]_1 [3]),
        .I2(\sat_cnt_reg[1]_1 [4]),
        .I3(\q[1]_i_2_n_0 ),
        .I4(\sat_cnt[0][8]_i_4_n_0 ),
        .O(\sat_cnt[1][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[1][8]_i_3 
       (.I0(\sat_cnt_reg[1]_1 [8]),
        .I1(\sat_cnt_reg[1]_1 [6]),
        .I2(\sat_cnt_reg[1]_1 [7]),
        .I3(\sat_cnt[1][8]_i_4_n_0 ),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sat_cnt[1][8]_i_4 
       (.I0(\sat_cnt_reg[1]_1 [5]),
        .I1(\sat_cnt_reg[1]_1 [2]),
        .I2(\sat_cnt_reg[1]_1 [0]),
        .I3(\sat_cnt_reg[1]_1 [1]),
        .I4(\sat_cnt_reg[1]_1 [3]),
        .I5(\sat_cnt_reg[1]_1 [4]),
        .O(\sat_cnt[1][8]_i_4_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[2][0]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [0]),
        .O(p_0_in__1[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[2][1]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [0]),
        .I1(\sat_cnt_reg[2]_2 [1]),
        .O(p_0_in__1[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[2][2]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [2]),
        .I1(\sat_cnt_reg[2]_2 [0]),
        .I2(\sat_cnt_reg[2]_2 [1]),
        .O(p_0_in__1[2]));
  (* \PinAttr:I3:HOLD_DETOUR  = "160" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[2][3]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [3]),
        .I1(\sat_cnt_reg[2]_2 [1]),
        .I2(\sat_cnt_reg[2]_2 [0]),
        .I3(\sat_cnt_reg[2]_2 [2]),
        .O(p_0_in__1[3]));
  (* \PinAttr:I0:HOLD_DETOUR  = "160" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sat_cnt[2][4]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [2]),
        .I1(\sat_cnt_reg[2]_2 [0]),
        .I2(\sat_cnt_reg[2]_2 [1]),
        .I3(\sat_cnt_reg[2]_2 [3]),
        .I4(\sat_cnt_reg[2]_2 [4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[2][5]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [5]),
        .I1(\sat_cnt_reg[2]_2 [2]),
        .I2(\sat_cnt_reg[2]_2 [0]),
        .I3(\sat_cnt_reg[2]_2 [1]),
        .I4(\sat_cnt_reg[2]_2 [3]),
        .I5(\sat_cnt_reg[2]_2 [4]),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[2][6]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [6]),
        .I1(\sat_cnt[2][8]_i_4_n_0 ),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[2][7]_i_1 
       (.I0(\sat_cnt_reg[2]_2 [7]),
        .I1(\sat_cnt[2][8]_i_4_n_0 ),
        .I2(\sat_cnt_reg[2]_2 [6]),
        .O(p_0_in__1[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \sat_cnt[2][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(synchronized_signals[2]),
        .O(\sat_cnt[2][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \sat_cnt[2][8]_i_2 
       (.I0(\sat_cnt_reg[2]_2 [0]),
        .I1(\sat_cnt_reg[2]_2 [1]),
        .I2(\sat_cnt_reg[2]_2 [3]),
        .I3(\sat_cnt_reg[2]_2 [4]),
        .I4(\q[2]_i_2_n_0 ),
        .I5(\sat_cnt[0][8]_i_4_n_0 ),
        .O(\sat_cnt[2][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[2][8]_i_3 
       (.I0(\sat_cnt_reg[2]_2 [8]),
        .I1(\sat_cnt_reg[2]_2 [6]),
        .I2(\sat_cnt_reg[2]_2 [7]),
        .I3(\sat_cnt[2][8]_i_4_n_0 ),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sat_cnt[2][8]_i_4 
       (.I0(\sat_cnt_reg[2]_2 [5]),
        .I1(\sat_cnt_reg[2]_2 [2]),
        .I2(\sat_cnt_reg[2]_2 [0]),
        .I3(\sat_cnt_reg[2]_2 [1]),
        .I4(\sat_cnt_reg[2]_2 [3]),
        .I5(\sat_cnt_reg[2]_2 [4]),
        .O(\sat_cnt[2][8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sat_cnt[3][0]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [0]),
        .O(p_0_in__2[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[3][1]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [0]),
        .I1(\sat_cnt_reg[3]_3 [1]),
        .O(p_0_in__2[1]));
  (* \PinAttr:I2:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[3][2]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [2]),
        .I1(\sat_cnt_reg[3]_3 [0]),
        .I2(\sat_cnt_reg[3]_3 [1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[3][3]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [3]),
        .I1(\sat_cnt_reg[3]_3 [1]),
        .I2(\sat_cnt_reg[3]_3 [0]),
        .I3(\sat_cnt_reg[3]_3 [2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sat_cnt[3][4]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [2]),
        .I1(\sat_cnt_reg[3]_3 [0]),
        .I2(\sat_cnt_reg[3]_3 [1]),
        .I3(\sat_cnt_reg[3]_3 [3]),
        .I4(\sat_cnt_reg[3]_3 [4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \sat_cnt[3][5]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [5]),
        .I1(\sat_cnt_reg[3]_3 [2]),
        .I2(\sat_cnt_reg[3]_3 [0]),
        .I3(\sat_cnt_reg[3]_3 [1]),
        .I4(\sat_cnt_reg[3]_3 [3]),
        .I5(\sat_cnt_reg[3]_3 [4]),
        .O(p_0_in__2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \sat_cnt[3][6]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [6]),
        .I1(\sat_cnt[3][8]_i_4_n_0 ),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sat_cnt[3][7]_i_1 
       (.I0(\sat_cnt_reg[3]_3 [7]),
        .I1(\sat_cnt[3][8]_i_4_n_0 ),
        .I2(\sat_cnt_reg[3]_3 [6]),
        .O(p_0_in__2[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \sat_cnt[3][8]_i_1 
       (.I0(\sat_cnt[0][8]_i_4_n_0 ),
        .I1(synchronized_signals[3]),
        .O(\sat_cnt[3][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0000)) 
    \sat_cnt[3][8]_i_2 
       (.I0(\sat_cnt_reg[3]_3 [8]),
        .I1(\sat_cnt_reg[3]_3 [5]),
        .I2(\sat_cnt_reg[3]_3 [3]),
        .I3(\q[3]_i_2_n_0 ),
        .I4(\sat_cnt[0][8]_i_4_n_0 ),
        .O(sat_cnt));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sat_cnt[3][8]_i_3 
       (.I0(\sat_cnt_reg[3]_3 [8]),
        .I1(\sat_cnt_reg[3]_3 [6]),
        .I2(\sat_cnt_reg[3]_3 [7]),
        .I3(\sat_cnt[3][8]_i_4_n_0 ),
        .O(p_0_in__2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sat_cnt[3][8]_i_4 
       (.I0(\sat_cnt_reg[3]_3 [5]),
        .I1(\sat_cnt_reg[3]_3 [2]),
        .I2(\sat_cnt_reg[3]_3 [0]),
        .I3(\sat_cnt_reg[3]_3 [1]),
        .I4(\sat_cnt_reg[3]_3 [3]),
        .I5(\sat_cnt_reg[3]_3 [4]),
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
        .D(p_0_in__0[2]),
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
        .D(\sat_cnt[1][4]_i_1_n_0 ),
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
        .D(p_0_in__1[2]),
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
        .D(p_0_in__2[2]),
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
    \FSM_onehot_light_reg[1] ,
    \edge_detect_pulse_reg[3]_0 ,
    \edge_detect_pulse_reg[3]_1 ,
    D,
    \edge_detect_pulse_reg[1]_0 ,
    S,
    E,
    \edge_detect_pulse_reg[3]_2 ,
    \q_reg[3]_0 ,
    switches_sync,
    sq_wave_leds,
    \cycles_reg[0] ,
    CO,
    \FSM_sequential_curr_state_reg[0] ,
    DI,
    \q_reg[3]_1 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \edge_detect_pulse_reg[3]_3 );
  output [0:0]SR;
  output [2:0]Q;
  output \FSM_onehot_light_reg[1] ;
  output [0:0]\edge_detect_pulse_reg[3]_0 ;
  output \edge_detect_pulse_reg[3]_1 ;
  output [0:0]D;
  output \edge_detect_pulse_reg[1]_0 ;
  output [0:0]S;
  output [0:0]E;
  output \edge_detect_pulse_reg[3]_2 ;
  output [3:0]\q_reg[3]_0 ;
  input [0:0]switches_sync;
  input [0:0]sq_wave_leds;
  input \cycles_reg[0] ;
  input [0:0]CO;
  input [1:0]\FSM_sequential_curr_state_reg[0] ;
  input [0:0]DI;
  input [3:0]\q_reg[3]_1 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]\edge_detect_pulse_reg[3]_3 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_light_reg[1] ;
  wire [1:0]\FSM_sequential_curr_state_reg[0] ;
  wire [2:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [2:2]buttons_pressed;
  wire \cycles_reg[0] ;
  wire \edge_detect_pulse_reg[1]_0 ;
  wire [0:0]\edge_detect_pulse_reg[3]_0 ;
  wire \edge_detect_pulse_reg[3]_1 ;
  wire \edge_detect_pulse_reg[3]_2 ;
  wire [3:0]\edge_detect_pulse_reg[3]_3 ;
  wire [3:0]\q_reg[3]_0 ;
  wire [3:0]\q_reg[3]_1 ;
  wire [0:0]sq_wave_leds;
  wire [0:0]switches_sync;

  LUT4 #(
    .INIT(16'h04A6)) 
    \FSM_onehot_light[1]_i_1 
       (.I0(sq_wave_leds),
        .I1(buttons_pressed),
        .I2(switches_sync),
        .I3(Q[2]),
        .O(\FSM_onehot_light_reg[1] ));
  LUT6 #(
    .INIT(64'h01FF5400CDFF1000)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_curr_state_reg[0] [1]),
        .I2(Q[1]),
        .I3(switches_sync),
        .I4(\FSM_sequential_curr_state_reg[0] [0]),
        .I5(buttons_pressed),
        .O(D));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cycles[7]_i_1 
       (.I0(Q[2]),
        .I1(\cycles_reg[0] ),
        .I2(CO),
        .O(\edge_detect_pulse_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[3]_3 [0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[3]_3 [1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[3]_3 [2]),
        .Q(buttons_pressed),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[3]_3 [3]),
        .Q(Q[2]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \fcw[16]_i_1 
       (.I0(Q[2]),
        .O(\edge_detect_pulse_reg[3]_1 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    next_fcw0_carry__0_i_5
       (.I0(DI),
        .I1(Q[0]),
        .I2(switches_sync),
        .I3(Q[1]),
        .O(S));
  LUT2 #(
    .INIT(4'h2)) 
    \period[12]_i_2 
       (.I0(Q[1]),
        .I1(switches_sync),
        .O(\edge_detect_pulse_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hAA02)) 
    \period[13]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(switches_sync),
        .O(SR));
  LUT3 #(
    .INIT(8'h54)) 
    \period[13]_i_2 
       (.I0(switches_sync),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q_reg[3]_1 [0]),
        .Q(\q_reg[3]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q_reg[3]_1 [1]),
        .Q(\q_reg[3]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q_reg[3]_1 [2]),
        .Q(\q_reg[3]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q_reg[3]_1 [3]),
        .Q(\q_reg[3]_0 [3]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'hB)) 
    sel_i_1
       (.I0(Q[2]),
        .I1(\cycles_reg[0] ),
        .O(\edge_detect_pulse_reg[3]_2 ));
endmodule

module fcw_ram
   (D,
    next_fcw_0,
    S,
    \d_out_reg[8]_0 ,
    \d_out_reg[12]_0 ,
    \fcw_reg[16] ,
    \fcw_reg[9] ,
    \fcw_reg[0] ,
    \fcw_reg[0]_0 ,
    Q,
    \fcw_reg[0]_1 ,
    \fcw_reg[16]_0 ,
    \fcw_reg[17] ,
    \fcw_reg[0]_2 ,
    \d_out_reg[12]_1 ,
    in11,
    switches_sync,
    next_fcw0_carry,
    DI,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [13:0]D;
  output [9:0]next_fcw_0;
  output [1:0]S;
  output [1:0]\d_out_reg[8]_0 ;
  output [2:0]\d_out_reg[12]_0 ;
  output [3:0]\fcw_reg[16] ;
  output [0:0]\fcw_reg[9] ;
  input \fcw_reg[0] ;
  input \fcw_reg[0]_0 ;
  input [14:0]Q;
  input \fcw_reg[0]_1 ;
  input [1:0]\fcw_reg[16]_0 ;
  input \fcw_reg[17] ;
  input \fcw_reg[0]_2 ;
  input [1:0]\d_out_reg[12]_1 ;
  input [11:0]in11;
  input [0:0]switches_sync;
  input [1:0]next_fcw0_carry;
  input [0:0]DI;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [13:0]D;
  wire [0:0]DI;
  wire [14:0]Q;
  wire [1:0]S;
  wire [16:3]d_out;
  wire \d_out[13]_i_1_n_0 ;
  wire \d_out[15]_i_1_n_0 ;
  wire \d_out[16]_i_1_n_0 ;
  wire \d_out[3]_i_1_n_0 ;
  wire \d_out[7]_i_1_n_0 ;
  wire \d_out[9]_i_1_n_0 ;
  wire [2:0]\d_out_reg[12]_0 ;
  wire [1:0]\d_out_reg[12]_1 ;
  wire [1:0]\d_out_reg[8]_0 ;
  wire \fcw[0]_i_2_n_0 ;
  wire \fcw[0]_i_6_n_0 ;
  wire \fcw[1]_i_2_n_0 ;
  wire \fcw_reg[0] ;
  wire \fcw_reg[0]_0 ;
  wire \fcw_reg[0]_1 ;
  wire \fcw_reg[0]_2 ;
  wire [3:0]\fcw_reg[16] ;
  wire [1:0]\fcw_reg[16]_0 ;
  wire \fcw_reg[17] ;
  wire [0:0]\fcw_reg[9] ;
  wire [11:0]in11;
  wire [1:0]next_fcw0_carry;
  wire [9:0]next_fcw_0;
  wire [0:0]switches_sync;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \d_out[13]_i_1 
       (.I0(\d_out_reg[12]_1 [0]),
        .I1(\d_out_reg[12]_1 [1]),
        .O(\d_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \d_out[15]_i_1 
       (.I0(\d_out_reg[12]_1 [1]),
        .I1(\d_out_reg[12]_1 [0]),
        .O(\d_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \d_out[16]_i_1 
       (.I0(\d_out_reg[12]_1 [0]),
        .I1(\d_out_reg[12]_1 [1]),
        .O(\d_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \d_out[3]_i_1 
       (.I0(\d_out_reg[12]_1 [1]),
        .O(\d_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \d_out[7]_i_1 
       (.I0(\d_out_reg[12]_1 [1]),
        .I1(\d_out_reg[12]_1 [0]),
        .O(\d_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \d_out[9]_i_1 
       (.I0(\d_out_reg[12]_1 [1]),
        .I1(\d_out_reg[12]_1 [0]),
        .O(\d_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\d_out_reg[12]_1 [1]),
        .Q(d_out[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\d_out[13]_i_1_n_0 ),
        .Q(d_out[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\d_out[15]_i_1_n_0 ),
        .Q(d_out[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\d_out[16]_i_1_n_0 ),
        .Q(d_out[16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\d_out[3]_i_1_n_0 ),
        .Q(d_out[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\d_out[7]_i_1_n_0 ),
        .Q(d_out[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\d_out_reg[12]_1 [0]),
        .Q(d_out[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\d_out[9]_i_1_n_0 ),
        .Q(d_out[9]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F010F00)) 
    \fcw[0]_i_1 
       (.I0(\fcw[0]_i_2_n_0 ),
        .I1(\fcw_reg[0] ),
        .I2(\fcw_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\fcw_reg[0]_1 ),
        .I5(\fcw[0]_i_6_n_0 ),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \fcw[0]_i_2 
       (.I0(d_out[9]),
        .I1(\fcw_reg[0]_2 ),
        .O(\fcw[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fcw[0]_i_6 
       (.I0(d_out[9]),
        .I1(\fcw_reg[16]_0 [1]),
        .O(\fcw[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[10]_i_1 
       (.I0(d_out[15]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[6]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[12]_i_1 
       (.I0(d_out[12]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[7]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[13]_i_1 
       (.I0(d_out[13]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[8]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[14]_i_1 
       (.I0(d_out[15]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[9]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[15]_i_1 
       (.I0(d_out[15]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[10]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[16]_i_2 
       (.I0(d_out[16]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[11]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFC00AAAA)) 
    \fcw[1]_i_1 
       (.I0(d_out[16]),
        .I1(Q[1]),
        .I2(\fcw[1]_i_2_n_0 ),
        .I3(\fcw_reg[16]_0 [0]),
        .I4(\fcw_reg[16]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h2000)) 
    \fcw[1]_i_2 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw_reg[0] ),
        .I2(\fcw_reg[0]_2 ),
        .I3(d_out[16]),
        .O(\fcw[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[2]_i_1 
       (.I0(d_out[3]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[3]_i_1 
       (.I0(d_out[3]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[5]_i_1 
       (.I0(d_out[7]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[7]_i_1 
       (.I0(d_out[7]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[3]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[8]_i_1 
       (.I0(d_out[8]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[4]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hCA0A)) 
    \fcw[9]_i_1 
       (.I0(d_out[9]),
        .I1(\fcw_reg[16]_0 [0]),
        .I2(\fcw_reg[16]_0 [1]),
        .I3(in11[5]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF2F0F0F0)) 
    next_fcw0_carry__0_i_1
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw_reg[0] ),
        .I2(Q[7]),
        .I3(d_out[9]),
        .I4(\fcw_reg[0]_2 ),
        .O(\fcw_reg[9] ));
  LUT3 #(
    .INIT(8'hBA)) 
    next_fcw0_carry__0_i_2
       (.I0(Q[6]),
        .I1(\fcw_reg[17] ),
        .I2(d_out[8]),
        .O(next_fcw_0[4]));
  LUT3 #(
    .INIT(8'hBA)) 
    next_fcw0_carry__0_i_3
       (.I0(Q[5]),
        .I1(\fcw_reg[17] ),
        .I2(d_out[7]),
        .O(next_fcw_0[3]));
  LUT6 #(
    .INIT(64'hF20DF2F2F2F2F2F2)) 
    next_fcw0_carry__0_i_6
       (.I0(d_out[8]),
        .I1(\fcw_reg[17] ),
        .I2(Q[6]),
        .I3(next_fcw0_carry[0]),
        .I4(switches_sync),
        .I5(next_fcw0_carry[1]),
        .O(\d_out_reg[8]_0 [1]));
  LUT6 #(
    .INIT(64'hF20DF2F2F2F2F2F2)) 
    next_fcw0_carry__0_i_7
       (.I0(d_out[7]),
        .I1(\fcw_reg[17] ),
        .I2(Q[5]),
        .I3(next_fcw0_carry[0]),
        .I4(switches_sync),
        .I5(next_fcw0_carry[1]),
        .O(\d_out_reg[8]_0 [0]));
  LUT3 #(
    .INIT(8'hF2)) 
    next_fcw0_carry__1_i_1
       (.I0(d_out[12]),
        .I1(\fcw_reg[17] ),
        .I2(Q[10]),
        .O(next_fcw_0[5]));
  LUT5 #(
    .INIT(32'hCCEE33E1)) 
    next_fcw0_carry__1_i_5
       (.I0(d_out[12]),
        .I1(Q[10]),
        .I2(d_out[13]),
        .I3(\fcw_reg[17] ),
        .I4(Q[11]),
        .O(\d_out_reg[12]_0 [2]));
  LUT4 #(
    .INIT(16'hAF5C)) 
    next_fcw0_carry__1_i_6
       (.I0(Q[9]),
        .I1(d_out[12]),
        .I2(\fcw_reg[17] ),
        .I3(Q[10]),
        .O(\d_out_reg[12]_0 [1]));
  LUT5 #(
    .INIT(32'h77778878)) 
    next_fcw0_carry__1_i_8
       (.I0(next_fcw0_carry[0]),
        .I1(switches_sync),
        .I2(d_out[15]),
        .I3(\fcw_reg[17] ),
        .I4(Q[8]),
        .O(\d_out_reg[12]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    next_fcw0_carry__2_i_1
       (.I0(\fcw[1]_i_2_n_0 ),
        .I1(Q[14]),
        .O(next_fcw_0[9]));
  LUT3 #(
    .INIT(8'hF2)) 
    next_fcw0_carry__2_i_2
       (.I0(d_out[15]),
        .I1(\fcw_reg[17] ),
        .I2(Q[13]),
        .O(next_fcw_0[8]));
  LUT3 #(
    .INIT(8'hF2)) 
    next_fcw0_carry__2_i_3
       (.I0(d_out[15]),
        .I1(\fcw_reg[17] ),
        .I2(Q[12]),
        .O(next_fcw_0[7]));
  LUT3 #(
    .INIT(8'hF2)) 
    next_fcw0_carry__2_i_4
       (.I0(d_out[13]),
        .I1(\fcw_reg[17] ),
        .I2(Q[11]),
        .O(next_fcw_0[6]));
  LUT3 #(
    .INIT(8'hE1)) 
    next_fcw0_carry__2_i_5
       (.I0(\fcw[1]_i_2_n_0 ),
        .I1(Q[14]),
        .I2(DI),
        .O(\fcw_reg[16] [3]));
  LUT5 #(
    .INIT(32'hF2F2F20D)) 
    next_fcw0_carry__2_i_6
       (.I0(d_out[15]),
        .I1(\fcw_reg[17] ),
        .I2(Q[13]),
        .I3(\fcw[1]_i_2_n_0 ),
        .I4(Q[14]),
        .O(\fcw_reg[16] [2]));
  LUT4 #(
    .INIT(16'hAE5D)) 
    next_fcw0_carry__2_i_7
       (.I0(Q[12]),
        .I1(d_out[15]),
        .I2(\fcw_reg[17] ),
        .I3(Q[13]),
        .O(\fcw_reg[16] [1]));
  LUT5 #(
    .INIT(32'hCCEE33E1)) 
    next_fcw0_carry__2_i_8
       (.I0(d_out[13]),
        .I1(Q[11]),
        .I2(d_out[15]),
        .I3(\fcw_reg[17] ),
        .I4(Q[12]),
        .O(\fcw_reg[16] [0]));
  LUT3 #(
    .INIT(8'hBA)) 
    next_fcw0_carry_i_1
       (.I0(Q[4]),
        .I1(\fcw_reg[17] ),
        .I2(d_out[7]),
        .O(next_fcw_0[2]));
  LUT3 #(
    .INIT(8'hBA)) 
    next_fcw0_carry_i_3
       (.I0(Q[3]),
        .I1(\fcw_reg[17] ),
        .I2(d_out[3]),
        .O(next_fcw_0[1]));
  LUT6 #(
    .INIT(64'hF20DF2F2F2F2F2F2)) 
    next_fcw0_carry_i_4
       (.I0(d_out[7]),
        .I1(\fcw_reg[17] ),
        .I2(Q[4]),
        .I3(next_fcw0_carry[0]),
        .I4(switches_sync),
        .I5(next_fcw0_carry[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0DF20DF20DF2F2F2)) 
    next_fcw0_carry_i_6
       (.I0(d_out[3]),
        .I1(\fcw_reg[17] ),
        .I2(Q[3]),
        .I3(switches_sync),
        .I4(next_fcw0_carry[1]),
        .I5(next_fcw0_carry[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hBA)) 
    next_fcw0_carry_i_7
       (.I0(Q[2]),
        .I1(\fcw_reg[17] ),
        .I2(d_out[3]),
        .O(next_fcw_0[0]));
endmodule

module fsm
   (DI,
    \fcw_reg[22]_0 ,
    LEDS_OBUF,
    \fcw_reg[23]_0 ,
    \leds_reg[3]_0 ,
    O,
    \fcw_reg[7]_0 ,
    \fcw_reg[11]_0 ,
    \fcw_reg[15]_0 ,
    \fcw_reg[19]_0 ,
    \fcw_reg[22]_1 ,
    \fcw_reg[5]_0 ,
    S,
    \fcw_reg[17]_0 ,
    Q,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    D,
    switches_sync,
    i_reg,
    sq_wave_leds,
    \fcw_reg[16]_0 );
  output [0:0]DI;
  output [22:0]\fcw_reg[22]_0 ;
  output [2:0]LEDS_OBUF;
  output [0:0]\fcw_reg[23]_0 ;
  output [2:0]\leds_reg[3]_0 ;
  output [3:0]O;
  output [3:0]\fcw_reg[7]_0 ;
  output [3:0]\fcw_reg[11]_0 ;
  output [3:0]\fcw_reg[15]_0 ;
  output [3:0]\fcw_reg[19]_0 ;
  output [3:0]\fcw_reg[22]_1 ;
  input [0:0]\fcw_reg[5]_0 ;
  input [0:0]S;
  input [0:0]\fcw_reg[17]_0 ;
  input [2:0]Q;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]D;
  input [0:0]switches_sync;
  input [23:0]i_reg;
  input [0:0]sq_wave_leds;
  input \fcw_reg[16]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]D;
  wire [0:0]DI;
  wire [2:0]LEDS_OBUF;
  wire [3:0]O;
  wire [2:0]Q;
  wire [0:0]S;
  wire [1:0]adder;
  wire \adder[0]_i_1_n_0 ;
  wire \adder[1]_i_1_n_0 ;
  wire \adder[1]_i_3_n_0 ;
  wire \adder[1]_i_4_n_0 ;
  wire \adder[1]_i_5_n_0 ;
  wire \adder[1]_i_6_n_0 ;
  wire \adder[1]_i_7_n_0 ;
  wire \adder[1]_i_8_n_0 ;
  wire \adder[1]_i_9_n_0 ;
  wire \cycles1[0]_i_2_n_0 ;
  wire [27:0]cycles1_reg;
  wire \cycles1_reg[0]_i_1_n_0 ;
  wire \cycles1_reg[0]_i_1_n_4 ;
  wire \cycles1_reg[0]_i_1_n_5 ;
  wire \cycles1_reg[0]_i_1_n_6 ;
  wire \cycles1_reg[0]_i_1_n_7 ;
  wire \cycles1_reg[12]_i_1_n_0 ;
  wire \cycles1_reg[12]_i_1_n_4 ;
  wire \cycles1_reg[12]_i_1_n_5 ;
  wire \cycles1_reg[12]_i_1_n_6 ;
  wire \cycles1_reg[12]_i_1_n_7 ;
  wire \cycles1_reg[16]_i_1_n_0 ;
  wire \cycles1_reg[16]_i_1_n_4 ;
  wire \cycles1_reg[16]_i_1_n_5 ;
  wire \cycles1_reg[16]_i_1_n_6 ;
  wire \cycles1_reg[16]_i_1_n_7 ;
  wire \cycles1_reg[20]_i_1_n_0 ;
  wire \cycles1_reg[20]_i_1_n_4 ;
  wire \cycles1_reg[20]_i_1_n_5 ;
  wire \cycles1_reg[20]_i_1_n_6 ;
  wire \cycles1_reg[20]_i_1_n_7 ;
  wire \cycles1_reg[24]_i_1_n_4 ;
  wire \cycles1_reg[24]_i_1_n_5 ;
  wire \cycles1_reg[24]_i_1_n_6 ;
  wire \cycles1_reg[24]_i_1_n_7 ;
  wire \cycles1_reg[4]_i_1_n_0 ;
  wire \cycles1_reg[4]_i_1_n_4 ;
  wire \cycles1_reg[4]_i_1_n_5 ;
  wire \cycles1_reg[4]_i_1_n_6 ;
  wire \cycles1_reg[4]_i_1_n_7 ;
  wire \cycles1_reg[8]_i_1_n_0 ;
  wire \cycles1_reg[8]_i_1_n_4 ;
  wire \cycles1_reg[8]_i_1_n_5 ;
  wire \cycles1_reg[8]_i_1_n_6 ;
  wire \cycles1_reg[8]_i_1_n_7 ;
  wire [23:23]fcw;
  wire \fcw[0]_i_3_n_0 ;
  wire \fcw[0]_i_4_n_0 ;
  wire \fcw[0]_i_5_n_0 ;
  wire \fcw[11]_i_1_n_0 ;
  wire \fcw[23]_i_1_n_0 ;
  wire \fcw[4]_i_1_n_0 ;
  wire \fcw[6]_i_1_n_0 ;
  wire [3:0]\fcw_reg[11]_0 ;
  wire [3:0]\fcw_reg[15]_0 ;
  wire \fcw_reg[16]_0 ;
  wire [0:0]\fcw_reg[17]_0 ;
  wire [3:0]\fcw_reg[19]_0 ;
  wire [22:0]\fcw_reg[22]_0 ;
  wire [3:0]\fcw_reg[22]_1 ;
  wire [0:0]\fcw_reg[23]_0 ;
  wire [0:0]\fcw_reg[5]_0 ;
  wire [3:0]\fcw_reg[7]_0 ;
  wire [0:0]fsm_leds;
  wire \i[0]_i_3_n_0 ;
  wire \i[0]_i_4_n_0 ;
  wire \i[0]_i_5_n_0 ;
  wire \i[0]_i_6_n_0 ;
  wire \i[12]_i_2_n_0 ;
  wire \i[12]_i_3_n_0 ;
  wire \i[12]_i_4_n_0 ;
  wire \i[12]_i_5_n_0 ;
  wire \i[16]_i_2_n_0 ;
  wire \i[16]_i_3_n_0 ;
  wire \i[16]_i_4_n_0 ;
  wire \i[16]_i_5_n_0 ;
  wire \i[20]_i_2_n_0 ;
  wire \i[20]_i_3_n_0 ;
  wire \i[20]_i_4_n_0 ;
  wire \i[20]_i_5_n_0 ;
  wire \i[4]_i_2_n_0 ;
  wire \i[4]_i_3_n_0 ;
  wire \i[4]_i_4_n_0 ;
  wire \i[4]_i_5_n_0 ;
  wire \i[8]_i_2_n_0 ;
  wire \i[8]_i_3_n_0 ;
  wire \i[8]_i_4_n_0 ;
  wire \i[8]_i_5_n_0 ;
  wire [23:0]i_reg;
  wire \i_reg[0]_i_2_n_0 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire [23:2]in11;
  wire [2:0]\leds_reg[3]_0 ;
  wire [1:1]next_adder;
  wire [16:0]next_fcw;
  wire next_fcw0_carry__0_i_10_n_0;
  wire next_fcw0_carry__0_i_11_n_0;
  wire next_fcw0_carry__0_i_8_n_0;
  wire next_fcw0_carry__0_i_9_n_0;
  wire next_fcw0_carry__0_n_0;
  wire next_fcw0_carry__1_i_3_n_0;
  wire next_fcw0_carry__1_i_7_n_0;
  wire next_fcw0_carry__1_n_0;
  wire next_fcw0_carry__2_n_0;
  wire next_fcw0_carry__3_i_1_n_0;
  wire next_fcw0_carry__3_i_2_n_0;
  wire next_fcw0_carry__3_i_3_n_0;
  wire next_fcw0_carry__3_i_4_n_0;
  wire next_fcw0_carry__3_n_0;
  wire next_fcw0_carry__4_i_1_n_0;
  wire next_fcw0_carry__4_i_2_n_0;
  wire next_fcw0_carry_i_5_n_0;
  wire next_fcw0_carry_i_8_n_0;
  wire next_fcw0_carry_n_0;
  wire [16:2]next_fcw_0;
  wire [3:0]next_leds;
  wire [1:1]next_state;
  wire notes_n_24;
  wire notes_n_25;
  wire notes_n_26;
  wire notes_n_27;
  wire notes_n_28;
  wire notes_n_29;
  wire notes_n_30;
  wire notes_n_31;
  wire notes_n_32;
  wire notes_n_33;
  wire notes_n_34;
  wire [0:0]sq_wave_leds;
  wire [0:0]switches_sync;
  wire [3:0]\NLW_cycles1_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles1_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles1_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles1_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles1_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cycles1_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_next_fcw0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_next_fcw0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_next_fcw0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_fcw0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_next_fcw0_carry__3_CO_UNCONNECTED;

  LUT4 #(
    .INIT(16'hBFC0)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(LEDS_OBUF[2]),
        .I1(switches_sync),
        .I2(Q[0]),
        .I3(LEDS_OBUF[1]),
        .O(next_state));
  (* FSM_ENCODED_STATES = "REV_PLAY:01,REG_PLAY:00,EDIT:11,PAUSE:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D),
        .Q(LEDS_OBUF[2]),
        .R(Q[2]));
  (* FSM_ENCODED_STATES = "REV_PLAY:01,REG_PLAY:00,EDIT:11,PAUSE:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_state_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_state),
        .Q(LEDS_OBUF[1]),
        .R(Q[2]));
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hB8)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(fsm_leds),
        .I1(switches_sync),
        .I2(sq_wave_leds),
        .O(LEDS_OBUF[0]));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \adder[0]_i_1 
       (.I0(adder[0]),
        .O(\adder[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \adder[1]_i_1 
       (.I0(\adder[1]_i_3_n_0 ),
        .I1(\adder[1]_i_4_n_0 ),
        .I2(\adder[1]_i_5_n_0 ),
        .O(\adder[1]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "189" *) 
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \adder[1]_i_2 
       (.I0(LEDS_OBUF[2]),
        .I1(adder[0]),
        .I2(adder[1]),
        .O(next_adder));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \adder[1]_i_3 
       (.I0(cycles1_reg[14]),
        .I1(cycles1_reg[21]),
        .I2(cycles1_reg[9]),
        .I3(cycles1_reg[22]),
        .I4(\adder[1]_i_6_n_0 ),
        .O(\adder[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \adder[1]_i_4 
       (.I0(cycles1_reg[0]),
        .I1(cycles1_reg[17]),
        .I2(cycles1_reg[1]),
        .I3(cycles1_reg[23]),
        .I4(\adder[1]_i_7_n_0 ),
        .O(\adder[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \adder[1]_i_5 
       (.I0(\adder[1]_i_8_n_0 ),
        .I1(\adder[1]_i_9_n_0 ),
        .I2(cycles1_reg[26]),
        .I3(cycles1_reg[4]),
        .I4(cycles1_reg[15]),
        .I5(cycles1_reg[13]),
        .O(\adder[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \adder[1]_i_6 
       (.I0(cycles1_reg[5]),
        .I1(cycles1_reg[20]),
        .I2(cycles1_reg[2]),
        .I3(cycles1_reg[11]),
        .O(\adder[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \adder[1]_i_7 
       (.I0(cycles1_reg[6]),
        .I1(cycles1_reg[10]),
        .I2(cycles1_reg[8]),
        .I3(cycles1_reg[27]),
        .O(\adder[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4FFFFFFFFFFFFFFF)) 
    \adder[1]_i_8 
       (.I0(cycles1_reg[19]),
        .I1(cycles1_reg[18]),
        .I2(cycles1_reg[16]),
        .I3(cycles1_reg[25]),
        .I4(cycles1_reg[12]),
        .I5(cycles1_reg[3]),
        .O(\adder[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \adder[1]_i_9 
       (.I0(LEDS_OBUF[1]),
        .I1(cycles1_reg[19]),
        .I2(cycles1_reg[24]),
        .I3(cycles1_reg[7]),
        .O(\adder[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\adder[1]_i_1_n_0 ),
        .D(\adder[0]_i_1_n_0 ),
        .Q(adder[0]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \adder_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\adder[1]_i_1_n_0 ),
        .D(next_adder),
        .Q(adder[1]),
        .R(Q[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \cycles1[0]_i_2 
       (.I0(cycles1_reg[0]),
        .O(\cycles1[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[0]_i_1_n_7 ),
        .Q(cycles1_reg[0]),
        .R(Q[2]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles1_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\cycles1_reg[0]_i_1_n_0 ,\NLW_cycles1_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\cycles1_reg[0]_i_1_n_4 ,\cycles1_reg[0]_i_1_n_5 ,\cycles1_reg[0]_i_1_n_6 ,\cycles1_reg[0]_i_1_n_7 }),
        .S({cycles1_reg[3:1],\cycles1[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[8]_i_1_n_5 ),
        .Q(cycles1_reg[10]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[8]_i_1_n_4 ),
        .Q(cycles1_reg[11]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[12]_i_1_n_7 ),
        .Q(cycles1_reg[12]),
        .R(Q[2]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles1_reg[12]_i_1 
       (.CI(\cycles1_reg[8]_i_1_n_0 ),
        .CO({\cycles1_reg[12]_i_1_n_0 ,\NLW_cycles1_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles1_reg[12]_i_1_n_4 ,\cycles1_reg[12]_i_1_n_5 ,\cycles1_reg[12]_i_1_n_6 ,\cycles1_reg[12]_i_1_n_7 }),
        .S(cycles1_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[12]_i_1_n_6 ),
        .Q(cycles1_reg[13]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[12]_i_1_n_5 ),
        .Q(cycles1_reg[14]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[12]_i_1_n_4 ),
        .Q(cycles1_reg[15]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[16]_i_1_n_7 ),
        .Q(cycles1_reg[16]),
        .R(Q[2]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles1_reg[16]_i_1 
       (.CI(\cycles1_reg[12]_i_1_n_0 ),
        .CO({\cycles1_reg[16]_i_1_n_0 ,\NLW_cycles1_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles1_reg[16]_i_1_n_4 ,\cycles1_reg[16]_i_1_n_5 ,\cycles1_reg[16]_i_1_n_6 ,\cycles1_reg[16]_i_1_n_7 }),
        .S(cycles1_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[16]_i_1_n_6 ),
        .Q(cycles1_reg[17]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[16]_i_1_n_5 ),
        .Q(cycles1_reg[18]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[16]_i_1_n_4 ),
        .Q(cycles1_reg[19]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[0]_i_1_n_6 ),
        .Q(cycles1_reg[1]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[20]_i_1_n_7 ),
        .Q(cycles1_reg[20]),
        .R(Q[2]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles1_reg[20]_i_1 
       (.CI(\cycles1_reg[16]_i_1_n_0 ),
        .CO({\cycles1_reg[20]_i_1_n_0 ,\NLW_cycles1_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles1_reg[20]_i_1_n_4 ,\cycles1_reg[20]_i_1_n_5 ,\cycles1_reg[20]_i_1_n_6 ,\cycles1_reg[20]_i_1_n_7 }),
        .S(cycles1_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[20]_i_1_n_6 ),
        .Q(cycles1_reg[21]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[20]_i_1_n_5 ),
        .Q(cycles1_reg[22]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[20]_i_1_n_4 ),
        .Q(cycles1_reg[23]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[24] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[24]_i_1_n_7 ),
        .Q(cycles1_reg[24]),
        .R(Q[2]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles1_reg[24]_i_1 
       (.CI(\cycles1_reg[20]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles1_reg[24]_i_1_n_4 ,\cycles1_reg[24]_i_1_n_5 ,\cycles1_reg[24]_i_1_n_6 ,\cycles1_reg[24]_i_1_n_7 }),
        .S(cycles1_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[25] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[24]_i_1_n_6 ),
        .Q(cycles1_reg[25]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[26] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[24]_i_1_n_5 ),
        .Q(cycles1_reg[26]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[27] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[24]_i_1_n_4 ),
        .Q(cycles1_reg[27]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[0]_i_1_n_5 ),
        .Q(cycles1_reg[2]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[0]_i_1_n_4 ),
        .Q(cycles1_reg[3]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[4]_i_1_n_7 ),
        .Q(cycles1_reg[4]),
        .R(Q[2]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles1_reg[4]_i_1 
       (.CI(\cycles1_reg[0]_i_1_n_0 ),
        .CO({\cycles1_reg[4]_i_1_n_0 ,\NLW_cycles1_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles1_reg[4]_i_1_n_4 ,\cycles1_reg[4]_i_1_n_5 ,\cycles1_reg[4]_i_1_n_6 ,\cycles1_reg[4]_i_1_n_7 }),
        .S(cycles1_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[4]_i_1_n_6 ),
        .Q(cycles1_reg[5]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[4]_i_1_n_5 ),
        .Q(cycles1_reg[6]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[4]_i_1_n_4 ),
        .Q(cycles1_reg[7]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[8]_i_1_n_7 ),
        .Q(cycles1_reg[8]),
        .R(Q[2]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles1_reg[8]_i_1 
       (.CI(\cycles1_reg[4]_i_1_n_0 ),
        .CO({\cycles1_reg[8]_i_1_n_0 ,\NLW_cycles1_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles1_reg[8]_i_1_n_4 ,\cycles1_reg[8]_i_1_n_5 ,\cycles1_reg[8]_i_1_n_6 ,\cycles1_reg[8]_i_1_n_7 }),
        .S(cycles1_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles1_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles1_reg[8]_i_1_n_6 ),
        .Q(cycles1_reg[9]),
        .R(Q[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fcw[0]_i_3 
       (.I0(\fcw_reg[22]_0 [13]),
        .I1(\fcw_reg[22]_0 [12]),
        .I2(\fcw_reg[22]_0 [14]),
        .I3(\fcw_reg[22]_0 [17]),
        .I4(\fcw_reg[22]_0 [15]),
        .I5(\fcw_reg[22]_0 [16]),
        .O(\fcw[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \fcw[0]_i_4 
       (.I0(LEDS_OBUF[2]),
        .I1(LEDS_OBUF[1]),
        .O(\fcw[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fcw[0]_i_5 
       (.I0(\fcw_reg[22]_0 [21]),
        .I1(\fcw_reg[22]_0 [22]),
        .I2(\fcw_reg[22]_0 [19]),
        .I3(\fcw_reg[22]_0 [18]),
        .I4(\fcw_reg[22]_0 [20]),
        .I5(fcw),
        .O(\fcw[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \fcw[11]_i_1 
       (.I0(in11[11]),
        .I1(LEDS_OBUF[2]),
        .I2(LEDS_OBUF[1]),
        .O(\fcw[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \fcw[23]_i_1 
       (.I0(LEDS_OBUF[1]),
        .I1(LEDS_OBUF[2]),
        .I2(Q[2]),
        .O(\fcw[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \fcw[4]_i_1 
       (.I0(in11[4]),
        .I1(LEDS_OBUF[2]),
        .I2(LEDS_OBUF[1]),
        .O(\fcw[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \fcw[6]_i_1 
       (.I0(in11[6]),
        .I1(LEDS_OBUF[2]),
        .I2(LEDS_OBUF[1]),
        .O(\fcw[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[0]),
        .Q(\fcw_reg[22]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[10]),
        .Q(\fcw_reg[22]_0 [10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(\fcw[11]_i_1_n_0 ),
        .Q(\fcw_reg[22]_0 [11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[12]),
        .Q(\fcw_reg[22]_0 [12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[13]),
        .Q(\fcw_reg[22]_0 [13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[14]),
        .Q(\fcw_reg[22]_0 [14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[15]),
        .Q(\fcw_reg[22]_0 [15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[16]),
        .Q(\fcw_reg[22]_0 [16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(in11[17]),
        .Q(\fcw_reg[22]_0 [17]),
        .R(\fcw[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(in11[18]),
        .Q(\fcw_reg[22]_0 [18]),
        .R(\fcw[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(in11[19]),
        .Q(\fcw_reg[22]_0 [19]),
        .R(\fcw[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[1]),
        .Q(\fcw_reg[22]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(in11[20]),
        .Q(\fcw_reg[22]_0 [20]),
        .R(\fcw[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(in11[21]),
        .Q(\fcw_reg[22]_0 [21]),
        .R(\fcw[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(in11[22]),
        .Q(\fcw_reg[22]_0 [22]),
        .R(\fcw[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(in11[23]),
        .Q(fcw),
        .R(\fcw[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[2]),
        .Q(\fcw_reg[22]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[3]),
        .Q(\fcw_reg[22]_0 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(\fcw[4]_i_1_n_0 ),
        .Q(\fcw_reg[22]_0 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[5]),
        .Q(\fcw_reg[22]_0 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(\fcw[6]_i_1_n_0 ),
        .Q(\fcw_reg[22]_0 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[7]),
        .Q(\fcw_reg[22]_0 [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[8]),
        .Q(\fcw_reg[22]_0 [8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fcw_reg[16]_0 ),
        .D(next_fcw[9]),
        .Q(\fcw_reg[22]_0 [9]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__4_i_1
       (.I0(fcw),
        .I1(i_reg[23]),
        .O(\fcw_reg[23]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[0]_i_3 
       (.I0(\fcw_reg[22]_0 [3]),
        .I1(i_reg[3]),
        .O(\i[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[0]_i_4 
       (.I0(\fcw_reg[22]_0 [2]),
        .I1(i_reg[2]),
        .O(\i[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[0]_i_5 
       (.I0(\fcw_reg[22]_0 [1]),
        .I1(i_reg[1]),
        .O(\i[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[0]_i_6 
       (.I0(\fcw_reg[22]_0 [0]),
        .I1(i_reg[0]),
        .O(\i[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[12]_i_2 
       (.I0(\fcw_reg[22]_0 [15]),
        .I1(i_reg[15]),
        .O(\i[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[12]_i_3 
       (.I0(\fcw_reg[22]_0 [14]),
        .I1(i_reg[14]),
        .O(\i[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[12]_i_4 
       (.I0(\fcw_reg[22]_0 [13]),
        .I1(i_reg[13]),
        .O(\i[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[12]_i_5 
       (.I0(\fcw_reg[22]_0 [12]),
        .I1(i_reg[12]),
        .O(\i[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[16]_i_2 
       (.I0(\fcw_reg[22]_0 [19]),
        .I1(i_reg[19]),
        .O(\i[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[16]_i_3 
       (.I0(\fcw_reg[22]_0 [18]),
        .I1(i_reg[18]),
        .O(\i[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[16]_i_4 
       (.I0(\fcw_reg[22]_0 [17]),
        .I1(i_reg[17]),
        .O(\i[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[16]_i_5 
       (.I0(\fcw_reg[22]_0 [16]),
        .I1(i_reg[16]),
        .O(\i[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[20]_i_2 
       (.I0(fcw),
        .I1(i_reg[23]),
        .O(\i[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[20]_i_3 
       (.I0(\fcw_reg[22]_0 [22]),
        .I1(i_reg[22]),
        .O(\i[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[20]_i_4 
       (.I0(\fcw_reg[22]_0 [21]),
        .I1(i_reg[21]),
        .O(\i[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[20]_i_5 
       (.I0(\fcw_reg[22]_0 [20]),
        .I1(i_reg[20]),
        .O(\i[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[4]_i_2 
       (.I0(\fcw_reg[22]_0 [7]),
        .I1(i_reg[7]),
        .O(\i[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[4]_i_3 
       (.I0(\fcw_reg[22]_0 [6]),
        .I1(i_reg[6]),
        .O(\i[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[4]_i_4 
       (.I0(\fcw_reg[22]_0 [5]),
        .I1(i_reg[5]),
        .O(\i[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[4]_i_5 
       (.I0(\fcw_reg[22]_0 [4]),
        .I1(i_reg[4]),
        .O(\i[4]_i_5_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "256" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[8]_i_2 
       (.I0(\fcw_reg[22]_0 [11]),
        .I1(i_reg[11]),
        .O(\i[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[8]_i_3 
       (.I0(\fcw_reg[22]_0 [10]),
        .I1(i_reg[10]),
        .O(\i[8]_i_3_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "229" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i[8]_i_4 
       (.I0(\fcw_reg[22]_0 [9]),
        .I1(i_reg[9]),
        .O(\i[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i[8]_i_5 
       (.I0(\fcw_reg[22]_0 [8]),
        .I1(i_reg[8]),
        .O(\i[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\i_reg[0]_i_2_n_0 ,\NLW_i_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(\fcw_reg[22]_0 [3:0]),
        .O(O),
        .S({\i[0]_i_3_n_0 ,\i[0]_i_4_n_0 ,\i[0]_i_5_n_0 ,\i[0]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\NLW_i_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(\fcw_reg[22]_0 [15:12]),
        .O(\fcw_reg[15]_0 ),
        .S({\i[12]_i_2_n_0 ,\i[12]_i_3_n_0 ,\i[12]_i_4_n_0 ,\i[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\NLW_i_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(\fcw_reg[22]_0 [19:16]),
        .O(\fcw_reg[19]_0 ),
        .S({\i[16]_i_2_n_0 ,\i[16]_i_3_n_0 ,\i[16]_i_4_n_0 ,\i[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\fcw_reg[22]_0 [22:20]}),
        .O(\fcw_reg[22]_1 ),
        .S({\i[20]_i_2_n_0 ,\i[20]_i_3_n_0 ,\i[20]_i_4_n_0 ,\i[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_2_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\NLW_i_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(\fcw_reg[22]_0 [7:4]),
        .O(\fcw_reg[7]_0 ),
        .S({\i[4]_i_2_n_0 ,\i[4]_i_3_n_0 ,\i[4]_i_4_n_0 ,\i[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\NLW_i_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(\fcw_reg[22]_0 [11:8]),
        .O(\fcw_reg[11]_0 ),
        .S({\i[8]_i_2_n_0 ,\i[8]_i_3_n_0 ,\i[8]_i_4_n_0 ,\i[8]_i_5_n_0 }));
  (* \PinAttr:I4:HOLD_DETOUR  = "154" *) 
  LUT5 #(
    .INIT(32'hF0F00002)) 
    \leds[0]_i_1 
       (.I0(\leds_reg[3]_0 [2]),
        .I1(fsm_leds),
        .I2(LEDS_OBUF[2]),
        .I3(\leds_reg[3]_0 [1]),
        .I4(\leds_reg[3]_0 [0]),
        .O(next_leds[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds[1]_i_1 
       (.I0(\leds_reg[3]_0 [1]),
        .I1(LEDS_OBUF[2]),
        .I2(fsm_leds),
        .O(next_leds[1]));
  (* \PinAttr:I2:HOLD_DETOUR  = "160" *) 
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \leds[2]_i_1 
       (.I0(\leds_reg[3]_0 [2]),
        .I1(LEDS_OBUF[2]),
        .I2(\leds_reg[3]_0 [0]),
        .O(next_leds[2]));
  (* \PinAttr:I0:HOLD_DETOUR  = "160" *) 
  (* \PinAttr:I1:HOLD_DETOUR  = "202" *) 
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00FF0400)) 
    \leds[3]_i_1 
       (.I0(\leds_reg[3]_0 [0]),
        .I1(fsm_leds),
        .I2(\leds_reg[3]_0 [2]),
        .I3(LEDS_OBUF[2]),
        .I4(\leds_reg[3]_0 [1]),
        .O(next_leds[3]));
  FDSE #(
    .INIT(1'b1)) 
    \leds_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\adder[1]_i_1_n_0 ),
        .D(next_leds[0]),
        .Q(fsm_leds),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\adder[1]_i_1_n_0 ),
        .D(next_leds[1]),
        .Q(\leds_reg[3]_0 [0]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\adder[1]_i_1_n_0 ),
        .D(next_leds[2]),
        .Q(\leds_reg[3]_0 [1]),
        .R(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \leds_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\adder[1]_i_1_n_0 ),
        .D(next_leds[3]),
        .Q(\leds_reg[3]_0 [2]),
        .R(Q[2]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 next_fcw0_carry
       (.CI(\<const0> ),
        .CO({next_fcw0_carry_n_0,NLW_next_fcw0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({next_fcw_0[5],\fcw_reg[5]_0 ,next_fcw_0[3],\<const0> }),
        .O(in11[5:2]),
        .S({notes_n_24,next_fcw0_carry_i_5_n_0,notes_n_25,next_fcw_0[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 next_fcw0_carry__0
       (.CI(next_fcw0_carry_n_0),
        .CO({next_fcw0_carry__0_n_0,NLW_next_fcw0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({DI,next_fcw_0[8:6]}),
        .O(in11[9:6]),
        .S({S,notes_n_26,notes_n_27,next_fcw0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    next_fcw0_carry__0_i_10
       (.I0(\fcw_reg[22]_0 [5]),
        .I1(\fcw_reg[22]_0 [3]),
        .I2(\fcw_reg[22]_0 [8]),
        .I3(\fcw_reg[22]_0 [4]),
        .O(next_fcw0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    next_fcw0_carry__0_i_11
       (.I0(\fcw_reg[22]_0 [10]),
        .I1(\fcw_reg[22]_0 [1]),
        .I2(\fcw_reg[22]_0 [9]),
        .I3(\fcw_reg[22]_0 [7]),
        .O(next_fcw0_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    next_fcw0_carry__0_i_4
       (.I0(\fcw_reg[22]_0 [6]),
        .I1(next_fcw0_carry_i_8_n_0),
        .O(next_fcw_0[6]));
  LUT5 #(
    .INIT(32'hD2DDDDDD)) 
    next_fcw0_carry__0_i_8
       (.I0(next_fcw0_carry_i_8_n_0),
        .I1(\fcw_reg[22]_0 [6]),
        .I2(Q[0]),
        .I3(switches_sync),
        .I4(Q[1]),
        .O(next_fcw0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    next_fcw0_carry__0_i_9
       (.I0(\fcw_reg[22]_0 [11]),
        .I1(\fcw_reg[22]_0 [6]),
        .I2(\fcw_reg[22]_0 [0]),
        .I3(\fcw_reg[22]_0 [2]),
        .I4(next_fcw0_carry__0_i_10_n_0),
        .I5(next_fcw0_carry__0_i_11_n_0),
        .O(next_fcw0_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 next_fcw0_carry__1
       (.CI(next_fcw0_carry__0_n_0),
        .CO({next_fcw0_carry__1_n_0,NLW_next_fcw0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({next_fcw_0[12:11],next_fcw0_carry__1_i_3_n_0,\fcw_reg[17]_0 }),
        .O(in11[13:10]),
        .S({notes_n_28,notes_n_29,next_fcw0_carry__1_i_7_n_0,notes_n_30}));
  LUT2 #(
    .INIT(4'hB)) 
    next_fcw0_carry__1_i_2
       (.I0(\fcw_reg[22]_0 [11]),
        .I1(next_fcw0_carry_i_8_n_0),
        .O(next_fcw_0[11]));
  LUT2 #(
    .INIT(4'h2)) 
    next_fcw0_carry__1_i_3
       (.I0(next_fcw0_carry_i_8_n_0),
        .I1(\fcw_reg[22]_0 [11]),
        .O(next_fcw0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h7877)) 
    next_fcw0_carry__1_i_7
       (.I0(Q[0]),
        .I1(switches_sync),
        .I2(\fcw_reg[22]_0 [11]),
        .I3(next_fcw0_carry_i_8_n_0),
        .O(next_fcw0_carry__1_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 next_fcw0_carry__2
       (.CI(next_fcw0_carry__1_n_0),
        .CO({next_fcw0_carry__2_n_0,NLW_next_fcw0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(next_fcw_0[16:13]),
        .O(in11[17:14]),
        .S({notes_n_31,notes_n_32,notes_n_33,notes_n_34}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 next_fcw0_carry__3
       (.CI(next_fcw0_carry__2_n_0),
        .CO({next_fcw0_carry__3_n_0,NLW_next_fcw0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(\fcw_reg[22]_0 [20:17]),
        .O(in11[21:18]),
        .S({next_fcw0_carry__3_i_1_n_0,next_fcw0_carry__3_i_2_n_0,next_fcw0_carry__3_i_3_n_0,next_fcw0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    next_fcw0_carry__3_i_1
       (.I0(\fcw_reg[22]_0 [20]),
        .I1(\fcw_reg[22]_0 [21]),
        .O(next_fcw0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    next_fcw0_carry__3_i_2
       (.I0(\fcw_reg[22]_0 [19]),
        .I1(\fcw_reg[22]_0 [20]),
        .O(next_fcw0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    next_fcw0_carry__3_i_3
       (.I0(\fcw_reg[22]_0 [18]),
        .I1(\fcw_reg[22]_0 [19]),
        .O(next_fcw0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    next_fcw0_carry__3_i_4
       (.I0(\fcw_reg[22]_0 [17]),
        .I1(\fcw_reg[22]_0 [18]),
        .O(next_fcw0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 next_fcw0_carry__4
       (.CI(next_fcw0_carry__3_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\fcw_reg[22]_0 [21]}),
        .O(in11[23:22]),
        .S({\<const0> ,\<const0> ,next_fcw0_carry__4_i_1_n_0,next_fcw0_carry__4_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    next_fcw0_carry__4_i_1
       (.I0(\fcw_reg[22]_0 [22]),
        .I1(fcw),
        .O(next_fcw0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    next_fcw0_carry__4_i_2
       (.I0(\fcw_reg[22]_0 [21]),
        .I1(\fcw_reg[22]_0 [22]),
        .O(next_fcw0_carry__4_i_2_n_0));
  LUT4 #(
    .INIT(16'h2DDD)) 
    next_fcw0_carry_i_5
       (.I0(next_fcw0_carry_i_8_n_0),
        .I1(\fcw_reg[22]_0 [4]),
        .I2(Q[0]),
        .I3(switches_sync),
        .O(next_fcw0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    next_fcw0_carry_i_8
       (.I0(\fcw[0]_i_5_n_0 ),
        .I1(\fcw[0]_i_3_n_0 ),
        .I2(next_fcw0_carry__0_i_9_n_0),
        .O(next_fcw0_carry_i_8_n_0));
  fcw_ram notes
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D({next_fcw[16:12],next_fcw[10:7],next_fcw[5],next_fcw[3:0]}),
        .DI(\fcw_reg[22]_0 [17]),
        .Q({\fcw_reg[22]_0 [16:7],\fcw_reg[22]_0 [5],\fcw_reg[22]_0 [3:0]}),
        .S({notes_n_24,notes_n_25}),
        .\d_out_reg[12]_0 ({notes_n_28,notes_n_29,notes_n_30}),
        .\d_out_reg[12]_1 (adder),
        .\d_out_reg[8]_0 ({notes_n_26,notes_n_27}),
        .\fcw_reg[0] (\fcw[0]_i_3_n_0 ),
        .\fcw_reg[0]_0 (\fcw[0]_i_4_n_0 ),
        .\fcw_reg[0]_1 (\fcw[0]_i_5_n_0 ),
        .\fcw_reg[0]_2 (next_fcw0_carry__0_i_9_n_0),
        .\fcw_reg[16] ({notes_n_31,notes_n_32,notes_n_33,notes_n_34}),
        .\fcw_reg[16]_0 ({LEDS_OBUF[1],LEDS_OBUF[2]}),
        .\fcw_reg[17] (next_fcw0_carry_i_8_n_0),
        .\fcw_reg[9] (DI),
        .in11({in11[16:12],in11[10:7],in11[5],in11[3:2]}),
        .next_fcw0_carry(Q[1:0]),
        .next_fcw_0({next_fcw_0[16:12],next_fcw_0[8:7],next_fcw_0[5],next_fcw_0[3:2]}),
        .switches_sync(switches_sync));
endmodule

module nco
   (i_reg,
    sel__0,
    \i_reg[0]_0 ,
    next_sample,
    O,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \i_reg[7]_0 ,
    \i_reg[11]_0 ,
    \i_reg[15]_0 ,
    \i_reg[19]_0 ,
    \i_reg[23]_0 ,
    sel,
    i0_carry__4_0);
  output [23:0]i_reg;
  output [7:0]sel__0;
  input \i_reg[0]_0 ;
  input next_sample;
  input [3:0]O;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]\i_reg[7]_0 ;
  input [3:0]\i_reg[11]_0 ;
  input [3:0]\i_reg[15]_0 ;
  input [3:0]\i_reg[19]_0 ;
  input [3:0]\i_reg[23]_0 ;
  input [0:0]sel;
  input [22:0]i0_carry__4_0;

  wire \<const0> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]O;
  wire i0_carry__0_i_1_n_0;
  wire i0_carry__0_i_2_n_0;
  wire i0_carry__0_i_3_n_0;
  wire i0_carry__0_i_4_n_0;
  wire i0_carry__0_n_0;
  wire i0_carry__1_i_1_n_0;
  wire i0_carry__1_i_2_n_0;
  wire i0_carry__1_i_3_n_0;
  wire i0_carry__1_i_4_n_0;
  wire i0_carry__1_n_0;
  wire i0_carry__2_i_1_n_0;
  wire i0_carry__2_i_2_n_0;
  wire i0_carry__2_i_3_n_0;
  wire i0_carry__2_i_4_n_0;
  wire i0_carry__2_n_0;
  wire i0_carry__3_i_1_n_0;
  wire i0_carry__3_i_2_n_0;
  wire i0_carry__3_i_3_n_0;
  wire i0_carry__3_i_4_n_0;
  wire i0_carry__3_n_0;
  wire [22:0]i0_carry__4_0;
  wire i0_carry__4_i_2_n_0;
  wire i0_carry__4_i_3_n_0;
  wire i0_carry__4_i_4_n_0;
  wire i0_carry_i_1_n_0;
  wire i0_carry_i_2_n_0;
  wire i0_carry_i_3_n_0;
  wire i0_carry_i_4_n_0;
  wire i0_carry_n_0;
  wire [23:0]i_reg;
  wire \i_reg[0]_0 ;
  wire [3:0]\i_reg[11]_0 ;
  wire [3:0]\i_reg[15]_0 ;
  wire [3:0]\i_reg[19]_0 ;
  wire [3:0]\i_reg[23]_0 ;
  wire [3:0]\i_reg[7]_0 ;
  wire next_sample;
  wire [0:0]sel;
  wire [7:0]sel__0;
  wire [3:0]NLW_i0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_i0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_i0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_i0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_i0_carry__3_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 i0_carry
       (.CI(\<const0> ),
        .CO({i0_carry_n_0,NLW_i0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(i_reg[3:0]),
        .S({i0_carry_i_1_n_0,i0_carry_i_2_n_0,i0_carry_i_3_n_0,i0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 i0_carry__0
       (.CI(i0_carry_n_0),
        .CO({i0_carry__0_n_0,NLW_i0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(i_reg[7:4]),
        .S({i0_carry__0_i_1_n_0,i0_carry__0_i_2_n_0,i0_carry__0_i_3_n_0,i0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__0_i_1
       (.I0(i_reg[7]),
        .I1(i0_carry__4_0[7]),
        .O(i0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__0_i_2
       (.I0(i_reg[6]),
        .I1(i0_carry__4_0[6]),
        .O(i0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__0_i_3
       (.I0(i_reg[5]),
        .I1(i0_carry__4_0[5]),
        .O(i0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__0_i_4
       (.I0(i_reg[4]),
        .I1(i0_carry__4_0[4]),
        .O(i0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 i0_carry__1
       (.CI(i0_carry__0_n_0),
        .CO({i0_carry__1_n_0,NLW_i0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(i_reg[11:8]),
        .S({i0_carry__1_i_1_n_0,i0_carry__1_i_2_n_0,i0_carry__1_i_3_n_0,i0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__1_i_1
       (.I0(i_reg[11]),
        .I1(i0_carry__4_0[11]),
        .O(i0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__1_i_2
       (.I0(i_reg[10]),
        .I1(i0_carry__4_0[10]),
        .O(i0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__1_i_3
       (.I0(i_reg[9]),
        .I1(i0_carry__4_0[9]),
        .O(i0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__1_i_4
       (.I0(i_reg[8]),
        .I1(i0_carry__4_0[8]),
        .O(i0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 i0_carry__2
       (.CI(i0_carry__1_n_0),
        .CO({i0_carry__2_n_0,NLW_i0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(i_reg[15:12]),
        .S({i0_carry__2_i_1_n_0,i0_carry__2_i_2_n_0,i0_carry__2_i_3_n_0,i0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__2_i_1
       (.I0(i_reg[15]),
        .I1(i0_carry__4_0[15]),
        .O(i0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__2_i_2
       (.I0(i_reg[14]),
        .I1(i0_carry__4_0[14]),
        .O(i0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__2_i_3
       (.I0(i_reg[13]),
        .I1(i0_carry__4_0[13]),
        .O(i0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__2_i_4
       (.I0(i_reg[12]),
        .I1(i0_carry__4_0[12]),
        .O(i0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 i0_carry__3
       (.CI(i0_carry__2_n_0),
        .CO({i0_carry__3_n_0,NLW_i0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(i_reg[19:16]),
        .O(sel__0[3:0]),
        .S({i0_carry__3_i_1_n_0,i0_carry__3_i_2_n_0,i0_carry__3_i_3_n_0,i0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__3_i_1
       (.I0(i_reg[19]),
        .I1(i0_carry__4_0[19]),
        .O(i0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__3_i_2
       (.I0(i_reg[18]),
        .I1(i0_carry__4_0[18]),
        .O(i0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__3_i_3
       (.I0(i_reg[17]),
        .I1(i0_carry__4_0[17]),
        .O(i0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__3_i_4
       (.I0(i_reg[16]),
        .I1(i0_carry__4_0[16]),
        .O(i0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 i0_carry__4
       (.CI(i0_carry__3_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,i_reg[22:20]}),
        .O(sel__0[7:4]),
        .S({sel,i0_carry__4_i_2_n_0,i0_carry__4_i_3_n_0,i0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__4_i_2
       (.I0(i_reg[22]),
        .I1(i0_carry__4_0[22]),
        .O(i0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__4_i_3
       (.I0(i_reg[21]),
        .I1(i0_carry__4_0[21]),
        .O(i0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry__4_i_4
       (.I0(i_reg[20]),
        .I1(i0_carry__4_0[20]),
        .O(i0_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry_i_1
       (.I0(i_reg[3]),
        .I1(i0_carry__4_0[3]),
        .O(i0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry_i_2
       (.I0(i_reg[2]),
        .I1(i0_carry__4_0[2]),
        .O(i0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry_i_3
       (.I0(i_reg[1]),
        .I1(i0_carry__4_0[1]),
        .O(i0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i0_carry_i_4
       (.I0(i_reg[0]),
        .I1(i0_carry__4_0[0]),
        .O(i0_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(O[0]),
        .Q(i_reg[0]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[11]_0 [2]),
        .Q(i_reg[10]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[11]_0 [3]),
        .Q(i_reg[11]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[15]_0 [0]),
        .Q(i_reg[12]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[15]_0 [1]),
        .Q(i_reg[13]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[15]_0 [2]),
        .Q(i_reg[14]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[15]_0 [3]),
        .Q(i_reg[15]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[19]_0 [0]),
        .Q(i_reg[16]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[19]_0 [1]),
        .Q(i_reg[17]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[19]_0 [2]),
        .Q(i_reg[18]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[19]_0 [3]),
        .Q(i_reg[19]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(O[1]),
        .Q(i_reg[1]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[23]_0 [0]),
        .Q(i_reg[20]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[23]_0 [1]),
        .Q(i_reg[21]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[23]_0 [2]),
        .Q(i_reg[22]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[23]_0 [3]),
        .Q(i_reg[23]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(O[2]),
        .Q(i_reg[2]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(O[3]),
        .Q(i_reg[3]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[7]_0 [0]),
        .Q(i_reg[4]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[7]_0 [1]),
        .Q(i_reg[5]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[7]_0 [2]),
        .Q(i_reg[6]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[7]_0 [3]),
        .Q(i_reg[7]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[11]_0 [0]),
        .Q(i_reg[8]),
        .R(\i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\i_reg[11]_0 [1]),
        .Q(i_reg[9]),
        .R(\i_reg[0]_0 ));
endmodule

module sq_wave_gen
   (CO,
    sq_wave_leds,
    \code_reg[4]_0 ,
    \code_reg[4]_1 ,
    \code_reg[2]_0 ,
    sel,
    \FSM_onehot_light_reg[1]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    DOADO,
    switches_sync,
    \period_reg[12]_0 ,
    Q,
    SR,
    E,
    \code_reg[4]_2 ,
    \cycles_reg[0]_0 ,
    next_sample);
  output [0:0]CO;
  output [0:0]sq_wave_leds;
  output \code_reg[4]_0 ;
  output \code_reg[4]_1 ;
  output \code_reg[2]_0 ;
  output sel;
  input \FSM_onehot_light_reg[1]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]DOADO;
  input [0:0]switches_sync;
  input \period_reg[12]_0 ;
  input [1:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input \code_reg[4]_2 ;
  input [0:0]\cycles_reg[0]_0 ;
  input next_sample;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [3:0]DOADO;
  wire [0:0]E;
  wire \FSM_onehot_light_reg[1]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \code[2]_i_1_n_0 ;
  wire \code[4]_i_1_n_0 ;
  wire \code_reg[2]_0 ;
  wire \code_reg[4]_0 ;
  wire \code_reg[4]_1 ;
  wire \code_reg[4]_2 ;
  wire \cycles0_inferred__0/i__carry_n_0 ;
  wire \cycles[5]_i_1_n_0 ;
  wire \cycles[7]_i_4_n_0 ;
  wire [7:0]cycles_reg;
  wire [0:0]\cycles_reg[0]_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [13:0]in4;
  wire [13:1]in5;
  wire [13:1]in6;
  wire next_sample;
  wire [7:0]p_0_in__4;
  wire [13:0]p_1_in__0;
  wire \period[11]_i_4_n_0 ;
  wire \period[11]_i_5_n_0 ;
  wire \period[11]_i_6_n_0 ;
  wire \period[11]_i_7_n_0 ;
  wire \period[13]_i_6_n_0 ;
  wire \period[13]_i_7_n_0 ;
  wire \period[3]_i_4_n_0 ;
  wire \period[3]_i_5_n_0 ;
  wire \period[3]_i_6_n_0 ;
  wire \period[3]_i_7_n_0 ;
  wire \period[7]_i_4_n_0 ;
  wire \period[7]_i_5_n_0 ;
  wire \period[7]_i_6_n_0 ;
  wire \period[7]_i_7_n_0 ;
  wire \period_reg[11]_i_2_n_0 ;
  wire \period_reg[11]_i_3_n_0 ;
  wire \period_reg[12]_0 ;
  wire \period_reg[3]_i_2_n_0 ;
  wire \period_reg[3]_i_3_n_0 ;
  wire \period_reg[7]_i_2_n_0 ;
  wire \period_reg[7]_i_3_n_0 ;
  wire \period_reg_n_0_[13] ;
  wire sel;
  wire [0:0]sq_wave_leds;
  wire [0:0]switches_sync;
  wire [3:0]\NLW_cycles0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_period_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_period_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_period_reg[3]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_period_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_period_reg[3]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_period_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_period_reg[7]_i_3_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    AUD_PWM_OBUF_inst_i_3
       (.I0(\code_reg[4]_1 ),
        .I1(DOADO[2]),
        .I2(\code_reg[2]_0 ),
        .I3(switches_sync),
        .I4(DOADO[1]),
        .O(\code_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hFCAC)) 
    AUD_PWM_OBUF_inst_i_6
       (.I0(DOADO[0]),
        .I1(\code_reg[2]_0 ),
        .I2(switches_sync),
        .I3(DOADO[3]),
        .O(sel));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_light_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_onehot_light_reg[1]_0 ),
        .Q(sq_wave_leds),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFAFFCFCC)) 
    \code[2]_i_1 
       (.I0(\code_reg[4]_1 ),
        .I1(Q[1]),
        .I2(\code_reg[4]_2 ),
        .I3(CO),
        .I4(\code_reg[2]_0 ),
        .O(\code[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h30330A00)) 
    \code[4]_i_1 
       (.I0(\code_reg[2]_0 ),
        .I1(Q[1]),
        .I2(\code_reg[4]_2 ),
        .I3(CO),
        .I4(\code_reg[4]_1 ),
        .O(\code[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \code_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[2]_i_1_n_0 ),
        .Q(\code_reg[2]_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \code_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[4]_i_1_n_0 ),
        .Q(\code_reg[4]_1 ),
        .R(\<const0> ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cycles0_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\cycles0_inferred__0/i__carry_n_0 ,\NLW_cycles0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \cycles0_inferred__0/i__carry__0 
       (.CI(\cycles0_inferred__0/i__carry_n_0 ),
        .CO(CO),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\<const0> ,i__carry__0_i_1_n_0}));
  (* \PinAttr:I0:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cycles[0]_i_1 
       (.I0(cycles_reg[0]),
        .O(p_0_in__4[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cycles[1]_i_1 
       (.I0(cycles_reg[0]),
        .I1(cycles_reg[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cycles[2]_i_1 
       (.I0(cycles_reg[2]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[1]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cycles[3]_i_1 
       (.I0(cycles_reg[3]),
        .I1(cycles_reg[1]),
        .I2(cycles_reg[0]),
        .I3(cycles_reg[2]),
        .O(p_0_in__4[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cycles[4]_i_1 
       (.I0(cycles_reg[4]),
        .I1(cycles_reg[2]),
        .I2(cycles_reg[0]),
        .I3(cycles_reg[1]),
        .I4(cycles_reg[3]),
        .O(p_0_in__4[4]));
  (* \PinAttr:I5:HOLD_DETOUR  = "155" *) 
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cycles[5]_i_1 
       (.I0(cycles_reg[5]),
        .I1(cycles_reg[4]),
        .I2(cycles_reg[2]),
        .I3(cycles_reg[0]),
        .I4(cycles_reg[1]),
        .I5(cycles_reg[3]),
        .O(\cycles[5]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \cycles[6]_i_1 
       (.I0(cycles_reg[6]),
        .I1(\cycles[7]_i_4_n_0 ),
        .I2(cycles_reg[5]),
        .O(p_0_in__4[6]));
  (* \PinAttr:I1:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \cycles[7]_i_3 
       (.I0(cycles_reg[7]),
        .I1(cycles_reg[5]),
        .I2(\cycles[7]_i_4_n_0 ),
        .I3(cycles_reg[6]),
        .O(p_0_in__4[7]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cycles[7]_i_4 
       (.I0(cycles_reg[3]),
        .I1(cycles_reg[1]),
        .I2(cycles_reg[0]),
        .I3(cycles_reg[2]),
        .I4(cycles_reg[4]),
        .O(\cycles[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(p_0_in__4[0]),
        .Q(cycles_reg[0]),
        .R(\cycles_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(p_0_in__4[1]),
        .Q(cycles_reg[1]),
        .R(\cycles_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(p_0_in__4[2]),
        .Q(cycles_reg[2]),
        .R(\cycles_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(p_0_in__4[3]),
        .Q(cycles_reg[3]),
        .R(\cycles_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(p_0_in__4[4]),
        .Q(cycles_reg[4]),
        .R(\cycles_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\cycles[5]_i_1_n_0 ),
        .Q(cycles_reg[5]),
        .R(\cycles_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(p_0_in__4[6]),
        .Q(cycles_reg[6]),
        .R(\cycles_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(p_0_in__4[7]),
        .Q(cycles_reg[7]),
        .R(\cycles_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(in5[13]),
        .I1(\period_reg_n_0_[13] ),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1
       (.I0(in5[10]),
        .I1(in5[11]),
        .I2(in5[12]),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h00009009)) 
    i__carry_i_2
       (.I0(in5[8]),
        .I1(cycles_reg[7]),
        .I2(cycles_reg[6]),
        .I3(in5[7]),
        .I4(in5[9]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(in5[6]),
        .I1(cycles_reg[5]),
        .I2(cycles_reg[3]),
        .I3(in5[4]),
        .I4(cycles_reg[4]),
        .I5(in5[5]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(in5[1]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[1]),
        .I3(in5[2]),
        .I4(cycles_reg[2]),
        .I5(in5[3]),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \period[0]_i_1 
       (.I0(in5[1]),
        .I1(in4[0]),
        .I2(Q[0]),
        .I3(sq_wave_leds),
        .I4(in5[2]),
        .O(p_1_in__0[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \period[10]_i_1 
       (.I0(in5[12]),
        .I1(in4[10]),
        .I2(in5[10]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in6[10]),
        .O(p_1_in__0[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \period[11]_i_1 
       (.I0(in5[13]),
        .I1(in4[11]),
        .I2(in5[11]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in6[11]),
        .O(p_1_in__0[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \period[11]_i_4 
       (.I0(in5[12]),
        .O(\period[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[11]_i_5 
       (.I0(in5[11]),
        .O(\period[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[11]_i_6 
       (.I0(in5[10]),
        .O(\period[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[11]_i_7 
       (.I0(in5[9]),
        .O(\period[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \period[12]_i_1 
       (.I0(\period_reg_n_0_[13] ),
        .I1(in6[12]),
        .I2(in5[12]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in4[12]),
        .O(p_1_in__0[12]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \period[13]_i_3 
       (.I0(in6[13]),
        .I1(in4[13]),
        .I2(Q[0]),
        .I3(sq_wave_leds),
        .I4(in5[13]),
        .O(p_1_in__0[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \period[13]_i_6 
       (.I0(\period_reg_n_0_[13] ),
        .O(\period[13]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[13]_i_7 
       (.I0(in5[13]),
        .O(\period[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \period[1]_i_1 
       (.I0(in5[3]),
        .I1(in4[1]),
        .I2(in5[1]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in6[1]),
        .O(p_1_in__0[1]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \period[2]_i_1 
       (.I0(in5[4]),
        .I1(in6[2]),
        .I2(in5[2]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in4[2]),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \period[3]_i_1 
       (.I0(in5[5]),
        .I1(in6[3]),
        .I2(in5[3]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in4[3]),
        .O(p_1_in__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \period[3]_i_4 
       (.I0(in5[4]),
        .O(\period[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[3]_i_5 
       (.I0(in5[2]),
        .O(\period[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[3]_i_6 
       (.I0(in5[3]),
        .O(\period[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[3]_i_7 
       (.I0(in5[2]),
        .O(\period[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \period[4]_i_1 
       (.I0(in5[6]),
        .I1(in6[4]),
        .I2(in5[4]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in4[4]),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \period[5]_i_1 
       (.I0(in5[7]),
        .I1(in6[5]),
        .I2(in5[5]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in4[5]),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \period[6]_i_1 
       (.I0(in5[8]),
        .I1(in6[6]),
        .I2(in5[6]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in4[6]),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \period[7]_i_1 
       (.I0(in5[9]),
        .I1(in4[7]),
        .I2(in5[7]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in6[7]),
        .O(p_1_in__0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \period[7]_i_4 
       (.I0(in5[8]),
        .O(\period[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[7]_i_5 
       (.I0(in5[7]),
        .O(\period[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[7]_i_6 
       (.I0(in5[6]),
        .O(\period[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period[7]_i_7 
       (.I0(in5[5]),
        .O(\period[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \period[8]_i_1 
       (.I0(in5[10]),
        .I1(in6[8]),
        .I2(in5[8]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in4[8]),
        .O(p_1_in__0[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \period[9]_i_1 
       (.I0(in5[11]),
        .I1(in4[9]),
        .I2(in5[9]),
        .I3(\period_reg[12]_0 ),
        .I4(sq_wave_leds),
        .I5(in6[9]),
        .O(p_1_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[0]),
        .Q(in5[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[10]),
        .Q(in5[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[11]),
        .Q(in5[12]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_reg[11]_i_2 
       (.CI(\period_reg[7]_i_2_n_0 ),
        .CO({\period_reg[11]_i_2_n_0 ,\NLW_period_reg[11]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(in5[12:9]),
        .O(in4[11:8]),
        .S({\period[11]_i_4_n_0 ,\period[11]_i_5_n_0 ,\period[11]_i_6_n_0 ,\period[11]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_reg[11]_i_3 
       (.CI(\period_reg[7]_i_3_n_0 ),
        .CO({\period_reg[11]_i_3_n_0 ,\NLW_period_reg[11]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in6[11:8]),
        .S(in5[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[12]),
        .Q(in5[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[13]),
        .Q(\period_reg_n_0_[13] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_reg[13]_i_4 
       (.CI(\period_reg[11]_i_3_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in6[13:12]),
        .S({\<const0> ,\<const0> ,\period_reg_n_0_[13] ,in5[13]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_reg[13]_i_5 
       (.CI(\period_reg[11]_i_2_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,in5[13]}),
        .O(in4[13:12]),
        .S({\<const0> ,\<const0> ,\period[13]_i_6_n_0 ,\period[13]_i_7_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \period_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[1]),
        .Q(in5[2]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[2]),
        .Q(in5[3]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \period_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[3]),
        .Q(in5[4]),
        .S(SR));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \period_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\period_reg[3]_i_2_n_0 ,\NLW_period_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({in5[4],\<const0> ,in5[2],\<const0> }),
        .O({in6[3:1],\NLW_period_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\period[3]_i_4_n_0 ,in5[3],\period[3]_i_5_n_0 ,in5[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \period_reg[3]_i_3 
       (.CI(\<const0> ),
        .CO({\period_reg[3]_i_3_n_0 ,\NLW_period_reg[3]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,in5[3:2],\<const0> }),
        .O(in4[3:0]),
        .S({in5[4],\period[3]_i_6_n_0 ,\period[3]_i_7_n_0 ,in5[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[4]),
        .Q(in5[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[5]),
        .Q(in5[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[6]),
        .Q(in5[7]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \period_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[7]),
        .Q(in5[8]),
        .S(SR));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_reg[7]_i_2 
       (.CI(\period_reg[3]_i_3_n_0 ),
        .CO({\period_reg[7]_i_2_n_0 ,\NLW_period_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(in5[8:5]),
        .O(in4[7:4]),
        .S({\period[7]_i_4_n_0 ,\period[7]_i_5_n_0 ,\period[7]_i_6_n_0 ,\period[7]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_reg[7]_i_3 
       (.CI(\period_reg[3]_i_2_n_0 ),
        .CO({\period_reg[7]_i_3_n_0 ,\NLW_period_reg[7]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in6[7:4]),
        .S(in5[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[8]),
        .Q(in5[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[9]),
        .Q(in5[10]),
        .R(SR));
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
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].q_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF[0]),
        .Q(\genblk1[0].q_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[0].q_reg_n_0_[0] ),
        .Q(synchronized_signals[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].q_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF[1]),
        .Q(\genblk1[1].q_reg ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].sync_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[1].q_reg ),
        .Q(synchronized_signals[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].q_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF[2]),
        .Q(\genblk1[2].q_reg ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].sync_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[2].q_reg ),
        .Q(synchronized_signals[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].q_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF[3]),
        .Q(\genblk1[3].q_reg ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].sync_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[3].q_reg ),
        .Q(synchronized_signals[3]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (switches_sync,
    AUD_SD_OBUF,
    \genblk1[0].sync_signal_reg[0]_0 ,
    AUD_PWM_OBUF,
    DI,
    sel,
    LEDS_OBUF,
    \genblk1[0].sync_signal_reg[0]_1 ,
    SWITCHES_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    Q,
    CO,
    AUD_PWM,
    AUD_PWM_0,
    DOADO,
    AUD_PWM_OBUF_inst_i_1_0,
    pwm0_carry__0_i_2,
    pwm0_carry__0,
    \LEDS[3] );
  output [0:0]switches_sync;
  output AUD_SD_OBUF;
  output [0:0]\genblk1[0].sync_signal_reg[0]_0 ;
  output AUD_PWM_OBUF;
  output [0:0]DI;
  output sel;
  output [2:0]LEDS_OBUF;
  output [0:0]\genblk1[0].sync_signal_reg[0]_1 ;
  input [1:0]SWITCHES_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]Q;
  input [0:0]CO;
  input AUD_PWM;
  input AUD_PWM_0;
  input [6:0]DOADO;
  input AUD_PWM_OBUF_inst_i_1_0;
  input pwm0_carry__0_i_2;
  input [1:0]pwm0_carry__0;
  input [2:0]\LEDS[3] ;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_PWM_0;
  wire AUD_PWM_OBUF;
  wire AUD_PWM_OBUF_inst_i_1_0;
  wire AUD_PWM_OBUF_inst_i_2_n_0;
  wire AUD_PWM_OBUF_inst_i_4_n_0;
  wire AUD_PWM_OBUF_inst_i_5_n_0;
  wire AUD_SD_OBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [6:0]DOADO;
  wire [2:0]\LEDS[3] ;
  wire [2:0]LEDS_OBUF;
  wire [0:0]Q;
  wire [1:0]SWITCHES_IBUF;
  wire \genblk1[0].q_reg_n_0_[0] ;
  wire [0:0]\genblk1[0].sync_signal_reg[0]_0 ;
  wire [0:0]\genblk1[0].sync_signal_reg[0]_1 ;
  wire \genblk1[1].q_reg_n_0_[1] ;
  wire [1:0]pwm0_carry__0;
  wire pwm0_carry__0_i_2;
  wire sel;
  wire [0:0]switches_sync;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    AUD_PWM_OBUF_inst_i_1
       (.I0(CO),
        .I1(AUD_PWM_OBUF_inst_i_2_n_0),
        .I2(AUD_PWM),
        .I3(AUD_PWM_OBUF_inst_i_4_n_0),
        .I4(AUD_PWM_OBUF_inst_i_5_n_0),
        .I5(AUD_PWM_0),
        .O(AUD_PWM_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    AUD_PWM_OBUF_inst_i_2
       (.I0(switches_sync),
        .I1(DOADO[1]),
        .I2(DOADO[0]),
        .I3(DOADO[3]),
        .I4(DOADO[4]),
        .O(AUD_PWM_OBUF_inst_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_4
       (.I0(DOADO[6]),
        .I1(switches_sync),
        .I2(AUD_PWM_OBUF_inst_i_1_0),
        .O(AUD_PWM_OBUF_inst_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_5
       (.I0(DOADO[2]),
        .I1(switches_sync),
        .I2(AUD_PWM_OBUF_inst_i_1_0),
        .O(AUD_PWM_OBUF_inst_i_5_n_0));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \LEDS_OBUF[1]_inst_i_1 
       (.I0(switches_sync),
        .I1(\LEDS[3] [0]),
        .O(LEDS_OBUF[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \LEDS_OBUF[2]_inst_i_1 
       (.I0(switches_sync),
        .I1(\LEDS[3] [1]),
        .O(LEDS_OBUF[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \LEDS_OBUF[3]_inst_i_1 
       (.I0(switches_sync),
        .I1(\LEDS[3] [2]),
        .O(LEDS_OBUF[2]));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].q_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SWITCHES_IBUF[0]),
        .Q(\genblk1[0].q_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[0].q_reg_n_0_[0] ),
        .Q(switches_sync),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].q_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SWITCHES_IBUF[1]),
        .Q(\genblk1[1].q_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].sync_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\genblk1[1].q_reg_n_0_[1] ),
        .Q(AUD_SD_OBUF),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    next_fcw0_carry__1_i_4
       (.I0(switches_sync),
        .I1(Q),
        .O(\genblk1[0].sync_signal_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    next_fcw0_carry_i_2
       (.I0(switches_sync),
        .I1(Q),
        .O(\genblk1[0].sync_signal_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    pwm0_carry__0_i_1
       (.I0(pwm0_carry__0_i_2),
        .I1(switches_sync),
        .I2(DOADO[5]),
        .I3(pwm0_carry__0[0]),
        .I4(pwm0_carry__0[1]),
        .I5(AUD_PWM_OBUF_inst_i_4_n_0),
        .O(DI));
  LUT3 #(
    .INIT(8'hB8)) 
    pwm0_carry__0_i_3
       (.I0(DOADO[5]),
        .I1(switches_sync),
        .I2(pwm0_carry__0_i_2),
        .O(sel));
endmodule

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) (* ECO_CHECKSUM = "b66d00a2" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
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

  wire \<const0> ;
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
  wire [5:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [1:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire bp_n_10;
  wire bp_n_11;
  wire bp_n_4;
  wire bp_n_5;
  wire bp_n_6;
  wire bp_n_8;
  wire bp_n_9;
  wire [3:0]buttons_pressed;
  wire dac_n_0;
  wire dac_n_10;
  wire dac_n_11;
  wire dac_n_12;
  wire dac_n_13;
  wire dac_n_4;
  wire dac_n_5;
  wire dac_n_6;
  wire dac_n_7;
  wire dac_n_8;
  wire dac_n_9;
  wire [22:0]fcw;
  wire [0:0]fsm_buttons;
  wire [3:1]fsm_leds;
  wire fsm_n_27;
  wire fsm_n_31;
  wire fsm_n_32;
  wire fsm_n_33;
  wire fsm_n_34;
  wire fsm_n_35;
  wire fsm_n_36;
  wire fsm_n_37;
  wire fsm_n_38;
  wire fsm_n_39;
  wire fsm_n_40;
  wire fsm_n_41;
  wire fsm_n_42;
  wire fsm_n_43;
  wire fsm_n_44;
  wire fsm_n_45;
  wire fsm_n_46;
  wire fsm_n_47;
  wire fsm_n_48;
  wire fsm_n_49;
  wire fsm_n_50;
  wire fsm_n_51;
  wire fsm_n_52;
  wire fsm_n_53;
  wire fsm_n_54;
  wire gen_n_0;
  wire gen_n_2;
  wire gen_n_3;
  wire gen_n_4;
  wire gen_n_5;
  wire [9:8]i_reg;
  wire [23:0]i_reg_0;
  wire [9:9]next_fcw;
  wire next_sample;
  wire [0:0]next_state;
  wire [7:0]sel__0;
  wire sel_n_10;
  wire sel_n_11;
  wire sel_n_12;
  wire sel_n_13;
  wire sel_n_14;
  wire sel_n_15;
  wire sel_n_6;
  wire sel_n_7;
  wire sel_n_8;
  wire sel_n_9;
  wire [0:0]sq_wave_leds;
  wire switch_sync_n_4;
  wire switch_sync_n_5;
  wire switch_sync_n_9;
  wire [0:0]switches_sync;

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
  GND GND
       (.G(\<const0> ));
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
       (.I(LEDS_OBUF[4]),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(LEDS_OBUF[5]),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF[0]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(SWITCHES_IBUF[1]));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(gen_n_0),
        .D(next_state),
        .DI(next_fcw),
        .E(bp_n_10),
        .\FSM_onehot_light_reg[1] (bp_n_4),
        .\FSM_sequential_curr_state_reg[0] ({LEDS_OBUF[4],LEDS_OBUF[5]}),
        .Q({buttons_pressed[3],buttons_pressed[1:0]}),
        .S(bp_n_9),
        .SR(bp_n_0),
        .\cycles_reg[0] (dac_n_4),
        .\edge_detect_pulse_reg[1] (bp_n_8),
        .\edge_detect_pulse_reg[3] (bp_n_5),
        .\edge_detect_pulse_reg[3]_0 (bp_n_6),
        .\edge_detect_pulse_reg[3]_1 (bp_n_11),
        .sq_wave_leds(sq_wave_leds),
        .switches_sync(switches_sync));
  dac dac
       (.ADDRARDADDR({dac_n_6,dac_n_7,dac_n_8,dac_n_9,dac_n_10,dac_n_11,dac_n_12,dac_n_13}),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(dac_n_0),
        .DI(switch_sync_n_4),
        .DOADO({sel_n_6,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .Q(i_reg),
        .\edge_detect_pulse_reg[3] (dac_n_5),
        .\i_reg[0]_0 (buttons_pressed[3]),
        .\i_reg[5]_0 (dac_n_4),
        .next_sample(next_sample),
        .pwm0_carry_0(gen_n_4),
        .pwm0_carry__0_0(gen_n_3),
        .pwm0_carry__0_1(switch_sync_n_5),
        .sel__0(sel__0),
        .switches_sync(switches_sync));
  fsm fsm
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(next_state),
        .DI(next_fcw),
        .LEDS_OBUF({LEDS_OBUF[5:4],LEDS_OBUF[0]}),
        .O({fsm_n_31,fsm_n_32,fsm_n_33,fsm_n_34}),
        .Q({buttons_pressed[3],buttons_pressed[1:0]}),
        .S(bp_n_9),
        .\fcw_reg[11]_0 ({fsm_n_39,fsm_n_40,fsm_n_41,fsm_n_42}),
        .\fcw_reg[15]_0 ({fsm_n_43,fsm_n_44,fsm_n_45,fsm_n_46}),
        .\fcw_reg[16]_0 (bp_n_6),
        .\fcw_reg[17]_0 (fsm_buttons),
        .\fcw_reg[19]_0 ({fsm_n_47,fsm_n_48,fsm_n_49,fsm_n_50}),
        .\fcw_reg[22]_0 (fcw),
        .\fcw_reg[22]_1 ({fsm_n_51,fsm_n_52,fsm_n_53,fsm_n_54}),
        .\fcw_reg[23]_0 (fsm_n_27),
        .\fcw_reg[5]_0 (switch_sync_n_9),
        .\fcw_reg[7]_0 ({fsm_n_35,fsm_n_36,fsm_n_37,fsm_n_38}),
        .i_reg(i_reg_0),
        .\leds_reg[3]_0 (fsm_leds),
        .sq_wave_leds(sq_wave_leds),
        .switches_sync(switches_sync));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(gen_n_0),
        .DOADO({sel_n_7,sel_n_10,sel_n_12,sel_n_13}),
        .E(bp_n_10),
        .\FSM_onehot_light_reg[1]_0 (bp_n_4),
        .Q({buttons_pressed[3],buttons_pressed[1]}),
        .SR(bp_n_0),
        .\code_reg[2]_0 (gen_n_4),
        .\code_reg[4]_0 (gen_n_2),
        .\code_reg[4]_1 (gen_n_3),
        .\code_reg[4]_2 (dac_n_4),
        .\cycles_reg[0]_0 (bp_n_5),
        .next_sample(next_sample),
        .\period_reg[12]_0 (bp_n_8),
        .sel(gen_n_5),
        .sq_wave_leds(sq_wave_leds),
        .switches_sync(switches_sync));
  nco nco
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .O({fsm_n_31,fsm_n_32,fsm_n_33,fsm_n_34}),
        .i0_carry__4_0(fcw),
        .i_reg(i_reg_0),
        .\i_reg[0]_0 (dac_n_5),
        .\i_reg[11]_0 ({fsm_n_39,fsm_n_40,fsm_n_41,fsm_n_42}),
        .\i_reg[15]_0 ({fsm_n_43,fsm_n_44,fsm_n_45,fsm_n_46}),
        .\i_reg[19]_0 ({fsm_n_47,fsm_n_48,fsm_n_49,fsm_n_50}),
        .\i_reg[23]_0 ({fsm_n_51,fsm_n_52,fsm_n_53,fsm_n_54}),
        .\i_reg[7]_0 ({fsm_n_35,fsm_n_36,fsm_n_37,fsm_n_38}),
        .next_sample(next_sample),
        .sel(fsm_n_27),
        .sel__0(sel__0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2560" *) 
  (* RTL_RAM_NAME = "" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h02B802AC02A002940288027C027002630257024B023E023202250219020C0200),
    .INIT_01(256'h03610357034E0344033A03300326031C0311030702FC02F102E602DA02CF02C3),
    .INIT_02(256'h03D403CE03C903C303BD03B703B003A903A2039B0393038B0383037B0372036A),
    .INIT_03(256'h03FF03FF03FE03FD03FC03FA03F803F603F303F003ED03E903E603E203DD03D9),
    .INIT_04(256'h03DD03E203E603E903ED03F003F303F603F803FA03FC03FD03FE03FF03FF03FF),
    .INIT_05(256'h0372037B0383038B0393039B03A203A903B003B703BD03C303C903CE03D403D9),
    .INIT_06(256'h02CF02DA02E602F102FC03070311031C03260330033A0344034E03570361036A),
    .INIT_07(256'h020C021902250232023E024B025702630270027C0288029402A002AC02B802C3),
    .INIT_08(256'h01470153015F016B01770183018F019C01A801B401C101CD01DA01E601F30200),
    .INIT_09(256'h009E00A800B100BB00C500CF00D900E300EE00F80103010E011901250130013C),
    .INIT_0A(256'h002B00310036003C00420048004F0056005D0064006C0074007C0084008D0095),
    .INIT_0B(256'h00000000000100020003000500070009000C000F001200160019001D00220026),
    .INIT_0C(256'h0022001D001900160012000F000C000900070005000300020001000000000000),
    .INIT_0D(256'h008D0084007C0074006C0064005D0056004F00480042003C00360031002B0026),
    .INIT_0E(256'h013001250119010E010300F800EE00E300D900CF00C500BB00B100A8009E0095),
    .INIT_0F(256'h01F301E601DA01CD01C101B401A8019C018F01830177016B015F01530147013C),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    sel
       (.ADDRARDADDR({\<const0> ,\<const0> ,dac_n_6,dac_n_7,dac_n_8,dac_n_9,dac_n_10,dac_n_11,dac_n_12,dac_n_13,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .ENARDEN(bp_n_11),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const0> ,\<const0> }),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  synchronizer__parameterized0 switch_sync
       (.AUD_PWM(gen_n_2),
        .AUD_PWM_0(gen_n_5),
        .AUD_PWM_OBUF(AUD_PWM_OBUF),
        .AUD_PWM_OBUF_inst_i_1_0(gen_n_3),
        .AUD_SD_OBUF(AUD_SD_OBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(dac_n_0),
        .DI(switch_sync_n_4),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_11,sel_n_14,sel_n_15}),
        .\LEDS[3] (fsm_leds),
        .LEDS_OBUF(LEDS_OBUF[3:1]),
        .Q(buttons_pressed[0]),
        .SWITCHES_IBUF(SWITCHES_IBUF),
        .\genblk1[0].sync_signal_reg[0]_0 (fsm_buttons),
        .\genblk1[0].sync_signal_reg[0]_1 (switch_sync_n_9),
        .pwm0_carry__0(i_reg),
        .pwm0_carry__0_i_2(gen_n_4),
        .sel(switch_sync_n_5),
        .switches_sync(switches_sync));
endmodule
