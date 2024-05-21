// -------------------------------------------------------------
// 
// File Name: D:\B01-Study\MATLAB_Projects\Projects\Horner_memory\codegen\Horner_memory\hdlsrc\Horner_memory_fixpt.v
// Created: 2024-05-21 23:56:17
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
// Module: Horner_memory_fixpt
// Source Path: Horner_memory_fixpt
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Horner_memory_fixpt
          (clk,
           reset,
           clk_enable,
           x_in_re,
           x_in_im,
           ce_out,
           y_re,
           y_im);


  input   clk;
  input   reset;
  input   clk_enable;
  input   signed [13:0] x_in_re;  // sfix14_En14
  input   signed [13:0] x_in_im;  // sfix14_En14
  output  ce_out;
  output  signed [13:0] y_re;  // sfix14_En11
  output  signed [13:0] y_im;  // sfix14_En11


  wire enb;
  wire signed [13:0] br;  // sfix14_En14
  wire signed [13:0] bi;  // sfix14_En14
  reg signed [13:0] in2_re;  // sfix14_En14
  reg signed [13:0] in2_im;  // sfix14_En14
  wire signed [13:0] br_1;  // sfix14_En14
  wire signed [13:0] bi_1;  // sfix14_En14
  wire signed [27:0] pr1;  // sfix28_En18
  wire signed [28:0] pr1in;  // sfix29_En18
  wire signed [27:0] pr2;  // sfix28_En18
  wire signed [28:0] pr2in;  // sfix29_En18
  wire signed [28:0] pre;  // sfix29_En18
  wire signed [27:0] pi1;  // sfix28_En18
  wire signed [28:0] pi1in;  // sfix29_En18
  wire signed [27:0] pi2;  // sfix28_En18
  wire signed [28:0] pi2in;  // sfix29_En18
  wire signed [28:0] pim;  // sfix29_En18
  wire signed [27:0] pr1_1;  // sfix28_En18
  wire signed [28:0] pr1in_1;  // sfix29_En18
  wire signed [27:0] pr2_1;  // sfix28_En18
  wire signed [28:0] pr2in_1;  // sfix29_En18
  wire signed [28:0] pre_1;  // sfix29_En18
  wire signed [27:0] pi1_1;  // sfix28_En18
  wire signed [28:0] pi1in_1;  // sfix29_En18
  wire signed [27:0] pi2_1;  // sfix28_En18
  wire signed [28:0] pi2in_1;  // sfix29_En18
  wire signed [28:0] pim_1;  // sfix29_En18
  wire signed [13:0] y_1_re;  // sfix14_En10
  wire signed [13:0] y_1_im;  // sfix14_En10
  wire signed [29:0] p43y_1_add_cast;  // sfix30_En18
  wire signed [29:0] p43y_1_add_cast_1;  // sfix30_En18
  wire signed [29:0] p43y_1_add_temp;  // sfix30_En18
  wire signed [29:0] p43y_1_add_cast_2;  // sfix30_En18
  wire signed [29:0] p43y_1_add_cast_3;  // sfix30_En18
  wire signed [29:0] p43y_1_add_temp_1;  // sfix30_En18
  wire signed [13:0] a;  // sfix14_En14
  wire signed [27:0] y;  // sfix28_En28
  wire signed [13:0] a_1;  // sfix14_En14
  wire signed [27:0] y_1;  // sfix28_En28
  wire [13:0] module_x;  // ufix14_En14
  wire signed [28:0] p9module_x_add_cast;  // sfix29_En28
  wire signed [28:0] p9module_x_add_cast_1;  // sfix29_En28
  wire signed [28:0] p9module_x_add_temp;  // sfix29_En28
  wire signed [27:0] cr;  // sfix28_En18
  wire signed [14:0] p45cr_cast;  // sfix15_En14
  wire signed [28:0] p45cr_mul_temp;  // sfix29_En18
  wire signed [27:0] ci;  // sfix28_En18
  wire signed [14:0] p47ci_cast;  // sfix15_En14
  wire signed [28:0] p47ci_mul_temp;  // sfix29_En18
  reg [13:0] pa2;  // ufix14_En14
  wire signed [27:0] cr_1;  // sfix28_En18
  wire signed [14:0] p49cr_cast;  // sfix15_En14
  wire signed [28:0] p49cr_mul_temp;  // sfix29_En18
  wire signed [27:0] ci_1;  // sfix28_En18
  wire signed [14:0] p51ci_cast;  // sfix15_En14
  wire signed [28:0] p51ci_mul_temp;  // sfix29_En18
  wire signed [28:0] c_re;  // sfix29_En18
  wire signed [28:0] c_im;  // sfix29_En18
  wire signed [28:0] p52c_add_cast;  // sfix29_En18
  wire signed [28:0] p52c_add_cast_1;  // sfix29_En18
  wire signed [28:0] p52c_add_cast_2;  // sfix29_En18
  wire signed [28:0] p52c_add_cast_3;  // sfix29_En18
  wire signed [28:0] ar;  // sfix29_En18
  wire signed [13:0] br_2;  // sfix14_En14
  wire signed [28:0] ai;  // sfix29_En18
  wire signed [13:0] bi_2;  // sfix14_En14
  wire signed [42:0] pr1_2;  // sfix43_En32
  wire signed [43:0] pr1in_2;  // sfix44_En32
  wire signed [42:0] pr2_2;  // sfix43_En32
  wire signed [43:0] pr2in_2;  // sfix44_En32
  wire signed [43:0] pre_2;  // sfix44_En32
  wire signed [42:0] pi1_2;  // sfix43_En32
  wire signed [43:0] pi1in_2;  // sfix44_En32
  wire signed [42:0] pi2_2;  // sfix43_En32
  wire signed [43:0] pi2in_2;  // sfix44_En32
  wire signed [43:0] pim_2;  // sfix44_En32
  wire signed [13:0] y_2_re;  // sfix14_En8
  wire signed [13:0] y_2_im;  // sfix14_En8
  wire [13:0] tmp;  // ufix14_En14
  wire [27:0] p13tmp_mul_temp;  // ufix28_En28
  wire signed [27:0] cr_2;  // sfix28_En18
  wire signed [14:0] p71cr_cast;  // sfix15_En14
  wire signed [28:0] p71cr_mul_temp;  // sfix29_En18
  wire signed [27:0] ci_2;  // sfix28_En18
  wire signed [14:0] p73ci_cast;  // sfix15_En14
  wire signed [28:0] p73ci_mul_temp;  // sfix29_En18
  reg [13:0] pb2;  // ufix14_En14
  wire signed [27:0] cr_3;  // sfix28_En18
  wire signed [14:0] p75cr_cast;  // sfix15_En14
  wire signed [28:0] p75cr_mul_temp;  // sfix29_En18
  wire signed [27:0] ci_3;  // sfix28_En18
  wire signed [14:0] p77ci_cast;  // sfix15_En14
  wire signed [28:0] p77ci_mul_temp;  // sfix29_En18
  wire signed [28:0] c_re_1;  // sfix29_En18
  wire signed [28:0] c_im_1;  // sfix29_En18
  wire signed [28:0] p78c_add_cast;  // sfix29_En18
  wire signed [28:0] p78c_add_cast_1;  // sfix29_En18
  wire signed [28:0] p78c_add_cast_2;  // sfix29_En18
  wire signed [28:0] p78c_add_cast_3;  // sfix29_En18
  wire signed [28:0] ar_1;  // sfix29_En18
  wire signed [13:0] br_3;  // sfix14_En14
  wire signed [28:0] ai_1;  // sfix29_En18
  wire signed [13:0] bi_3;  // sfix14_En14
  wire signed [42:0] pr1_3;  // sfix43_En32
  wire signed [43:0] pr1in_3;  // sfix44_En32
  wire signed [42:0] pr2_3;  // sfix43_En32
  wire signed [43:0] pr2in_3;  // sfix44_En32
  wire signed [43:0] pre_3;  // sfix44_En32
  wire signed [42:0] pi1_3;  // sfix43_En32
  wire signed [43:0] pi1in_3;  // sfix44_En32
  wire signed [42:0] pi2_3;  // sfix43_En32
  wire signed [43:0] pi2in_3;  // sfix44_En32
  wire signed [43:0] pim_3;  // sfix44_En32
  wire signed [13:0] y_3_re;  // sfix14_En9
  wire signed [13:0] y_3_im;  // sfix14_En9
  wire signed [16:0] p96y_add_cast;  // sfix17_En10
  wire signed [16:0] p96y_add_cast_1;  // sfix17_En10
  wire signed [16:0] p96y_add_temp;  // sfix17_En10
  wire signed [17:0] p96y_add_cast_2;  // sfix18_En10
  wire signed [17:0] p96y_add_cast_3;  // sfix18_En10
  wire signed [17:0] p96y_add_temp_1;  // sfix18_En10
  wire signed [16:0] p96y_add_cast_4;  // sfix17_En10
  wire signed [16:0] p96y_add_cast_5;  // sfix17_En10
  wire signed [16:0] p96y_add_temp_2;  // sfix17_En10
  wire signed [17:0] p96y_add_cast_6;  // sfix18_En10
  wire signed [17:0] p96y_add_cast_7;  // sfix18_En10
  wire signed [17:0] p96y_add_temp_3;  // sfix18_En10


  // memory polynomial
  assign br = x_in_re;



  assign bi = x_in_im;



  assign enb = clk_enable;

  // update inpout reg
  // update persistent; M = 2, no need to use persistent for px2 and in2
  always @(posedge clk or posedge reset)
    begin : in2_reg_process
      if (reset == 1'b1) begin
        in2_re <= 14'sb00000000000000;
        in2_im <= 14'sb00000000000000;
      end
      else begin
        if (enb) begin
          in2_re <= x_in_re;
          in2_im <= x_in_im;
        end
      end
    end



  assign br_1 = in2_re;



  assign bi_1 = in2_im;



  assign pr1 = 14'sb11111110010001 * br;



  assign pr1in = {pr1[27], pr1};



  assign pr2 = 14'sb00000011100001 * bi;



  assign pr2in = {pr2[27], pr2};



  assign pre = pr1in - pr2in;



  assign pi1 = 14'sb11111110010001 * bi;



  assign pi1in = {pi1[27], pi1};



  assign pi2 = 14'sb00000011100001 * br;



  assign pi2in = {pi2[27], pi2};



  assign pim = pi1in + pi2in;



  assign pr1_1 = 14'sb00000000001101 * br_1;



  assign pr1in_1 = {pr1_1[27], pr1_1};



  assign pr2_1 = 14'sb00000000001111 * bi_1;



  assign pr2in_1 = {pr2_1[27], pr2_1};



  assign pre_1 = pr1in_1 - pr2in_1;



  assign pi1_1 = 14'sb00000000001101 * bi_1;



  assign pi1in_1 = {pi1_1[27], pi1_1};



  assign pi2_1 = 14'sb00000000001111 * br_1;



  assign pi2in_1 = {pi2_1[27], pi2_1};



  assign pim_1 = pi1in_1 + pi2in_1;



  assign p43y_1_add_cast = {pre[28], pre};
  assign p43y_1_add_cast_1 = {pre_1[28], pre_1};
  assign p43y_1_add_temp = p43y_1_add_cast + p43y_1_add_cast_1;
  assign y_1_re = p43y_1_add_temp[21:8];
  assign p43y_1_add_cast_2 = {pim[28], pim};
  assign p43y_1_add_cast_3 = {pim_1[28], pim_1};
  assign p43y_1_add_temp_1 = p43y_1_add_cast_2 + p43y_1_add_cast_3;
  assign y_1_im = p43y_1_add_temp_1[21:8];



  // HDL code generation from MATLAB function: Horner_memory_fixpt
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
  // coefficient matrix
  // 声明和初始化延迟寄存器数组
  // persistent mk1 mk2 mk3 for delay
  // module
  assign a = x_in_re;



  assign y = a * a;



  assign a_1 = x_in_im;



  assign y_1 = a_1 * a_1;



  assign p9module_x_add_cast = {y[27], y};
  assign p9module_x_add_cast_1 = {y_1[27], y_1};
  assign p9module_x_add_temp = p9module_x_add_cast + p9module_x_add_cast_1;
  assign module_x = p9module_x_add_temp[27:14];



  assign p45cr_cast = {1'b0, module_x};
  assign p45cr_mul_temp = 14'sb11111101111000 * p45cr_cast;
  assign cr = p45cr_mul_temp[27:0];



  assign p47ci_cast = {1'b0, module_x};
  assign p47ci_mul_temp = 14'sb11100101001111 * p47ci_cast;
  assign ci = p47ci_mul_temp[27:0];



  always @(posedge clk or posedge reset)
    begin : pa2_reg_process
      if (reset == 1'b1) begin
        pa2 <= 14'b00000000000000;
      end
      else begin
        if (enb) begin
          pa2 <= module_x;
        end
      end
    end



  assign p49cr_cast = {1'b0, pa2};
  assign p49cr_mul_temp = 14'sb11111101101000 * p49cr_cast;
  assign cr_1 = p49cr_mul_temp[27:0];



  assign p51ci_cast = {1'b0, pa2};
  assign p51ci_mul_temp = 14'sb11110111111000 * p51ci_cast;
  assign ci_1 = p51ci_mul_temp[27:0];



  assign p52c_add_cast = {cr[27], cr};
  assign p52c_add_cast_1 = {cr_1[27], cr_1};
  assign c_re = p52c_add_cast + p52c_add_cast_1;
  assign p52c_add_cast_2 = {ci[27], ci};
  assign p52c_add_cast_3 = {ci_1[27], ci_1};
  assign c_im = p52c_add_cast_2 + p52c_add_cast_3;



  assign ar = c_re;



  assign br_2 = x_in_re;



  assign ai = c_im;



  assign bi_2 = x_in_im;



  assign pr1_2 = ar * br_2;



  assign pr1in_2 = {pr1_2[42], pr1_2};



  assign pr2_2 = ai * bi_2;



  assign pr2in_2 = {pr2_2[42], pr2_2};



  assign pre_2 = pr1in_2 - pr2in_2;



  assign pi1_2 = ar * bi_2;



  assign pi1in_2 = {pi1_2[42], pi1_2};



  assign pi2_2 = ai * br_2;



  assign pi2in_2 = {pi2_2[42], pi2_2};



  assign pim_2 = pi1in_2 + pi2in_2;



  assign y_2_re = pre_2[37:24];
  assign y_2_im = pim_2[37:24];



  assign p13tmp_mul_temp = module_x * module_x;
  assign tmp = p13tmp_mul_temp[27:14];



  assign p71cr_cast = {1'b0, tmp};
  assign p71cr_mul_temp = 14'sb00010100010001 * p71cr_cast;
  assign cr_2 = p71cr_mul_temp[27:0];



  assign p73ci_cast = {1'b0, tmp};
  assign p73ci_mul_temp = 14'sb01001110000100 * p73ci_cast;
  assign ci_2 = p73ci_mul_temp[27:0];



  always @(posedge clk or posedge reset)
    begin : pb2_reg_process
      if (reset == 1'b1) begin
        pb2 <= 14'b00000000000000;
      end
      else begin
        if (enb) begin
          pb2 <= tmp;
        end
      end
    end



  assign p75cr_cast = {1'b0, pb2};
  assign p75cr_mul_temp = 14'sb00001100110011 * p75cr_cast;
  assign cr_3 = p75cr_mul_temp[27:0];



  assign p77ci_cast = {1'b0, pb2};
  assign p77ci_mul_temp = 14'sb00100010101011 * p77ci_cast;
  assign ci_3 = p77ci_mul_temp[27:0];



  assign p78c_add_cast = {cr_2[27], cr_2};
  assign p78c_add_cast_1 = {cr_3[27], cr_3};
  assign c_re_1 = p78c_add_cast + p78c_add_cast_1;
  assign p78c_add_cast_2 = {ci_2[27], ci_2};
  assign p78c_add_cast_3 = {ci_3[27], ci_3};
  assign c_im_1 = p78c_add_cast_2 + p78c_add_cast_3;



  assign ar_1 = c_re_1;



  assign br_3 = x_in_re;



  assign ai_1 = c_im_1;



  assign bi_3 = x_in_im;



  assign pr1_3 = ar_1 * br_3;



  assign pr1in_3 = {pr1_3[42], pr1_3};



  assign pr2_3 = ai_1 * bi_3;



  assign pr2in_3 = {pr2_3[42], pr2_3};



  assign pre_3 = pr1in_3 - pr2in_3;



  assign pi1_3 = ar_1 * bi_3;



  assign pi1in_3 = {pi1_3[42], pi1_3};



  assign pi2_3 = ai_1 * br_3;



  assign pi2in_3 = {pi2_3[42], pi2_3};



  assign pim_3 = pi1in_3 + pi2in_3;



  assign y_3_re = pre_3[36:23];
  assign y_3_im = pim_3[36:23];



  // output
  assign p96y_add_cast = {{3{y_1_re[13]}}, y_1_re};
  assign p96y_add_cast_1 = {y_2_re[13], {y_2_re, 2'b00}};
  assign p96y_add_temp = p96y_add_cast + p96y_add_cast_1;
  assign p96y_add_cast_2 = {p96y_add_temp[16], p96y_add_temp};
  assign p96y_add_cast_3 = {{3{y_3_re[13]}}, {y_3_re, 1'b0}};
  assign p96y_add_temp_1 = p96y_add_cast_2 + p96y_add_cast_3;
  assign y_re = {p96y_add_temp_1[12:0], 1'b0};
  assign p96y_add_cast_4 = {{3{y_1_im[13]}}, y_1_im};
  assign p96y_add_cast_5 = {y_2_im[13], {y_2_im, 2'b00}};
  assign p96y_add_temp_2 = p96y_add_cast_4 + p96y_add_cast_5;
  assign p96y_add_cast_6 = {p96y_add_temp_2[16], p96y_add_temp_2};
  assign p96y_add_cast_7 = {{3{y_3_im[13]}}, {y_3_im, 1'b0}};
  assign p96y_add_temp_3 = p96y_add_cast_6 + p96y_add_cast_7;
  assign y_im = {p96y_add_temp_3[12:0], 1'b0};



  assign ce_out = clk_enable;

endmodule  // Horner_memory_fixpt

