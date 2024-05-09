// -------------------------------------------------------------
// 
// File Name: D:\B01-Study\MATLAB_Projects\Projects\Naive\codegen\Naive\hdlsrc\Naive_fixpt.v
// Created: 2024-05-09 14:43:44
// 
// Generated by MATLAB 23.2, MATLAB Coder 23.2 and HDL Coder 23.2
// 
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Design base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// y_re                          ce_out        1
// y_im                          ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Naive_fixpt
// Source Path: Naive_fixpt
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Naive_fixpt
          (clk,
           reset,
           clk_enable,
           x_in_re,
           x_in_im,
           coef_re_0,
           coef_re_1,
           coef_re_2,
           coef_re_3,
           coef_re_4,
           coef_re_5,
           coef_im_0,
           coef_im_1,
           coef_im_2,
           coef_im_3,
           coef_im_4,
           coef_im_5,
           ce_out,
           y_re,
           y_im);


  input   clk;
  input   reset;
  input   clk_enable;
  input   signed [13:0] x_in_re;  // sfix14_En14
  input   signed [13:0] x_in_im;  // sfix14_En14
  input   signed [13:0] coef_re_0;  // sfix14_En4
  input   signed [13:0] coef_re_1;  // sfix14_En4
  input   signed [13:0] coef_re_2;  // sfix14_En4
  input   signed [13:0] coef_re_3;  // sfix14_En4
  input   signed [13:0] coef_re_4;  // sfix14_En4
  input   signed [13:0] coef_re_5;  // sfix14_En4
  input   signed [13:0] coef_im_0;  // sfix14_En4
  input   signed [13:0] coef_im_1;  // sfix14_En4
  input   signed [13:0] coef_im_2;  // sfix14_En4
  input   signed [13:0] coef_im_3;  // sfix14_En4
  input   signed [13:0] coef_im_4;  // sfix14_En4
  input   signed [13:0] coef_im_5;  // sfix14_En4
  output  ce_out;
  output  signed [13:0] y_re;  // sfix14_En11
  output  signed [13:0] y_im;  // sfix14_En11


  wire enb;
  wire signed [13:0] coef_re [0:2] [0:1];  // sfix14_En4 [3x2]
  wire signed [13:0] coef_im [0:2] [0:1];  // sfix14_En4 [3x2]
  reg signed [13:0] c3_coef_re [0:5];  // sfix14_En4 [6]
  reg signed [13:0] c3_coef_im [0:5];  // sfix14_En4 [6]
  wire [13:0] a12_re;  // ufix14_En14
  wire [13:0] a12_im;  // ufix14_En14
  wire [13:0] ar;  // ufix14_En14
  wire signed [13:0] x_value_1_re;  // sfix14_En14
  wire signed [13:0] x_value_1_im;  // sfix14_En14
  wire signed [13:0] br;  // sfix14_En14
  wire [13:0] ai;  // ufix14_En14
  wire signed [13:0] bi;  // sfix14_En14
  wire signed [27:0] pr1;  // sfix28_En28
  wire signed [14:0] p47pr1_cast;  // sfix15_En14
  wire signed [28:0] p47pr1_mul_temp;  // sfix29_En28
  wire signed [28:0] pr1in;  // sfix29_En28
  wire signed [27:0] pr2;  // sfix28_En28
  wire signed [14:0] p48pr2_cast;  // sfix15_En14
  wire signed [28:0] p48pr2_mul_temp;  // sfix29_En28
  wire signed [28:0] pr2in;  // sfix29_En28
  wire signed [28:0] pre;  // sfix29_En28
  wire signed [27:0] pi1;  // sfix28_En28
  wire signed [14:0] p52pi1_cast;  // sfix15_En14
  wire signed [28:0] p52pi1_mul_temp;  // sfix29_En28
  wire signed [28:0] pi1in;  // sfix29_En28
  wire signed [27:0] pi2;  // sfix28_En28
  wire signed [14:0] p53pi2_cast;  // sfix15_En14
  wire signed [28:0] p53pi2_mul_temp;  // sfix29_En28
  wire signed [28:0] pi2in;  // sfix29_En28
  wire signed [28:0] pim;  // sfix29_En28
  wire signed [13:0] m1_re;  // sfix14_En10
  wire signed [13:0] m1_im;  // sfix14_En10
  reg signed [13:0] c5_coef_re [0:5];  // sfix14_En4 [6]
  reg signed [13:0] c5_coef_im [0:5];  // sfix14_En4 [6]
  wire signed [13:0] a22_re;  // sfix14_En7
  wire signed [13:0] a22_im;  // sfix14_En7
  wire signed [13:0] ar_1;  // sfix14_En7
  wire signed [13:0] br_1;  // sfix14_En14
  wire signed [13:0] ai_1;  // sfix14_En7
  wire signed [13:0] bi_1;  // sfix14_En14
  wire signed [27:0] pr1_1;  // sfix28_En21
  wire signed [28:0] pr1in_1;  // sfix29_En21
  wire signed [27:0] pr2_1;  // sfix28_En21
  wire signed [28:0] pr2in_1;  // sfix29_En21
  wire signed [28:0] pre_1;  // sfix29_En21
  wire signed [27:0] pi1_1;  // sfix28_En21
  wire signed [28:0] pi1in_1;  // sfix29_En21
  wire signed [27:0] pi2_1;  // sfix28_En21
  wire signed [28:0] pi2in_1;  // sfix29_En21
  wire signed [28:0] pim_1;  // sfix29_En21
  wire signed [28:0] c_re;  // sfix29_En21
  wire signed [28:0] c_im;  // sfix29_En21
  wire signed [28:0] ar_2;  // sfix29_En21
  wire signed [13:0] ar_3;  // sfix14_En14
  wire signed [13:0] x_conj_1_re;  // sfix14_En14
  wire signed [13:0] x_conj_1_im;  // sfix14_En14
  wire signed [14:0] p11x_conj_1_cast;  // sfix15_En14
  wire signed [14:0] p11x_conj_1_cast_1;  // sfix15_En14
  wire signed [13:0] br_2;  // sfix14_En14
  wire signed [13:0] ai_2;  // sfix14_En14
  wire signed [13:0] bi_2;  // sfix14_En14
  wire signed [27:0] pr1_2;  // sfix28_En28
  wire signed [28:0] pr1in_2;  // sfix29_En28
  wire signed [27:0] pr2_2;  // sfix28_En28
  wire signed [28:0] pr2in_2;  // sfix29_En28
  wire signed [28:0] pre_2;  // sfix29_En28
  wire signed [27:0] pi1_2;  // sfix28_En28
  wire signed [28:0] pi1in_2;  // sfix29_En28
  wire signed [27:0] pi2_2;  // sfix28_En28
  wire signed [28:0] pi2in_2;  // sfix29_En28
  wire signed [28:0] pim_2;  // sfix29_En28
  wire [13:0] x_module_1_re;  // ufix14_En14
  wire [13:0] x_module_1_im;  // ufix14_En14
  wire [13:0] br_3;  // ufix14_En14
  wire signed [28:0] ai_3;  // sfix29_En21
  wire [13:0] bi_3;  // ufix14_En14
  wire signed [42:0] pr1_3;  // sfix43_En35
  wire signed [14:0] p77pr1_cast;  // sfix15_En14
  wire signed [43:0] p77pr1_mul_temp;  // sfix44_En35
  wire signed [43:0] pr1in_3;  // sfix44_En35
  wire signed [42:0] pr2_3;  // sfix43_En35
  wire signed [14:0] p78pr2_cast;  // sfix15_En14
  wire signed [43:0] p78pr2_mul_temp;  // sfix44_En35
  wire signed [43:0] pr2in_3;  // sfix44_En35
  wire signed [43:0] pre_3;  // sfix44_En35
  wire signed [42:0] pi1_3;  // sfix43_En35
  wire signed [14:0] p82pi1_cast;  // sfix15_En14
  wire signed [43:0] p82pi1_mul_temp;  // sfix44_En35
  wire signed [43:0] pi1in_3;  // sfix44_En35
  wire signed [42:0] pi2_3;  // sfix43_En35
  wire signed [14:0] p83pi2_cast;  // sfix15_En14
  wire signed [43:0] p83pi2_mul_temp;  // sfix44_En35
  wire signed [43:0] pi2in_3;  // sfix44_En35
  wire signed [43:0] pim_3;  // sfix44_En35
  wire signed [13:0] m2_re;  // sfix14_En10
  wire signed [13:0] m2_im;  // sfix14_En10
  reg signed [13:0] c7_coef_re [0:5];  // sfix14_En4 [6]
  reg signed [13:0] c7_coef_im [0:5];  // sfix14_En4 [6]
  wire [13:0] a32_re;  // ufix14_En6
  wire [13:0] a32_im;  // ufix14_En6
  wire [13:0] ar_4;  // ufix14_En6
  wire signed [13:0] br_4;  // sfix14_En14
  wire [13:0] ai_4;  // ufix14_En6
  wire signed [13:0] bi_4;  // sfix14_En14
  wire signed [27:0] pr1_4;  // sfix28_En20
  wire signed [14:0] p92pr1_cast;  // sfix15_En6
  wire signed [28:0] p92pr1_mul_temp;  // sfix29_En20
  wire signed [28:0] pr1in_4;  // sfix29_En20
  wire signed [27:0] pr2_4;  // sfix28_En20
  wire signed [14:0] p93pr2_cast;  // sfix15_En6
  wire signed [28:0] p93pr2_mul_temp;  // sfix29_En20
  wire signed [28:0] pr2in_4;  // sfix29_En20
  wire signed [28:0] pre_4;  // sfix29_En20
  wire signed [27:0] pi1_4;  // sfix28_En20
  wire signed [14:0] p97pi1_cast;  // sfix15_En6
  wire signed [28:0] p97pi1_mul_temp;  // sfix29_En20
  wire signed [28:0] pi1in_4;  // sfix29_En20
  wire signed [27:0] pi2_4;  // sfix28_En20
  wire signed [14:0] p98pi2_cast;  // sfix15_En6
  wire signed [28:0] p98pi2_mul_temp;  // sfix29_En20
  wire signed [28:0] pi2in_4;  // sfix29_En20
  wire signed [28:0] pim_4;  // sfix29_En20
  wire signed [28:0] c_re_1;  // sfix29_En20
  wire signed [28:0] c_im_1;  // sfix29_En20
  wire signed [28:0] ar_5;  // sfix29_En20
  wire [13:0] ar_6;  // ufix14_En14
  wire [13:0] br_5;  // ufix14_En14
  wire [13:0] ai_5;  // ufix14_En14
  wire [13:0] bi_5;  // ufix14_En14
  wire [27:0] pr1_5;  // ufix28_En28
  wire [28:0] pr1in_5;  // ufix29_En28
  wire [27:0] pr2_5;  // ufix28_En28
  wire [28:0] pr2in_5;  // ufix29_En28
  wire [28:0] pre_5;  // ufix29_En28
  wire [27:0] pi1_5;  // ufix28_En28
  wire [28:0] pi1in_5;  // ufix29_En28
  wire [27:0] pi2_5;  // ufix28_En28
  wire [28:0] pi2in_5;  // ufix29_En28
  wire [28:0] pim_5;  // ufix29_En28
  wire [28:0] y_re_1;  // ufix29_En28
  wire [28:0] y_im_1;  // ufix29_En28
  wire [28:0] y_re_2;  // ufix29_En28
  wire [28:0] y_im_2;  // ufix29_En28
  wire [28:0] br_6;  // ufix29_En28
  wire signed [28:0] ai_6;  // sfix29_En20
  wire [28:0] bi_6;  // ufix29_En28
  wire signed [57:0] pr1_6;  // sfix58_En48
  wire signed [29:0] p123pr1_cast;  // sfix30_En28
  wire signed [58:0] p123pr1_mul_temp;  // sfix59_En48
  wire signed [58:0] pr1in_6;  // sfix59_En48
  wire signed [57:0] pr2_6;  // sfix58_En48
  wire signed [29:0] p124pr2_cast;  // sfix30_En28
  wire signed [58:0] p124pr2_mul_temp;  // sfix59_En48
  wire signed [58:0] pr2in_6;  // sfix59_En48
  wire signed [58:0] pre_6;  // sfix59_En48
  wire signed [57:0] pi1_6;  // sfix58_En48
  wire signed [29:0] p128pi1_cast;  // sfix30_En28
  wire signed [58:0] p128pi1_mul_temp;  // sfix59_En48
  wire signed [58:0] pi1in_6;  // sfix59_En48
  wire signed [57:0] pi2_6;  // sfix58_En48
  wire signed [29:0] p129pi2_cast;  // sfix30_En28
  wire signed [58:0] p129pi2_mul_temp;  // sfix59_En48
  wire signed [58:0] pi2in_6;  // sfix59_En48
  wire signed [58:0] pim_6;  // sfix59_En48
  wire signed [13:0] m3_re;  // sfix14_En10
  wire signed [13:0] m3_im;  // sfix14_En10
  reg signed [13:0] c2_coef_re [0:5];  // sfix14_En4 [6]
  reg signed [13:0] c2_coef_im [0:5];  // sfix14_En4 [6]
  wire signed [13:0] a11_re;  // sfix14_En9
  wire signed [13:0] a11_im;  // sfix14_En9
  wire signed [13:0] ar_7;  // sfix14_En9
  reg signed [13:0] ud1_re;  // sfix14_En14
  reg signed [13:0] ud1_im;  // sfix14_En14
  wire signed [13:0] x_value_2_re;  // sfix14_En14
  wire signed [13:0] x_value_2_im;  // sfix14_En14
  wire signed [13:0] br_7;  // sfix14_En14
  wire signed [13:0] ai_7;  // sfix14_En9
  wire signed [13:0] bi_7;  // sfix14_En14
  wire signed [27:0] pr1_7;  // sfix28_En23
  wire signed [28:0] pr1in_7;  // sfix29_En23
  wire signed [27:0] pr2_7;  // sfix28_En23
  wire signed [28:0] pr2in_7;  // sfix29_En23
  wire signed [28:0] pre_7;  // sfix29_En23
  wire signed [27:0] pi1_7;  // sfix28_En23
  wire signed [28:0] pi1in_7;  // sfix29_En23
  wire signed [27:0] pi2_7;  // sfix28_En23
  wire signed [28:0] pi2in_7;  // sfix29_En23
  wire signed [28:0] pim_7;  // sfix29_En23
  wire signed [13:0] m4_re;  // sfix14_En10
  wire signed [13:0] m4_im;  // sfix14_En10
  reg signed [13:0] c4_coef_re [0:5];  // sfix14_En4 [6]
  reg signed [13:0] c4_coef_im [0:5];  // sfix14_En4 [6]
  wire signed [13:0] a21_re;  // sfix14_En6
  wire signed [13:0] a21_im;  // sfix14_En6
  wire signed [13:0] ar_8;  // sfix14_En6
  wire signed [13:0] br_8;  // sfix14_En14
  wire signed [13:0] ai_8;  // sfix14_En6
  wire signed [13:0] bi_8;  // sfix14_En14
  wire signed [27:0] pr1_8;  // sfix28_En20
  wire signed [28:0] pr1in_8;  // sfix29_En20
  wire signed [27:0] pr2_8;  // sfix28_En20
  wire signed [28:0] pr2in_8;  // sfix29_En20
  wire signed [28:0] pre_8;  // sfix29_En20
  wire signed [27:0] pi1_8;  // sfix28_En20
  wire signed [28:0] pi1in_8;  // sfix29_En20
  wire signed [27:0] pi2_8;  // sfix28_En20
  wire signed [28:0] pi2in_8;  // sfix29_En20
  wire signed [28:0] pim_8;  // sfix29_En20
  wire signed [28:0] c_re_2;  // sfix29_En20
  wire signed [28:0] c_im_2;  // sfix29_En20
  wire signed [28:0] ar_9;  // sfix29_En20
  wire signed [13:0] ar_10;  // sfix14_En14
  wire signed [13:0] x_conj_2_re;  // sfix14_En14
  wire signed [13:0] x_conj_2_im;  // sfix14_En14
  wire signed [14:0] p27x_conj_2_cast;  // sfix15_En14
  wire signed [14:0] p27x_conj_2_cast_1;  // sfix15_En14
  wire signed [13:0] br_9;  // sfix14_En14
  wire signed [13:0] ai_9;  // sfix14_En14
  wire signed [13:0] bi_9;  // sfix14_En14
  wire signed [27:0] pr1_9;  // sfix28_En28
  wire signed [28:0] pr1in_9;  // sfix29_En28
  wire signed [27:0] pr2_9;  // sfix28_En28
  wire signed [28:0] pr2in_9;  // sfix29_En28
  wire signed [28:0] pre_9;  // sfix29_En28
  wire signed [27:0] pi1_9;  // sfix28_En28
  wire signed [28:0] pi1in_9;  // sfix29_En28
  wire signed [27:0] pi2_9;  // sfix28_En28
  wire signed [28:0] pi2in_9;  // sfix29_En28
  wire signed [28:0] pim_9;  // sfix29_En28
  wire [13:0] x_module_2_re;  // ufix14_En14
  wire [13:0] x_module_2_im;  // ufix14_En14
  wire [13:0] br_10;  // ufix14_En14
  wire signed [28:0] ai_10;  // sfix29_En20
  wire [13:0] bi_10;  // ufix14_En14
  wire signed [42:0] pr1_10;  // sfix43_En34
  wire signed [14:0] p168pr1_cast;  // sfix15_En14
  wire signed [43:0] p168pr1_mul_temp;  // sfix44_En34
  wire signed [43:0] pr1in_10;  // sfix44_En34
  wire signed [42:0] pr2_10;  // sfix43_En34
  wire signed [14:0] p169pr2_cast;  // sfix15_En14
  wire signed [43:0] p169pr2_mul_temp;  // sfix44_En34
  wire signed [43:0] pr2in_10;  // sfix44_En34
  wire signed [43:0] pre_10;  // sfix44_En34
  wire signed [42:0] pi1_10;  // sfix43_En34
  wire signed [14:0] p173pi1_cast;  // sfix15_En14
  wire signed [43:0] p173pi1_mul_temp;  // sfix44_En34
  wire signed [43:0] pi1in_10;  // sfix44_En34
  wire signed [42:0] pi2_10;  // sfix43_En34
  wire signed [14:0] p174pi2_cast;  // sfix15_En14
  wire signed [43:0] p174pi2_mul_temp;  // sfix44_En34
  wire signed [43:0] pi2in_10;  // sfix44_En34
  wire signed [43:0] pim_10;  // sfix44_En34
  wire signed [13:0] m5_re;  // sfix14_En10
  wire signed [13:0] m5_im;  // sfix14_En10
  reg signed [13:0] c6_coef_re [0:5];  // sfix14_En4 [6]
  reg signed [13:0] c6_coef_im [0:5];  // sfix14_En4 [6]
  wire [13:0] a31_re;  // ufix14_En5
  wire [13:0] a31_im;  // ufix14_En5
  wire [13:0] ar_11;  // ufix14_En5
  wire signed [13:0] br_11;  // sfix14_En14
  wire [13:0] ai_11;  // ufix14_En5
  wire signed [13:0] bi_11;  // sfix14_En14
  wire signed [27:0] pr1_11;  // sfix28_En19
  wire signed [14:0] p183pr1_cast;  // sfix15_En5
  wire signed [28:0] p183pr1_mul_temp;  // sfix29_En19
  wire signed [28:0] pr1in_11;  // sfix29_En19
  wire signed [27:0] pr2_11;  // sfix28_En19
  wire signed [14:0] p184pr2_cast;  // sfix15_En5
  wire signed [28:0] p184pr2_mul_temp;  // sfix29_En19
  wire signed [28:0] pr2in_11;  // sfix29_En19
  wire signed [28:0] pre_11;  // sfix29_En19
  wire signed [27:0] pi1_11;  // sfix28_En19
  wire signed [14:0] p188pi1_cast;  // sfix15_En5
  wire signed [28:0] p188pi1_mul_temp;  // sfix29_En19
  wire signed [28:0] pi1in_11;  // sfix29_En19
  wire signed [27:0] pi2_11;  // sfix28_En19
  wire signed [14:0] p189pi2_cast;  // sfix15_En5
  wire signed [28:0] p189pi2_mul_temp;  // sfix29_En19
  wire signed [28:0] pi2in_11;  // sfix29_En19
  wire signed [28:0] pim_11;  // sfix29_En19
  wire signed [28:0] c_re_3;  // sfix29_En19
  wire signed [28:0] c_im_3;  // sfix29_En19
  wire signed [28:0] ar_12;  // sfix29_En19
  wire [13:0] ar_13;  // ufix14_En14
  wire [13:0] br_12;  // ufix14_En14
  wire [13:0] ai_12;  // ufix14_En14
  wire [13:0] bi_12;  // ufix14_En14
  wire [27:0] pr1_12;  // ufix28_En28
  wire [28:0] pr1in_12;  // ufix29_En28
  wire [27:0] pr2_12;  // ufix28_En28
  wire [28:0] pr2in_12;  // ufix29_En28
  wire [28:0] pre_12;  // ufix29_En28
  wire [27:0] pi1_12;  // ufix28_En28
  wire [28:0] pi1in_12;  // ufix29_En28
  wire [27:0] pi2_12;  // ufix28_En28
  wire [28:0] pi2in_12;  // ufix29_En28
  wire [28:0] pim_12;  // ufix29_En28
  wire [28:0] y_re_3;  // ufix29_En28
  wire [28:0] y_im_3;  // ufix29_En28
  wire [28:0] y_re_4;  // ufix29_En28
  wire [28:0] y_im_4;  // ufix29_En28
  wire [28:0] br_13;  // ufix29_En28
  wire signed [28:0] ai_13;  // sfix29_En19
  wire [28:0] bi_13;  // ufix29_En28
  wire signed [57:0] pr1_13;  // sfix58_En47
  wire signed [29:0] p214pr1_cast;  // sfix30_En28
  wire signed [58:0] p214pr1_mul_temp;  // sfix59_En47
  wire signed [58:0] pr1in_13;  // sfix59_En47
  wire signed [57:0] pr2_13;  // sfix58_En47
  wire signed [29:0] p215pr2_cast;  // sfix30_En28
  wire signed [58:0] p215pr2_mul_temp;  // sfix59_En47
  wire signed [58:0] pr2in_13;  // sfix59_En47
  wire signed [58:0] pre_13;  // sfix59_En47
  wire signed [57:0] pi1_13;  // sfix58_En47
  wire signed [29:0] p219pi1_cast;  // sfix30_En28
  wire signed [58:0] p219pi1_mul_temp;  // sfix59_En47
  wire signed [58:0] pi1in_13;  // sfix59_En47
  wire signed [57:0] pi2_13;  // sfix58_En47
  wire signed [29:0] p220pi2_cast;  // sfix30_En28
  wire signed [58:0] p220pi2_mul_temp;  // sfix59_En47
  wire signed [58:0] pi2in_13;  // sfix59_En47
  wire signed [58:0] pim_13;  // sfix59_En47
  wire signed [13:0] m6_re;  // sfix14_En10
  wire signed [13:0] m6_im;  // sfix14_En10
  wire signed [14:0] p225y_add_cast;  // sfix15_En10
  wire signed [14:0] p225y_add_cast_1;  // sfix15_En10
  wire signed [14:0] p225y_add_temp;  // sfix15_En10
  wire signed [15:0] p225y_add_cast_2;  // sfix16_En10
  wire signed [15:0] p225y_add_cast_3;  // sfix16_En10
  wire signed [15:0] p225y_add_temp_1;  // sfix16_En10
  wire signed [16:0] p225y_add_cast_4;  // sfix17_En10
  wire signed [16:0] p225y_add_cast_5;  // sfix17_En10
  wire signed [16:0] p225y_add_temp_2;  // sfix17_En10
  wire signed [17:0] p225y_add_cast_6;  // sfix18_En10
  wire signed [17:0] p225y_add_cast_7;  // sfix18_En10
  wire signed [17:0] p225y_add_temp_3;  // sfix18_En10
  wire signed [18:0] p225y_add_cast_8;  // sfix19_En10
  wire signed [18:0] p225y_add_cast_9;  // sfix19_En10
  wire signed [18:0] p225y_add_temp_4;  // sfix19_En10
  wire signed [14:0] p225y_add_cast_10;  // sfix15_En10
  wire signed [14:0] p225y_add_cast_11;  // sfix15_En10
  wire signed [14:0] p225y_add_temp_5;  // sfix15_En10
  wire signed [15:0] p225y_add_cast_12;  // sfix16_En10
  wire signed [15:0] p225y_add_cast_13;  // sfix16_En10
  wire signed [15:0] p225y_add_temp_6;  // sfix16_En10
  wire signed [16:0] p225y_add_cast_14;  // sfix17_En10
  wire signed [16:0] p225y_add_cast_15;  // sfix17_En10
  wire signed [16:0] p225y_add_temp_7;  // sfix17_En10
  wire signed [17:0] p225y_add_cast_16;  // sfix18_En10
  wire signed [17:0] p225y_add_cast_17;  // sfix18_En10
  wire signed [17:0] p225y_add_temp_8;  // sfix18_En10
  wire signed [18:0] p225y_add_cast_18;  // sfix19_En10
  wire signed [18:0] p225y_add_cast_19;  // sfix19_En10
  wire signed [18:0] p225y_add_temp_9;  // sfix19_En10


  assign coef_re[0][0] = coef_re_0;
  assign coef_re[1][0] = coef_re_1;
  assign coef_re[2][0] = coef_re_2;
  assign coef_re[0][1] = coef_re_3;
  assign coef_re[1][1] = coef_re_4;
  assign coef_re[2][1] = coef_re_5;

  assign coef_im[0][0] = coef_im_0;
  assign coef_im[1][0] = coef_im_1;
  assign coef_im[2][0] = coef_im_2;
  assign coef_im[0][1] = coef_im_3;
  assign coef_im[1][1] = coef_im_4;
  assign coef_im[2][1] = coef_im_5;

  always @* begin
    c3_coef_re[0] = coef_re[0][0];
    c3_coef_im[0] = coef_im[0][0];
    c3_coef_re[1] = coef_re[1][0];
    c3_coef_im[1] = coef_im[1][0];
    c3_coef_re[2] = coef_re[2][0];
    c3_coef_im[2] = coef_im[2][0];
    c3_coef_re[3] = coef_re[0][1];
    c3_coef_im[3] = coef_im[0][1];
    c3_coef_re[4] = coef_re[1][1];
    c3_coef_im[4] = coef_im[1][1];
    c3_coef_re[5] = coef_re[2][1];
    c3_coef_im[5] = coef_im[2][1];
  end



  assign a12_re = {c3_coef_re[3][3:0], 10'b0000000000};
  assign a12_im = {c3_coef_im[3][3:0], 10'b0000000000};



  // nonlinear part
  assign ar = a12_re;



  // 更新延迟线
  // 计算输出值
  // 临时变量，用于计算当前输入值的输出
  assign x_value_1_re = x_in_re;
  assign x_value_1_im = x_in_im;



  assign br = x_value_1_re;



  assign ai = a12_im;



  assign bi = x_value_1_im;



  assign p47pr1_cast = {1'b0, ar};
  assign p47pr1_mul_temp = p47pr1_cast * br;
  assign pr1 = p47pr1_mul_temp[27:0];



  assign pr1in = {pr1[27], pr1};



  assign p48pr2_cast = {1'b0, ai};
  assign p48pr2_mul_temp = p48pr2_cast * bi;
  assign pr2 = p48pr2_mul_temp[27:0];



  assign pr2in = {pr2[27], pr2};



  assign pre = pr1in - pr2in;



  assign p52pi1_cast = {1'b0, ar};
  assign p52pi1_mul_temp = p52pi1_cast * bi;
  assign pi1 = p52pi1_mul_temp[27:0];



  assign pi1in = {pi1[27], pi1};



  assign p53pi2_cast = {1'b0, ai};
  assign p53pi2_mul_temp = p53pi2_cast * br;
  assign pi2 = p53pi2_mul_temp[27:0];



  assign pi2in = {pi2[27], pi2};



  assign pim = pi1in + pi2in;



  assign m1_re = {{3{pre[28]}}, pre[28:18]};
  assign m1_im = {{3{pim[28]}}, pim[28:18]};



  always @* begin
    c5_coef_re[0] = coef_re[0][0];
    c5_coef_im[0] = coef_im[0][0];
    c5_coef_re[1] = coef_re[1][0];
    c5_coef_im[1] = coef_im[1][0];
    c5_coef_re[2] = coef_re[2][0];
    c5_coef_im[2] = coef_im[2][0];
    c5_coef_re[3] = coef_re[0][1];
    c5_coef_im[3] = coef_im[0][1];
    c5_coef_re[4] = coef_re[1][1];
    c5_coef_im[4] = coef_im[1][1];
    c5_coef_re[5] = coef_re[2][1];
    c5_coef_im[5] = coef_im[2][1];
  end



  assign a22_re = {c5_coef_re[4][10:0], 3'b000};
  assign a22_im = {c5_coef_im[4][10:0], 3'b000};



  assign ar_1 = a22_re;



  assign br_1 = x_value_1_re;



  assign ai_1 = a22_im;



  assign bi_1 = x_value_1_im;



  assign pr1_1 = ar_1 * br_1;



  assign pr1in_1 = {pr1_1[27], pr1_1};



  assign pr2_1 = ai_1 * bi_1;



  assign pr2in_1 = {pr2_1[27], pr2_1};



  assign pre_1 = pr1in_1 - pr2in_1;



  assign pi1_1 = ar_1 * bi_1;



  assign pi1in_1 = {pi1_1[27], pi1_1};



  assign pi2_1 = ai_1 * br_1;



  assign pi2in_1 = {pi2_1[27], pi2_1};



  assign pim_1 = pi1in_1 + pi2in_1;



  assign c_re = pre_1;
  assign c_im = pim_1;



  assign ar_2 = c_re;



  assign ar_3 = x_value_1_re;



  // module
  assign x_conj_1_re = x_value_1_re;
  assign p11x_conj_1_cast = {x_value_1_im[13], x_value_1_im};
  assign p11x_conj_1_cast_1 =  - (p11x_conj_1_cast);
  assign x_conj_1_im = p11x_conj_1_cast_1[13:0];



  assign br_2 = x_conj_1_re;



  assign ai_2 = x_value_1_im;



  assign bi_2 = x_conj_1_im;



  assign pr1_2 = ar_3 * br_2;



  assign pr1in_2 = {pr1_2[27], pr1_2};



  assign pr2_2 = ai_2 * bi_2;



  assign pr2in_2 = {pr2_2[27], pr2_2};



  assign pre_2 = pr1in_2 - pr2in_2;



  assign pi1_2 = ar_3 * bi_2;



  assign pi1in_2 = {pi1_2[27], pi1_2};



  assign pi2_2 = ai_2 * br_2;



  assign pi2in_2 = {pi2_2[27], pi2_2};



  assign pim_2 = pi1in_2 + pi2in_2;



  assign x_module_1_re = pre_2[27:14];
  assign x_module_1_im = pim_2[27:14];



  assign br_3 = x_module_1_re;



  assign ai_3 = c_im;



  assign bi_3 = x_module_1_im;



  assign p77pr1_cast = {1'b0, br_3};
  assign p77pr1_mul_temp = ar_2 * p77pr1_cast;
  assign pr1_3 = p77pr1_mul_temp[42:0];



  assign pr1in_3 = {pr1_3[42], pr1_3};



  assign p78pr2_cast = {1'b0, bi_3};
  assign p78pr2_mul_temp = ai_3 * p78pr2_cast;
  assign pr2_3 = p78pr2_mul_temp[42:0];



  assign pr2in_3 = {pr2_3[42], pr2_3};



  assign pre_3 = pr1in_3 - pr2in_3;



  assign p82pi1_cast = {1'b0, bi_3};
  assign p82pi1_mul_temp = ar_2 * p82pi1_cast;
  assign pi1_3 = p82pi1_mul_temp[42:0];



  assign pi1in_3 = {pi1_3[42], pi1_3};



  assign p83pi2_cast = {1'b0, br_3};
  assign p83pi2_mul_temp = ai_3 * p83pi2_cast;
  assign pi2_3 = p83pi2_mul_temp[42:0];



  assign pi2in_3 = {pi2_3[42], pi2_3};



  assign pim_3 = pi1in_3 + pi2in_3;



  assign m2_re = pre_3[38:25];
  assign m2_im = pim_3[38:25];



  always @* begin
    c7_coef_re[0] = coef_re[0][0];
    c7_coef_im[0] = coef_im[0][0];
    c7_coef_re[1] = coef_re[1][0];
    c7_coef_im[1] = coef_im[1][0];
    c7_coef_re[2] = coef_re[2][0];
    c7_coef_im[2] = coef_im[2][0];
    c7_coef_re[3] = coef_re[0][1];
    c7_coef_im[3] = coef_im[0][1];
    c7_coef_re[4] = coef_re[1][1];
    c7_coef_im[4] = coef_im[1][1];
    c7_coef_re[5] = coef_re[2][1];
    c7_coef_im[5] = coef_im[2][1];
  end



  assign a32_re = {c7_coef_re[5][11:0], 2'b00};
  assign a32_im = {c7_coef_im[5][11:0], 2'b00};



  assign ar_4 = a32_re;



  assign br_4 = x_value_1_re;



  assign ai_4 = a32_im;



  assign bi_4 = x_value_1_im;



  assign p92pr1_cast = {1'b0, ar_4};
  assign p92pr1_mul_temp = p92pr1_cast * br_4;
  assign pr1_4 = p92pr1_mul_temp[27:0];



  assign pr1in_4 = {pr1_4[27], pr1_4};



  assign p93pr2_cast = {1'b0, ai_4};
  assign p93pr2_mul_temp = p93pr2_cast * bi_4;
  assign pr2_4 = p93pr2_mul_temp[27:0];



  assign pr2in_4 = {pr2_4[27], pr2_4};



  assign pre_4 = pr1in_4 - pr2in_4;



  assign p97pi1_cast = {1'b0, ar_4};
  assign p97pi1_mul_temp = p97pi1_cast * bi_4;
  assign pi1_4 = p97pi1_mul_temp[27:0];



  assign pi1in_4 = {pi1_4[27], pi1_4};



  assign p98pi2_cast = {1'b0, ai_4};
  assign p98pi2_mul_temp = p98pi2_cast * br_4;
  assign pi2_4 = p98pi2_mul_temp[27:0];



  assign pi2in_4 = {pi2_4[27], pi2_4};



  assign pim_4 = pi1in_4 + pi2in_4;



  assign c_re_1 = pre_4;
  assign c_im_1 = pim_4;



  assign ar_5 = c_re_1;



  assign ar_6 = x_module_1_re;



  assign br_5 = x_module_1_re;



  assign ai_5 = x_module_1_im;



  assign bi_5 = x_module_1_im;



  assign pr1_5 = ar_6 * br_5;



  assign pr1in_5 = {1'b0, pr1_5};



  assign pr2_5 = ai_5 * bi_5;



  assign pr2in_5 = {1'b0, pr2_5};



  assign pre_5 = pr1in_5 - pr2in_5;



  assign pi1_5 = ar_6 * bi_5;



  assign pi1in_5 = {1'b0, pi1_5};



  assign pi2_5 = ai_5 * br_5;



  assign pi2in_5 = {1'b0, pi2_5};



  assign pim_5 = pi1in_5 + pi2in_5;



  assign y_re_1 = pre_5;
  assign y_im_1 = pim_5;



  assign y_re_2 = y_re_1;
  assign y_im_2 = y_im_1;



  assign br_6 = y_re_2;



  assign ai_6 = c_im_1;



  assign bi_6 = y_im_2;



  assign p123pr1_cast = {1'b0, br_6};
  assign p123pr1_mul_temp = ar_5 * p123pr1_cast;
  assign pr1_6 = p123pr1_mul_temp[57:0];



  assign pr1in_6 = {pr1_6[57], pr1_6};



  assign p124pr2_cast = {1'b0, bi_6};
  assign p124pr2_mul_temp = ai_6 * p124pr2_cast;
  assign pr2_6 = p124pr2_mul_temp[57:0];



  assign pr2in_6 = {pr2_6[57], pr2_6};



  assign pre_6 = pr1in_6 - pr2in_6;



  assign p128pi1_cast = {1'b0, bi_6};
  assign p128pi1_mul_temp = ar_5 * p128pi1_cast;
  assign pi1_6 = p128pi1_mul_temp[57:0];



  assign pi1in_6 = {pi1_6[57], pi1_6};



  assign p129pi2_cast = {1'b0, br_6};
  assign p129pi2_mul_temp = ai_6 * p129pi2_cast;
  assign pi2_6 = p129pi2_mul_temp[57:0];



  assign pi2in_6 = {pi2_6[57], pi2_6};



  assign pim_6 = pi1in_6 + pi2in_6;



  assign m3_re = pre_6[51:38];
  assign m3_im = pim_6[51:38];



  always @* begin
    c2_coef_re[0] = coef_re[0][0];
    c2_coef_im[0] = coef_im[0][0];
    c2_coef_re[1] = coef_re[1][0];
    c2_coef_im[1] = coef_im[1][0];
    c2_coef_re[2] = coef_re[2][0];
    c2_coef_im[2] = coef_im[2][0];
    c2_coef_re[3] = coef_re[0][1];
    c2_coef_im[3] = coef_im[0][1];
    c2_coef_re[4] = coef_re[1][1];
    c2_coef_im[4] = coef_im[1][1];
    c2_coef_re[5] = coef_re[2][1];
    c2_coef_im[5] = coef_im[2][1];
  end



  // HDL code generation from MATLAB function: Naive_fixpt
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  //                                                                          %
  //          Generated by MATLAB 23.2 and Fixed-Point Designer 23.2          %
  //                                                                          %
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // Memory Polynomial Model
  // x_in: Input signal array of length N
  // coefficients: KxM matrix of coefficients
  // M: Memory depth
  // K: Non-linearity order
  // 初始化输出信号数组
  // 声明和初始化延迟寄存器数组
  // persistent ud1 ud2 for memory
  // coefficient value 
  assign a11_re = {c2_coef_re[0][8:0], 5'b00000};
  assign a11_im = {c2_coef_im[0][8:0], 5'b00000};



  assign ar_7 = a11_re;



  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : ud1_reg_process
      if (reset == 1'b1) begin
        ud1_re <= 14'sb00000000000000;
        ud1_im <= 14'sb00000000000000;
      end
      else begin
        if (enb) begin
          ud1_re <= x_in_re;
          ud1_im <= x_in_im;
        end
      end
    end



  assign x_value_2_re = ud1_re;
  assign x_value_2_im = ud1_im;



  assign br_7 = x_value_2_re;



  assign ai_7 = a11_im;



  assign bi_7 = x_value_2_im;



  assign pr1_7 = ar_7 * br_7;



  assign pr1in_7 = {pr1_7[27], pr1_7};



  assign pr2_7 = ai_7 * bi_7;



  assign pr2in_7 = {pr2_7[27], pr2_7};



  assign pre_7 = pr1in_7 - pr2in_7;



  assign pi1_7 = ar_7 * bi_7;



  assign pi1in_7 = {pi1_7[27], pi1_7};



  assign pi2_7 = ai_7 * br_7;



  assign pi2in_7 = {pi2_7[27], pi2_7};



  assign pim_7 = pi1in_7 + pi2in_7;



  assign m4_re = pre_7[26:13];
  assign m4_im = pim_7[26:13];



  always @* begin
    c4_coef_re[0] = coef_re[0][0];
    c4_coef_im[0] = coef_im[0][0];
    c4_coef_re[1] = coef_re[1][0];
    c4_coef_im[1] = coef_im[1][0];
    c4_coef_re[2] = coef_re[2][0];
    c4_coef_im[2] = coef_im[2][0];
    c4_coef_re[3] = coef_re[0][1];
    c4_coef_im[3] = coef_im[0][1];
    c4_coef_re[4] = coef_re[1][1];
    c4_coef_im[4] = coef_im[1][1];
    c4_coef_re[5] = coef_re[2][1];
    c4_coef_im[5] = coef_im[2][1];
  end



  assign a21_re = {c4_coef_re[1][11:0], 2'b00};
  assign a21_im = {c4_coef_im[1][11:0], 2'b00};



  assign ar_8 = a21_re;



  assign br_8 = x_value_2_re;



  assign ai_8 = a21_im;



  assign bi_8 = x_value_2_im;



  assign pr1_8 = ar_8 * br_8;



  assign pr1in_8 = {pr1_8[27], pr1_8};



  assign pr2_8 = ai_8 * bi_8;



  assign pr2in_8 = {pr2_8[27], pr2_8};



  assign pre_8 = pr1in_8 - pr2in_8;



  assign pi1_8 = ar_8 * bi_8;



  assign pi1in_8 = {pi1_8[27], pi1_8};



  assign pi2_8 = ai_8 * br_8;



  assign pi2in_8 = {pi2_8[27], pi2_8};



  assign pim_8 = pi1in_8 + pi2in_8;



  assign c_re_2 = pre_8;
  assign c_im_2 = pim_8;



  assign ar_9 = c_re_2;



  assign ar_10 = x_value_2_re;



  assign x_conj_2_re = x_value_2_re;
  assign p27x_conj_2_cast = {x_value_2_im[13], x_value_2_im};
  assign p27x_conj_2_cast_1 =  - (p27x_conj_2_cast);
  assign x_conj_2_im = p27x_conj_2_cast_1[13:0];



  assign br_9 = x_conj_2_re;



  assign ai_9 = x_value_2_im;



  assign bi_9 = x_conj_2_im;



  assign pr1_9 = ar_10 * br_9;



  assign pr1in_9 = {pr1_9[27], pr1_9};



  assign pr2_9 = ai_9 * bi_9;



  assign pr2in_9 = {pr2_9[27], pr2_9};



  assign pre_9 = pr1in_9 - pr2in_9;



  assign pi1_9 = ar_10 * bi_9;



  assign pi1in_9 = {pi1_9[27], pi1_9};



  assign pi2_9 = ai_9 * br_9;



  assign pi2in_9 = {pi2_9[27], pi2_9};



  assign pim_9 = pi1in_9 + pi2in_9;



  assign x_module_2_re = pre_9[27:14];
  assign x_module_2_im = pim_9[27:14];



  assign br_10 = x_module_2_re;



  assign ai_10 = c_im_2;



  assign bi_10 = x_module_2_im;



  assign p168pr1_cast = {1'b0, br_10};
  assign p168pr1_mul_temp = ar_9 * p168pr1_cast;
  assign pr1_10 = p168pr1_mul_temp[42:0];



  assign pr1in_10 = {pr1_10[42], pr1_10};



  assign p169pr2_cast = {1'b0, bi_10};
  assign p169pr2_mul_temp = ai_10 * p169pr2_cast;
  assign pr2_10 = p169pr2_mul_temp[42:0];



  assign pr2in_10 = {pr2_10[42], pr2_10};



  assign pre_10 = pr1in_10 - pr2in_10;



  assign p173pi1_cast = {1'b0, bi_10};
  assign p173pi1_mul_temp = ar_9 * p173pi1_cast;
  assign pi1_10 = p173pi1_mul_temp[42:0];



  assign pi1in_10 = {pi1_10[42], pi1_10};



  assign p174pi2_cast = {1'b0, br_10};
  assign p174pi2_mul_temp = ai_10 * p174pi2_cast;
  assign pi2_10 = p174pi2_mul_temp[42:0];



  assign pi2in_10 = {pi2_10[42], pi2_10};



  assign pim_10 = pi1in_10 + pi2in_10;



  assign m5_re = pre_10[37:24];
  assign m5_im = pim_10[37:24];



  always @* begin
    c6_coef_re[0] = coef_re[0][0];
    c6_coef_im[0] = coef_im[0][0];
    c6_coef_re[1] = coef_re[1][0];
    c6_coef_im[1] = coef_im[1][0];
    c6_coef_re[2] = coef_re[2][0];
    c6_coef_im[2] = coef_im[2][0];
    c6_coef_re[3] = coef_re[0][1];
    c6_coef_im[3] = coef_im[0][1];
    c6_coef_re[4] = coef_re[1][1];
    c6_coef_im[4] = coef_im[1][1];
    c6_coef_re[5] = coef_re[2][1];
    c6_coef_im[5] = coef_im[2][1];
  end



  assign a31_re = {c6_coef_re[2][12:0], 1'b0};
  assign a31_im = {c6_coef_im[2][12:0], 1'b0};



  assign ar_11 = a31_re;



  assign br_11 = x_value_2_re;



  assign ai_11 = a31_im;



  assign bi_11 = x_value_2_im;



  assign p183pr1_cast = {1'b0, ar_11};
  assign p183pr1_mul_temp = p183pr1_cast * br_11;
  assign pr1_11 = p183pr1_mul_temp[27:0];



  assign pr1in_11 = {pr1_11[27], pr1_11};



  assign p184pr2_cast = {1'b0, ai_11};
  assign p184pr2_mul_temp = p184pr2_cast * bi_11;
  assign pr2_11 = p184pr2_mul_temp[27:0];



  assign pr2in_11 = {pr2_11[27], pr2_11};



  assign pre_11 = pr1in_11 - pr2in_11;



  assign p188pi1_cast = {1'b0, ar_11};
  assign p188pi1_mul_temp = p188pi1_cast * bi_11;
  assign pi1_11 = p188pi1_mul_temp[27:0];



  assign pi1in_11 = {pi1_11[27], pi1_11};



  assign p189pi2_cast = {1'b0, ai_11};
  assign p189pi2_mul_temp = p189pi2_cast * br_11;
  assign pi2_11 = p189pi2_mul_temp[27:0];



  assign pi2in_11 = {pi2_11[27], pi2_11};



  assign pim_11 = pi1in_11 + pi2in_11;



  assign c_re_3 = pre_11;
  assign c_im_3 = pim_11;



  assign ar_12 = c_re_3;



  assign ar_13 = x_module_2_re;



  assign br_12 = x_module_2_re;



  assign ai_12 = x_module_2_im;



  assign bi_12 = x_module_2_im;



  assign pr1_12 = ar_13 * br_12;



  assign pr1in_12 = {1'b0, pr1_12};



  assign pr2_12 = ai_12 * bi_12;



  assign pr2in_12 = {1'b0, pr2_12};



  assign pre_12 = pr1in_12 - pr2in_12;



  assign pi1_12 = ar_13 * bi_12;



  assign pi1in_12 = {1'b0, pi1_12};



  assign pi2_12 = ai_12 * br_12;



  assign pi2in_12 = {1'b0, pi2_12};



  assign pim_12 = pi1in_12 + pi2in_12;



  assign y_re_3 = pre_12;
  assign y_im_3 = pim_12;



  assign y_re_4 = y_re_3;
  assign y_im_4 = y_im_3;



  assign br_13 = y_re_4;



  assign ai_13 = c_im_3;



  assign bi_13 = y_im_4;



  assign p214pr1_cast = {1'b0, br_13};
  assign p214pr1_mul_temp = ar_12 * p214pr1_cast;
  assign pr1_13 = p214pr1_mul_temp[57:0];



  assign pr1in_13 = {pr1_13[57], pr1_13};



  assign p215pr2_cast = {1'b0, bi_13};
  assign p215pr2_mul_temp = ai_13 * p215pr2_cast;
  assign pr2_13 = p215pr2_mul_temp[57:0];



  assign pr2in_13 = {pr2_13[57], pr2_13};



  assign pre_13 = pr1in_13 - pr2in_13;



  assign p219pi1_cast = {1'b0, bi_13};
  assign p219pi1_mul_temp = ar_12 * p219pi1_cast;
  assign pi1_13 = p219pi1_mul_temp[57:0];



  assign pi1in_13 = {pi1_13[57], pi1_13};



  assign p220pi2_cast = {1'b0, br_13};
  assign p220pi2_mul_temp = ai_13 * p220pi2_cast;
  assign pi2_13 = p220pi2_mul_temp[57:0];



  assign pi2in_13 = {pi2_13[57], pi2_13};



  assign pim_13 = pi1in_13 + pi2in_13;



  assign m6_re = pre_13[50:37];
  assign m6_im = pim_13[50:37];



  assign p225y_add_cast = {m1_re[13], m1_re};
  assign p225y_add_cast_1 = {m2_re[13], m2_re};
  assign p225y_add_temp = p225y_add_cast + p225y_add_cast_1;
  assign p225y_add_cast_2 = {p225y_add_temp[14], p225y_add_temp};
  assign p225y_add_cast_3 = {{2{m3_re[13]}}, m3_re};
  assign p225y_add_temp_1 = p225y_add_cast_2 + p225y_add_cast_3;
  assign p225y_add_cast_4 = {p225y_add_temp_1[15], p225y_add_temp_1};
  assign p225y_add_cast_5 = {{3{m4_re[13]}}, m4_re};
  assign p225y_add_temp_2 = p225y_add_cast_4 + p225y_add_cast_5;
  assign p225y_add_cast_6 = {p225y_add_temp_2[16], p225y_add_temp_2};
  assign p225y_add_cast_7 = {{4{m5_re[13]}}, m5_re};
  assign p225y_add_temp_3 = p225y_add_cast_6 + p225y_add_cast_7;
  assign p225y_add_cast_8 = {p225y_add_temp_3[17], p225y_add_temp_3};
  assign p225y_add_cast_9 = {{5{m6_re[13]}}, m6_re};
  assign p225y_add_temp_4 = p225y_add_cast_8 + p225y_add_cast_9;
  assign y_re = {p225y_add_temp_4[12:0], 1'b0};
  assign p225y_add_cast_10 = {m1_im[13], m1_im};
  assign p225y_add_cast_11 = {m2_im[13], m2_im};
  assign p225y_add_temp_5 = p225y_add_cast_10 + p225y_add_cast_11;
  assign p225y_add_cast_12 = {p225y_add_temp_5[14], p225y_add_temp_5};
  assign p225y_add_cast_13 = {{2{m3_im[13]}}, m3_im};
  assign p225y_add_temp_6 = p225y_add_cast_12 + p225y_add_cast_13;
  assign p225y_add_cast_14 = {p225y_add_temp_6[15], p225y_add_temp_6};
  assign p225y_add_cast_15 = {{3{m4_im[13]}}, m4_im};
  assign p225y_add_temp_7 = p225y_add_cast_14 + p225y_add_cast_15;
  assign p225y_add_cast_16 = {p225y_add_temp_7[16], p225y_add_temp_7};
  assign p225y_add_cast_17 = {{4{m5_im[13]}}, m5_im};
  assign p225y_add_temp_8 = p225y_add_cast_16 + p225y_add_cast_17;
  assign p225y_add_cast_18 = {p225y_add_temp_8[17], p225y_add_temp_8};
  assign p225y_add_cast_19 = {{5{m6_im[13]}}, m6_im};
  assign p225y_add_temp_9 = p225y_add_cast_18 + p225y_add_cast_19;
  assign y_im = {p225y_add_temp_9[12:0], 1'b0};



  assign ce_out = clk_enable;

endmodule  // Naive_fixpt

