// -------------------------------------------------------------
// 
// File Name: D:\B01-Study\MATLAB_Projects\Projects\Horner_poly\codegen\pipelined_poly\hdlsrc\pipelined_poly_fixpt.v
// Created: 2024-05-21 16:56:44
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
// Module: pipelined_poly_fixpt
// Source Path: pipelined_poly_fixpt
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module pipelined_poly_fixpt
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
  reg signed [13:0] in4_reg_reg_re [0:3];  // sfix14_En14 [4]
  reg signed [13:0] in4_reg_reg_im [0:3];  // sfix14_En14 [4]
  reg signed [13:0] in4_reg_reg_next_re [0:3];  // sfix14_En14 [4]
  reg signed [13:0] in4_reg_reg_next_im [0:3];  // sfix14_En14 [4]
  reg signed [13:0] in4_re;  // sfix14_En14
  reg signed [13:0] in4_im;  // sfix14_En14
  wire signed [13:0] ar;  // sfix14_En14
  wire signed [13:0] a;  // sfix14_En14
  wire signed [27:0] y;  // sfix28_En28
  wire signed [13:0] a_1;  // sfix14_En14
  wire signed [27:0] y_1;  // sfix28_En28
  wire [13:0] tmp;  // ufix14_En14
  wire signed [28:0] p14tmp_add_cast;  // sfix29_En28
  wire signed [28:0] p14tmp_add_cast_1;  // sfix29_En28
  wire signed [28:0] p14tmp_add_temp;  // sfix29_En28
  wire signed [27:0] cr;  // sfix28_En18
  wire signed [14:0] p17cr_cast;  // sfix15_En14
  wire signed [28:0] p17cr_mul_temp;  // sfix29_En18
  wire signed [27:0] ci;  // sfix28_En18
  wire signed [14:0] p19ci_cast;  // sfix15_En14
  wire signed [28:0] p19ci_mul_temp;  // sfix29_En18
  wire [13:0] reg1_re;  // ufix14_En7
  wire [13:0] reg1_im;  // ufix14_En7
  wire signed [13:0] reg2_re;  // sfix14_En6
  wire signed [13:0] reg2_im;  // sfix14_En6
  wire signed [18:0] p21reg2_add_cast;  // sfix19_En7
  wire signed [18:0] p21reg2_add_temp;  // sfix19_En7
  wire signed [18:0] p21reg2_add_cast_1;  // sfix19_En7
  wire signed [18:0] p21reg2_add_temp_1;  // sfix19_En7
  wire signed [13:0] ar_1;  // sfix14_En6
  reg [13:0] mo1;  // ufix14_En14
  reg [13:0] mo2;  // ufix14_En14
  wire signed [27:0] cr_1;  // sfix28_En20
  wire signed [14:0] p25cr_cast;  // sfix15_En14
  wire signed [28:0] p25cr_mul_temp;  // sfix29_En20
  wire signed [13:0] ai;  // sfix14_En6
  wire signed [27:0] ci_1;  // sfix28_En20
  wire signed [14:0] p27ci_cast;  // sfix15_En14
  wire signed [28:0] p27ci_mul_temp;  // sfix29_En20
  wire signed [13:0] reg3_re;  // sfix14_En9
  wire signed [13:0] reg3_im;  // sfix14_En9
  wire signed [13:0] reg4_re;  // sfix14_En9
  wire signed [13:0] reg4_im;  // sfix14_En9
  wire signed [13:0] br;  // sfix14_En9
  wire signed [13:0] ai_1;  // sfix14_En14
  wire signed [13:0] bi;  // sfix14_En9
  wire signed [27:0] pr1;  // sfix28_En23
  wire signed [28:0] pr1in;  // sfix29_En23
  wire signed [27:0] pr2;  // sfix28_En23
  wire signed [28:0] pr2in;  // sfix29_En23
  wire signed [28:0] pre;  // sfix29_En23
  wire signed [27:0] pi1;  // sfix28_En23
  wire signed [28:0] pi1in;  // sfix29_En23
  wire signed [27:0] pi2;  // sfix28_En23
  wire signed [28:0] pi2in;  // sfix29_En23
  wire signed [28:0] pim;  // sfix29_En23
  wire signed [13:0] reg5_re;  // sfix14_En11
  wire signed [13:0] reg5_im;  // sfix14_En11
  reg signed [13:0] in5_re;  // sfix14_En14
  reg signed [13:0] in5_im;  // sfix14_En14
  wire signed [13:0] ar_2;  // sfix14_En14
  wire signed [27:0] cr_2;  // sfix28_En18
  wire signed [14:0] p48cr_cast;  // sfix15_En14
  wire signed [28:0] p48cr_mul_temp;  // sfix29_En18
  wire signed [27:0] ci_2;  // sfix28_En18
  wire signed [14:0] p50ci_cast;  // sfix15_En14
  wire signed [28:0] p50ci_mul_temp;  // sfix29_En18
  wire [13:0] reg6_re;  // ufix14_En8
  wire [13:0] reg6_im;  // ufix14_En8
  wire signed [13:0] reg7_re;  // sfix14_En7
  wire signed [13:0] reg7_im;  // sfix14_En7
  wire signed [19:0] p52reg7_add_cast;  // sfix20_En8
  wire signed [19:0] p52reg7_add_temp;  // sfix20_En8
  wire signed [19:0] p52reg7_add_cast_1;  // sfix20_En8
  wire signed [19:0] p52reg7_add_temp_1;  // sfix20_En8
  wire signed [13:0] ar_3;  // sfix14_En7
  reg [13:0] mo3;  // ufix14_En14
  wire signed [27:0] cr_3;  // sfix28_En21
  wire signed [14:0] p56cr_cast;  // sfix15_En14
  wire signed [28:0] p56cr_mul_temp;  // sfix29_En21
  wire signed [13:0] ai_2;  // sfix14_En7
  wire signed [27:0] ci_3;  // sfix28_En21
  wire signed [14:0] p58ci_cast;  // sfix15_En14
  wire signed [28:0] p58ci_mul_temp;  // sfix29_En21
  wire signed [13:0] reg8_re;  // sfix14_En11
  wire signed [13:0] reg8_im;  // sfix14_En11
  wire signed [13:0] reg9_re;  // sfix14_En12
  wire signed [13:0] reg9_im;  // sfix14_En12
  wire signed [21:0] p60reg9_add_cast;  // sfix22_En11
  wire signed [21:0] p60reg9_add_temp;  // sfix22_En11
  wire signed [21:0] p60reg9_add_cast_1;  // sfix22_En11
  wire signed [21:0] p60reg9_add_temp_1;  // sfix22_En11
  wire signed [13:0] br_1;  // sfix14_En12
  wire signed [13:0] ai_3;  // sfix14_En14
  wire signed [13:0] bi_1;  // sfix14_En12
  wire signed [27:0] pr1_1;  // sfix28_En26
  wire signed [28:0] pr1in_1;  // sfix29_En26
  wire signed [27:0] pr2_1;  // sfix28_En26
  wire signed [28:0] pr2in_1;  // sfix29_En26
  wire signed [28:0] pre_1;  // sfix29_En26
  wire signed [27:0] pi1_1;  // sfix28_En26
  wire signed [28:0] pi1in_1;  // sfix29_En26
  wire signed [27:0] pi2_1;  // sfix28_En26
  wire signed [28:0] pi2in_1;  // sfix29_En26
  wire signed [28:0] pim_1;  // sfix29_En26
  wire signed [13:0] reg10_re;  // sfix14_En13
  wire signed [13:0] reg10_im;  // sfix14_En13
  wire signed [16:0] p78y_add_cast;  // sfix17_En13
  wire signed [16:0] p78y_add_cast_1;  // sfix17_En13
  wire signed [16:0] p78y_add_temp;  // sfix17_En13
  wire signed [16:0] p78y_add_cast_2;  // sfix17_En13
  wire signed [16:0] p78y_add_cast_3;  // sfix17_En13
  wire signed [16:0] p78y_add_temp_1;  // sfix17_En13
  reg signed [31:0] in4_reg_t_0_0;  // int32
  reg signed [31:0] in4_reg_t_0_1;  // int32


  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : in4_reg_process
      if (reset == 1'b1) begin
        in4_reg_reg_re[0] <= 14'sb00000000000000;
        in4_reg_reg_im[0] <= 14'sb00000000000000;
        in4_reg_reg_re[1] <= 14'sb00000000000000;
        in4_reg_reg_im[1] <= 14'sb00000000000000;
        in4_reg_reg_re[2] <= 14'sb00000000000000;
        in4_reg_reg_im[2] <= 14'sb00000000000000;
        in4_reg_reg_re[3] <= 14'sb00000000000000;
        in4_reg_reg_im[3] <= 14'sb00000000000000;
      end
      else begin
        if (enb) begin
          for(in4_reg_t_0_1 = 32'sd0; in4_reg_t_0_1 <= 32'sd3; in4_reg_t_0_1 = in4_reg_t_0_1 + 32'sd1) begin
            in4_reg_reg_re[in4_reg_t_0_1] <= in4_reg_reg_next_re[in4_reg_t_0_1];
            in4_reg_reg_im[in4_reg_t_0_1] <= in4_reg_reg_next_im[in4_reg_t_0_1];
          end
        end
      end
    end

  always @* begin
    in4_re = in4_reg_reg_re[3];
    in4_im = in4_reg_reg_im[3];
    in4_reg_reg_next_re[0] = x_in_re;
    in4_reg_reg_next_im[0] = x_in_im;

    for(in4_reg_t_0_0 = 32'sd0; in4_reg_t_0_0 <= 32'sd2; in4_reg_t_0_0 = in4_reg_t_0_0 + 32'sd1) begin
      in4_reg_reg_next_re[in4_reg_t_0_0 + 32'sd1] = in4_reg_reg_re[in4_reg_t_0_0];
      in4_reg_reg_next_im[in4_reg_t_0_0 + 32'sd1] = in4_reg_reg_im[in4_reg_t_0_0];
    end

  end



  assign ar = in4_re;



  // HDL code generation from MATLAB function: pipelined_poly_fixpt
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  //                                                                          %
  //          Generated by MATLAB 23.2 and Fixed-Point Designer 23.2          %
  //                                                                          %
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // 假设 coef 是已经定义好的系数矩阵
  // 更新输入寄存器
  // 使用上一周期的值
  // module (odd only)
  assign a = x_in_re;



  assign y = a * a;



  assign a_1 = x_in_im;



  assign y_1 = a_1 * a_1;



  // update module register
  // calculte y_0
  assign p14tmp_add_cast = {y[27], y};
  assign p14tmp_add_cast_1 = {y_1[27], y_1};
  assign p14tmp_add_temp = p14tmp_add_cast + p14tmp_add_cast_1;
  assign tmp = p14tmp_add_temp[27:14];



  assign p17cr_cast = {1'b0, tmp};
  assign p17cr_mul_temp = 14'sb00010100010001 * p17cr_cast;
  assign cr = p17cr_mul_temp[27:0];



  assign p19ci_cast = {1'b0, tmp};
  assign p19ci_mul_temp = 14'sb01001110000100 * p19ci_cast;
  assign ci = p19ci_mul_temp[27:0];



  assign reg1_re = cr[24:11];
  assign reg1_im = ci[24:11];



  assign p21reg2_add_cast = {5'b0, reg1_re};
  assign p21reg2_add_temp = p21reg2_add_cast + 19'sb1111111101111000000;
  assign reg2_re = p21reg2_add_temp[14:1];
  assign p21reg2_add_cast_1 = {5'b0, reg1_im};
  assign p21reg2_add_temp_1 = p21reg2_add_cast_1 + 19'sb1111100101001111000;
  assign reg2_im = p21reg2_add_temp_1[14:1];



  assign ar_1 = reg2_re;



  // calculate y_1
  always @(posedge clk or posedge reset)
    begin : mo1_reg_process
      if (reset == 1'b1) begin
        mo1 <= 14'b00000000000000;
      end
      else begin
        if (enb) begin
          mo1 <= tmp;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : mo2_reg_process
      if (reset == 1'b1) begin
        mo2 <= 14'b00000000000000;
      end
      else begin
        if (enb) begin
          mo2 <= mo1;
        end
      end
    end



  assign p25cr_cast = {1'b0, mo2};
  assign p25cr_mul_temp = ar_1 * p25cr_cast;
  assign cr_1 = p25cr_mul_temp[27:0];



  assign ai = reg2_im;



  assign p27ci_cast = {1'b0, mo2};
  assign p27ci_mul_temp = ai * p27ci_cast;
  assign ci_1 = p27ci_mul_temp[27:0];



  assign reg3_re = cr_1[24:11];
  assign reg3_im = ci_1[24:11];



  assign reg4_re = reg3_re + 14'sb11001000100000;
  assign reg4_im = reg3_im + 14'sb01110000100000;



  assign br = reg4_re;



  assign ai_1 = in4_im;



  assign bi = reg4_im;



  assign pr1 = ar * br;



  assign pr1in = {pr1[27], pr1};



  assign pr2 = ai_1 * bi;



  assign pr2in = {pr2[27], pr2};



  assign pre = pr1in - pr2in;



  assign pi1 = ar * bi;



  assign pi1in = {pi1[27], pi1};



  assign pi2 = ai_1 * br;



  assign pi2in = {pi2[27], pi2};



  assign pim = pi1in + pi2in;



  assign reg5_re = pre[25:12];
  assign reg5_im = pim[25:12];



  always @(posedge clk or posedge reset)
    begin : in5_reg_process
      if (reset == 1'b1) begin
        in5_re <= 14'sb00000000000000;
        in5_im <= 14'sb00000000000000;
      end
      else begin
        if (enb) begin
          in5_re <= in4_re;
          in5_im <= in4_im;
        end
      end
    end



  assign ar_2 = in5_re;



  assign p48cr_cast = {1'b0, mo1};
  assign p48cr_mul_temp = 14'sb00001100110011 * p48cr_cast;
  assign cr_2 = p48cr_mul_temp[27:0];



  assign p50ci_cast = {1'b0, mo1};
  assign p50ci_mul_temp = 14'sb00100010101011 * p50ci_cast;
  assign ci_2 = p50ci_mul_temp[27:0];



  assign reg6_re = cr_2[23:10];
  assign reg6_im = ci_2[23:10];



  assign p52reg7_add_cast = {6'b0, reg6_re};
  assign p52reg7_add_temp = p52reg7_add_cast + 20'sb11111111011010000000;
  assign reg7_re = p52reg7_add_temp[14:1];
  assign p52reg7_add_cast_1 = {6'b0, reg6_im};
  assign p52reg7_add_temp_1 = p52reg7_add_cast_1 + 20'sb11111101111110000000;
  assign reg7_im = p52reg7_add_temp_1[14:1];



  assign ar_3 = reg7_re;



  always @(posedge clk or posedge reset)
    begin : mo3_reg_process
      if (reset == 1'b1) begin
        mo3 <= 14'b00000000000000;
      end
      else begin
        if (enb) begin
          mo3 <= mo2;
        end
      end
    end



  assign p56cr_cast = {1'b0, mo3};
  assign p56cr_mul_temp = ar_3 * p56cr_cast;
  assign cr_3 = p56cr_mul_temp[27:0];



  assign ai_2 = reg7_im;



  assign p58ci_cast = {1'b0, mo3};
  assign p58ci_mul_temp = ai_2 * p58ci_cast;
  assign ci_3 = p58ci_mul_temp[27:0];



  assign reg8_re = cr_3[23:10];
  assign reg8_im = ci_3[23:10];



  assign p60reg9_add_cast = {{8{reg8_re[13]}}, reg8_re};
  assign p60reg9_add_temp = p60reg9_add_cast + 22'sb0000000000011010000000;
  assign reg9_re = {p60reg9_add_temp[12:0], 1'b0};
  assign p60reg9_add_cast_1 = {{8{reg8_im[13]}}, reg8_im};
  assign p60reg9_add_temp_1 = p60reg9_add_cast_1 + 22'sb0000000000011110000000;
  assign reg9_im = {p60reg9_add_temp_1[12:0], 1'b0};



  assign br_1 = reg9_re;



  assign ai_3 = in5_im;



  assign bi_1 = reg9_im;



  assign pr1_1 = ar_2 * br_1;



  assign pr1in_1 = {pr1_1[27], pr1_1};



  assign pr2_1 = ai_3 * bi_1;



  assign pr2in_1 = {pr2_1[27], pr2_1};



  assign pre_1 = pr1in_1 - pr2in_1;



  assign pi1_1 = ar_2 * bi_1;



  assign pi1in_1 = {pi1_1[27], pi1_1};



  assign pi2_1 = ai_3 * br_1;



  assign pi2in_1 = {pi2_1[27], pi2_1};



  assign pim_1 = pi1in_1 + pi2in_1;



  assign reg10_re = pre_1[26:13];
  assign reg10_im = pim_1[26:13];



  // calculate y_out
  // y_0 = in5.*(coef(1,1) + mo1.*(coef(2,1) + mo1.*coef(3,1)));
  // y_1 = in6.*(coef(1,2) + mo2.*(coef(2,2) + mo2.*coef(3,2)));
  assign p78y_add_cast = {reg5_re[13], {reg5_re, 2'b00}};
  assign p78y_add_cast_1 = {{3{reg10_re[13]}}, reg10_re};
  assign p78y_add_temp = p78y_add_cast + p78y_add_cast_1;
  assign y_re = p78y_add_temp[15:2];
  assign p78y_add_cast_2 = {reg5_im[13], {reg5_im, 2'b00}};
  assign p78y_add_cast_3 = {{3{reg10_im[13]}}, reg10_im};
  assign p78y_add_temp_1 = p78y_add_cast_2 + p78y_add_cast_3;
  assign y_im = p78y_add_temp_1[15:2];



  assign ce_out = clk_enable;

endmodule  // pipelined_poly_fixpt

